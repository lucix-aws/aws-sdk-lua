



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("lakeformation.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("lakeformation.schemas")
local traits = require("smithy.traits")
local types = require("lakeformation.types")
local sdk_defaults = require("aws.sdk_defaults")



































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSLakeFormation"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "lakeformation", signing_region = c.region } }
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

function C:addLFTagsToResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddLFTagsToResource, input, options)
end

function C:assumeDecoratedRoleWithSAML(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssumeDecoratedRoleWithSAML, input, options)
end

function C:batchGrantPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGrantPermissions, input, options)
end

function C:batchRevokePermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchRevokePermissions, input, options)
end

function C:cancelTransaction(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelTransaction, input, options)
end

function C:commitTransaction(input, options)
   return self:invokeOperation(schemas.Service, schemas.CommitTransaction, input, options)
end

function C:createDataCellsFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataCellsFilter, input, options)
end

function C:createLakeFormationIdentityCenterConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLakeFormationIdentityCenterConfiguration, input, options)
end

function C:createLakeFormationOptIn(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLakeFormationOptIn, input, options)
end

function C:createLFTag(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLFTag, input, options)
end

function C:createLFTagExpression(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLFTagExpression, input, options)
end

function C:deleteDataCellsFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataCellsFilter, input, options)
end

function C:deleteLakeFormationIdentityCenterConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLakeFormationIdentityCenterConfiguration, input, options)
end

function C:deleteLakeFormationOptIn(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLakeFormationOptIn, input, options)
end

function C:deleteLFTag(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLFTag, input, options)
end

function C:deleteLFTagExpression(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLFTagExpression, input, options)
end

function C:deleteObjectsOnCancel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteObjectsOnCancel, input, options)
end

function C:deregisterResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterResource, input, options)
end

function C:describeLakeFormationIdentityCenterConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLakeFormationIdentityCenterConfiguration, input, options)
end

function C:describeResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeResource, input, options)
end

function C:describeTransaction(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTransaction, input, options)
end

function C:extendTransaction(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExtendTransaction, input, options)
end

function C:getDataCellsFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataCellsFilter, input, options)
end

function C:getDataLakePrincipal(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataLakePrincipal, input, options)
end

function C:getDataLakeSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataLakeSettings, input, options)
end

function C:getEffectivePermissionsForPath(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEffectivePermissionsForPath, input, options)
end

function C:getLFTag(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLFTag, input, options)
end

function C:getLFTagExpression(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLFTagExpression, input, options)
end

function C:getQueryState(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetQueryState, input, options)
end

function C:getQueryStatistics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetQueryStatistics, input, options)
end

function C:getResourceLFTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourceLFTags, input, options)
end

function C:getTableObjects(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTableObjects, input, options)
end

function C:getTemporaryDataLocationCredentials(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTemporaryDataLocationCredentials, input, options)
end

function C:getTemporaryGluePartitionCredentials(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTemporaryGluePartitionCredentials, input, options)
end

function C:getTemporaryGlueTableCredentials(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTemporaryGlueTableCredentials, input, options)
end

function C:getWorkUnitResults(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkUnitResults, input, options)
end

function C:getWorkUnits(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkUnits, input, options)
end

function C:grantPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GrantPermissions, input, options)
end

function C:listDataCellsFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataCellsFilter, input, options)
end

function C:listLakeFormationOptIns(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLakeFormationOptIns, input, options)
end

function C:listLFTagExpressions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLFTagExpressions, input, options)
end

function C:listLFTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLFTags, input, options)
end

function C:listPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPermissions, input, options)
end

function C:listResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResources, input, options)
end

function C:listTableStorageOptimizers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTableStorageOptimizers, input, options)
end

function C:listTransactions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTransactions, input, options)
end

function C:putDataLakeSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutDataLakeSettings, input, options)
end

function C:registerResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterResource, input, options)
end

function C:removeLFTagsFromResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveLFTagsFromResource, input, options)
end

function C:revokePermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.RevokePermissions, input, options)
end

function C:searchDatabasesByLFTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchDatabasesByLFTags, input, options)
end

function C:searchTablesByLFTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchTablesByLFTags, input, options)
end

function C:startQueryPlanning(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartQueryPlanning, input, options)
end

function C:startTransaction(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartTransaction, input, options)
end

function C:updateDataCellsFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataCellsFilter, input, options)
end

function C:updateLakeFormationIdentityCenterConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLakeFormationIdentityCenterConfiguration, input, options)
end

function C:updateLFTag(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLFTag, input, options)
end

function C:updateLFTagExpression(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLFTagExpression, input, options)
end

function C:updateResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateResource, input, options)
end

function C:updateTableObjects(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTableObjects, input, options)
end

function C:updateTableStorageOptimizer(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTableStorageOptimizer, input, options)
end

return M
