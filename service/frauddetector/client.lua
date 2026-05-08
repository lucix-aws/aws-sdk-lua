



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("frauddetector.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("frauddetector.schemas")
local traits = require("smithy.traits")
local types = require("frauddetector.types")
local sdk_defaults = require("aws.sdk_defaults")















































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSHawksNestServiceFacade"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "frauddetector", signing_region = c.region } }
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

function C:batchCreateVariable(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchCreateVariable, input, options)
end

function C:batchGetVariable(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetVariable, input, options)
end

function C:cancelBatchImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelBatchImportJob, input, options)
end

function C:cancelBatchPredictionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelBatchPredictionJob, input, options)
end

function C:createBatchImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBatchImportJob, input, options)
end

function C:createBatchPredictionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBatchPredictionJob, input, options)
end

function C:createDetectorVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDetectorVersion, input, options)
end

function C:createList(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateList, input, options)
end

function C:createModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateModel, input, options)
end

function C:createModelVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateModelVersion, input, options)
end

function C:createRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRule, input, options)
end

function C:createVariable(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVariable, input, options)
end

function C:deleteBatchImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBatchImportJob, input, options)
end

function C:deleteBatchPredictionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBatchPredictionJob, input, options)
end

function C:deleteDetector(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDetector, input, options)
end

function C:deleteDetectorVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDetectorVersion, input, options)
end

function C:deleteEntityType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEntityType, input, options)
end

function C:deleteEvent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEvent, input, options)
end

function C:deleteEventsByEventType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEventsByEventType, input, options)
end

function C:deleteEventType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEventType, input, options)
end

function C:deleteExternalModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteExternalModel, input, options)
end

function C:deleteLabel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLabel, input, options)
end

function C:deleteList(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteList, input, options)
end

function C:deleteModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteModel, input, options)
end

function C:deleteModelVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteModelVersion, input, options)
end

function C:deleteOutcome(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteOutcome, input, options)
end

function C:deleteRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRule, input, options)
end

function C:deleteVariable(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVariable, input, options)
end

function C:describeDetector(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDetector, input, options)
end

function C:describeModelVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeModelVersions, input, options)
end

function C:getBatchImportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBatchImportJobs, input, options)
end

function C:getBatchPredictionJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBatchPredictionJobs, input, options)
end

function C:getDeleteEventsByEventTypeStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeleteEventsByEventTypeStatus, input, options)
end

function C:getDetectors(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDetectors, input, options)
end

function C:getDetectorVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDetectorVersion, input, options)
end

function C:getEntityTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEntityTypes, input, options)
end

function C:getEvent(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEvent, input, options)
end

function C:getEventPrediction(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEventPrediction, input, options)
end

function C:getEventPredictionMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEventPredictionMetadata, input, options)
end

function C:getEventTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEventTypes, input, options)
end

function C:getExternalModels(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetExternalModels, input, options)
end

function C:getKMSEncryptionKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetKMSEncryptionKey, input, options)
end

function C:getLabels(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLabels, input, options)
end

function C:getListElements(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetListElements, input, options)
end

function C:getListsMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetListsMetadata, input, options)
end

function C:getModels(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetModels, input, options)
end

function C:getModelVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetModelVersion, input, options)
end

function C:getOutcomes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOutcomes, input, options)
end

function C:getRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRules, input, options)
end

function C:getVariables(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVariables, input, options)
end

function C:listEventPredictions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEventPredictions, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putDetector(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutDetector, input, options)
end

function C:putEntityType(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutEntityType, input, options)
end

function C:putEventType(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutEventType, input, options)
end

function C:putExternalModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutExternalModel, input, options)
end

function C:putKMSEncryptionKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutKMSEncryptionKey, input, options)
end

function C:putLabel(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutLabel, input, options)
end

function C:putOutcome(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutOutcome, input, options)
end

function C:sendEvent(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendEvent, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateDetectorVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDetectorVersion, input, options)
end

function C:updateDetectorVersionMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDetectorVersionMetadata, input, options)
end

function C:updateDetectorVersionStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDetectorVersionStatus, input, options)
end

function C:updateEventLabel(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEventLabel, input, options)
end

function C:updateList(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateList, input, options)
end

function C:updateModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateModel, input, options)
end

function C:updateModelVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateModelVersion, input, options)
end

function C:updateModelVersionStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateModelVersionStatus, input, options)
end

function C:updateRuleMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRuleMetadata, input, options)
end

function C:updateRuleVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRuleVersion, input, options)
end

function C:updateVariable(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateVariable, input, options)
end

return M
