



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("lookoutequipment.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("lookoutequipment.schemas")
local traits = require("smithy.traits")
local types = require("lookoutequipment.types")
local sdk_defaults = require("aws.sdk_defaults")























































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSLookoutEquipmentFrontendService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "lookoutequipment", signing_region = c.region } }
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

function C:createDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataset, input, options)
end

function C:createInferenceScheduler(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInferenceScheduler, input, options)
end

function C:createLabel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLabel, input, options)
end

function C:createLabelGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLabelGroup, input, options)
end

function C:createModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateModel, input, options)
end

function C:createRetrainingScheduler(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRetrainingScheduler, input, options)
end

function C:deleteDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataset, input, options)
end

function C:deleteInferenceScheduler(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInferenceScheduler, input, options)
end

function C:deleteLabel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLabel, input, options)
end

function C:deleteLabelGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLabelGroup, input, options)
end

function C:deleteModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteModel, input, options)
end

function C:deleteResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcePolicy, input, options)
end

function C:deleteRetrainingScheduler(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRetrainingScheduler, input, options)
end

function C:describeDataIngestionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDataIngestionJob, input, options)
end

function C:describeDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDataset, input, options)
end

function C:describeInferenceScheduler(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInferenceScheduler, input, options)
end

function C:describeLabel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLabel, input, options)
end

function C:describeLabelGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLabelGroup, input, options)
end

function C:describeModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeModel, input, options)
end

function C:describeModelVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeModelVersion, input, options)
end

function C:describeResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeResourcePolicy, input, options)
end

function C:describeRetrainingScheduler(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRetrainingScheduler, input, options)
end

function C:importDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportDataset, input, options)
end

function C:importModelVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportModelVersion, input, options)
end

function C:listDataIngestionJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataIngestionJobs, input, options)
end

function C:listDatasets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDatasets, input, options)
end

function C:listInferenceEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInferenceEvents, input, options)
end

function C:listInferenceExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInferenceExecutions, input, options)
end

function C:listInferenceSchedulers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInferenceSchedulers, input, options)
end

function C:listLabelGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLabelGroups, input, options)
end

function C:listLabels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLabels, input, options)
end

function C:listModels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListModels, input, options)
end

function C:listModelVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListModelVersions, input, options)
end

function C:listRetrainingSchedulers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRetrainingSchedulers, input, options)
end

function C:listSensorStatistics(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSensorStatistics, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourcePolicy, input, options)
end

function C:startDataIngestionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDataIngestionJob, input, options)
end

function C:startInferenceScheduler(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartInferenceScheduler, input, options)
end

function C:startRetrainingScheduler(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartRetrainingScheduler, input, options)
end

function C:stopInferenceScheduler(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopInferenceScheduler, input, options)
end

function C:stopRetrainingScheduler(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopRetrainingScheduler, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateActiveModelVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateActiveModelVersion, input, options)
end

function C:updateInferenceScheduler(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateInferenceScheduler, input, options)
end

function C:updateLabelGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLabelGroup, input, options)
end

function C:updateModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateModel, input, options)
end

function C:updateRetrainingScheduler(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRetrainingScheduler, input, options)
end

return M
