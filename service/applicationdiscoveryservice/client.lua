



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("applicationdiscoveryservice.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("applicationdiscoveryservice.schemas")
local traits = require("smithy.traits")
local types = require("applicationdiscoveryservice.types")
local sdk_defaults = require("aws.sdk_defaults")


































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSPoseidonService_V2015_11_01"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "discovery", signing_region = c.region } }
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

function C:associateConfigurationItemsToApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateConfigurationItemsToApplication, input, options)
end

function C:batchDeleteAgents(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteAgents, input, options)
end

function C:batchDeleteImportData(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteImportData, input, options)
end

function C:createApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApplication, input, options)
end

function C:createTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTags, input, options)
end

function C:deleteApplications(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApplications, input, options)
end

function C:deleteTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTags, input, options)
end

function C:describeAgents(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAgents, input, options)
end

function C:describeBatchDeleteConfigurationTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBatchDeleteConfigurationTask, input, options)
end

function C:describeConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConfigurations, input, options)
end

function C:describeContinuousExports(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeContinuousExports, input, options)
end

function C:describeExportConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeExportConfigurations, input, options)
end

function C:describeExportTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeExportTasks, input, options)
end

function C:describeImportTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeImportTasks, input, options)
end

function C:describeTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTags, input, options)
end

function C:disassociateConfigurationItemsFromApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateConfigurationItemsFromApplication, input, options)
end

function C:exportConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportConfigurations, input, options)
end

function C:getDiscoverySummary(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDiscoverySummary, input, options)
end

function C:listConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConfigurations, input, options)
end

function C:listServerNeighbors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServerNeighbors, input, options)
end

function C:startBatchDeleteConfigurationTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartBatchDeleteConfigurationTask, input, options)
end

function C:startContinuousExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartContinuousExport, input, options)
end

function C:startDataCollectionByAgentIds(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDataCollectionByAgentIds, input, options)
end

function C:startExportTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartExportTask, input, options)
end

function C:startImportTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartImportTask, input, options)
end

function C:stopContinuousExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopContinuousExport, input, options)
end

function C:stopDataCollectionByAgentIds(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopDataCollectionByAgentIds, input, options)
end

function C:updateApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApplication, input, options)
end

return M
