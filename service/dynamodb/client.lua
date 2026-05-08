



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("dynamodb.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("dynamodb.schemas")
local traits = require("smithy.traits")
local types = require("dynamodb.types")
local sdk_defaults = require("aws.sdk_defaults")































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "DynamoDB_20120810"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.0", service_id = c.service_id }) end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "dynamodb", signing_region = c.region } }
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

function C:batchExecuteStatement(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchExecuteStatement, input, options)
end

function C:batchGetItem(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetItem, input, options)
end

function C:batchWriteItem(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchWriteItem, input, options)
end

function C:createBackup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBackup, input, options)
end

function C:createGlobalTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGlobalTable, input, options)
end

function C:createTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTable, input, options)
end

function C:deleteBackup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBackup, input, options)
end

function C:deleteItem(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteItem, input, options)
end

function C:deleteResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcePolicy, input, options)
end

function C:deleteTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTable, input, options)
end

function C:describeBackup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBackup, input, options)
end

function C:describeContinuousBackups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeContinuousBackups, input, options)
end

function C:describeContributorInsights(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeContributorInsights, input, options)
end

function C:describeEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEndpoints, input, options)
end

function C:describeExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeExport, input, options)
end

function C:describeGlobalTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeGlobalTable, input, options)
end

function C:describeGlobalTableSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeGlobalTableSettings, input, options)
end

function C:describeImport(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeImport, input, options)
end

function C:describeKinesisStreamingDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeKinesisStreamingDestination, input, options)
end

function C:describeLimits(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLimits, input, options)
end

function C:describeTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTable, input, options)
end

function C:describeTableReplicaAutoScaling(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTableReplicaAutoScaling, input, options)
end

function C:describeTimeToLive(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTimeToLive, input, options)
end

function C:disableKinesisStreamingDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableKinesisStreamingDestination, input, options)
end

function C:enableKinesisStreamingDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableKinesisStreamingDestination, input, options)
end

function C:executeStatement(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExecuteStatement, input, options)
end

function C:executeTransaction(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExecuteTransaction, input, options)
end

function C:exportTableToPointInTime(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportTableToPointInTime, input, options)
end

function C:getItem(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetItem, input, options)
end

function C:getResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcePolicy, input, options)
end

function C:importTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportTable, input, options)
end

function C:listBackups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBackups, input, options)
end

function C:listContributorInsights(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListContributorInsights, input, options)
end

function C:listExports(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListExports, input, options)
end

function C:listGlobalTables(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGlobalTables, input, options)
end

function C:listImports(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListImports, input, options)
end

function C:listTables(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTables, input, options)
end

function C:listTagsOfResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsOfResource, input, options)
end

function C:putItem(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutItem, input, options)
end

function C:putResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourcePolicy, input, options)
end

function C:query(input, options)
   return self:invokeOperation(schemas.Service, schemas.Query, input, options)
end

function C:restoreTableFromBackup(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreTableFromBackup, input, options)
end

function C:restoreTableToPointInTime(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreTableToPointInTime, input, options)
end

function C:scan(input, options)
   return self:invokeOperation(schemas.Service, schemas.Scan, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:transactGetItems(input, options)
   return self:invokeOperation(schemas.Service, schemas.TransactGetItems, input, options)
end

function C:transactWriteItems(input, options)
   return self:invokeOperation(schemas.Service, schemas.TransactWriteItems, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateContinuousBackups(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateContinuousBackups, input, options)
end

function C:updateContributorInsights(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateContributorInsights, input, options)
end

function C:updateGlobalTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGlobalTable, input, options)
end

function C:updateGlobalTableSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGlobalTableSettings, input, options)
end

function C:updateItem(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateItem, input, options)
end

function C:updateKinesisStreamingDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateKinesisStreamingDestination, input, options)
end

function C:updateTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTable, input, options)
end

function C:updateTableReplicaAutoScaling(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTableReplicaAutoScaling, input, options)
end

function C:updateTimeToLive(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTimeToLive, input, options)
end

return M
