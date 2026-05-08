



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("iotsitewise.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("iotsitewise.schemas")
local traits = require("smithy.traits")
local types = require("iotsitewise.types")
local sdk_defaults = require("aws.sdk_defaults")














































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSIoTSiteWise"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "iotsitewise", signing_region = c.region } }
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

function C:associateAssets(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateAssets, input, options)
end

function C:associateTimeSeriesToAssetProperty(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateTimeSeriesToAssetProperty, input, options)
end

function C:batchAssociateProjectAssets(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchAssociateProjectAssets, input, options)
end

function C:batchDisassociateProjectAssets(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDisassociateProjectAssets, input, options)
end

function C:batchGetAssetPropertyAggregates(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetAssetPropertyAggregates, input, options)
end

function C:batchGetAssetPropertyValue(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetAssetPropertyValue, input, options)
end

function C:batchGetAssetPropertyValueHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetAssetPropertyValueHistory, input, options)
end

function C:batchPutAssetPropertyValue(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchPutAssetPropertyValue, input, options)
end

function C:createAccessPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAccessPolicy, input, options)
end

function C:createAsset(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAsset, input, options)
end

function C:createAssetModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAssetModel, input, options)
end

function C:createAssetModelCompositeModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAssetModelCompositeModel, input, options)
end

function C:createBulkImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBulkImportJob, input, options)
end

function C:createComputationModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateComputationModel, input, options)
end

function C:createDashboard(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDashboard, input, options)
end

function C:createDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataset, input, options)
end

function C:createGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGateway, input, options)
end

function C:createPortal(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePortal, input, options)
end

function C:createProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProject, input, options)
end

function C:deleteAccessPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccessPolicy, input, options)
end

function C:deleteAsset(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAsset, input, options)
end

function C:deleteAssetModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAssetModel, input, options)
end

function C:deleteAssetModelCompositeModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAssetModelCompositeModel, input, options)
end

function C:deleteAssetModelInterfaceRelationship(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAssetModelInterfaceRelationship, input, options)
end

function C:deleteComputationModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteComputationModel, input, options)
end

function C:deleteDashboard(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDashboard, input, options)
end

function C:deleteDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataset, input, options)
end

function C:deleteGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGateway, input, options)
end

function C:deletePortal(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePortal, input, options)
end

function C:deleteProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProject, input, options)
end

function C:deleteTimeSeries(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTimeSeries, input, options)
end

function C:describeAccessPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccessPolicy, input, options)
end

function C:describeAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAction, input, options)
end

function C:describeAsset(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAsset, input, options)
end

function C:describeAssetCompositeModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAssetCompositeModel, input, options)
end

function C:describeAssetModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAssetModel, input, options)
end

function C:describeAssetModelCompositeModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAssetModelCompositeModel, input, options)
end

function C:describeAssetModelInterfaceRelationship(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAssetModelInterfaceRelationship, input, options)
end

function C:describeAssetProperty(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAssetProperty, input, options)
end

function C:describeBulkImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBulkImportJob, input, options)
end

function C:describeComputationModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeComputationModel, input, options)
end

function C:describeComputationModelExecutionSummary(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeComputationModelExecutionSummary, input, options)
end

function C:describeDashboard(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDashboard, input, options)
end

function C:describeDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDataset, input, options)
end

function C:describeDefaultEncryptionConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDefaultEncryptionConfiguration, input, options)
end

function C:describeExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeExecution, input, options)
end

function C:describeGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeGateway, input, options)
end

function C:describeGatewayCapabilityConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeGatewayCapabilityConfiguration, input, options)
end

function C:describeLoggingOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLoggingOptions, input, options)
end

function C:describePortal(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePortal, input, options)
end

function C:describeProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeProject, input, options)
end

function C:describeStorageConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStorageConfiguration, input, options)
end

function C:describeTimeSeries(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTimeSeries, input, options)
end

function C:disassociateAssets(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateAssets, input, options)
end

function C:disassociateTimeSeriesFromAssetProperty(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateTimeSeriesFromAssetProperty, input, options)
end

function C:executeAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExecuteAction, input, options)
end

function C:executeQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExecuteQuery, input, options)
end

function C:getAssetPropertyAggregates(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAssetPropertyAggregates, input, options)
end

function C:getAssetPropertyValue(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAssetPropertyValue, input, options)
end

function C:getAssetPropertyValueHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAssetPropertyValueHistory, input, options)
end

function C:getInterpolatedAssetPropertyValues(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInterpolatedAssetPropertyValues, input, options)
end

function C:invokeAssistant(input, options)
   return self:invokeOperation(schemas.Service, schemas.InvokeAssistant, input, options)
end

function C:listAccessPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccessPolicies, input, options)
end

function C:listActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListActions, input, options)
end

function C:listAssetModelCompositeModels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssetModelCompositeModels, input, options)
end

function C:listAssetModelProperties(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssetModelProperties, input, options)
end

function C:listAssetModels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssetModels, input, options)
end

function C:listAssetProperties(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssetProperties, input, options)
end

function C:listAssetRelationships(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssetRelationships, input, options)
end

function C:listAssets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssets, input, options)
end

function C:listAssociatedAssets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssociatedAssets, input, options)
end

function C:listBulkImportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBulkImportJobs, input, options)
end

function C:listCompositionRelationships(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCompositionRelationships, input, options)
end

function C:listComputationModelDataBindingUsages(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListComputationModelDataBindingUsages, input, options)
end

function C:listComputationModelResolveToResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListComputationModelResolveToResources, input, options)
end

function C:listComputationModels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListComputationModels, input, options)
end

function C:listDashboards(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDashboards, input, options)
end

function C:listDatasets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDatasets, input, options)
end

function C:listExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListExecutions, input, options)
end

function C:listGateways(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGateways, input, options)
end

function C:listInterfaceRelationships(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInterfaceRelationships, input, options)
end

function C:listPortals(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPortals, input, options)
end

function C:listProjectAssets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProjectAssets, input, options)
end

function C:listProjects(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProjects, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTimeSeries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTimeSeries, input, options)
end

function C:putAssetModelInterfaceRelationship(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAssetModelInterfaceRelationship, input, options)
end

function C:putDefaultEncryptionConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutDefaultEncryptionConfiguration, input, options)
end

function C:putLoggingOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutLoggingOptions, input, options)
end

function C:putStorageConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutStorageConfiguration, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAccessPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAccessPolicy, input, options)
end

function C:updateAsset(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAsset, input, options)
end

function C:updateAssetModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAssetModel, input, options)
end

function C:updateAssetModelCompositeModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAssetModelCompositeModel, input, options)
end

function C:updateAssetProperty(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAssetProperty, input, options)
end

function C:updateComputationModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateComputationModel, input, options)
end

function C:updateDashboard(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDashboard, input, options)
end

function C:updateDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataset, input, options)
end

function C:updateGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGateway, input, options)
end

function C:updateGatewayCapabilityConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGatewayCapabilityConfiguration, input, options)
end

function C:updatePortal(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePortal, input, options)
end

function C:updateProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProject, input, options)
end

return M
