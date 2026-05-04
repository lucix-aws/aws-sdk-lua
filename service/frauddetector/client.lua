local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("frauddetector.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("frauddetector.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSHawksNestServiceFacade"
    cfg.signing_name = "frauddetector"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:batchCreateVariable(input, options)
    return self:invokeOperation(input, {
        name = "BatchCreateVariable",
        input_schema = types.BatchCreateVariableInput,
        output_schema = types.BatchCreateVariableOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchGetVariable(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetVariable",
        input_schema = types.BatchGetVariableInput,
        output_schema = types.BatchGetVariableOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:cancelBatchImportJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelBatchImportJob",
        input_schema = types.CancelBatchImportJobInput,
        output_schema = types.CancelBatchImportJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:cancelBatchPredictionJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelBatchPredictionJob",
        input_schema = types.CancelBatchPredictionJobInput,
        output_schema = types.CancelBatchPredictionJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createBatchImportJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateBatchImportJob",
        input_schema = types.CreateBatchImportJobInput,
        output_schema = types.CreateBatchImportJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createBatchPredictionJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateBatchPredictionJob",
        input_schema = types.CreateBatchPredictionJobInput,
        output_schema = types.CreateBatchPredictionJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDetectorVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateDetectorVersion",
        input_schema = types.CreateDetectorVersionInput,
        output_schema = types.CreateDetectorVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createList(input, options)
    return self:invokeOperation(input, {
        name = "CreateList",
        input_schema = types.CreateListInput,
        output_schema = types.CreateListOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createModel(input, options)
    return self:invokeOperation(input, {
        name = "CreateModel",
        input_schema = types.CreateModelInput,
        output_schema = types.CreateModelOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createModelVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateModelVersion",
        input_schema = types.CreateModelVersionInput,
        output_schema = types.CreateModelVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateRule",
        input_schema = types.CreateRuleInput,
        output_schema = types.CreateRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createVariable(input, options)
    return self:invokeOperation(input, {
        name = "CreateVariable",
        input_schema = types.CreateVariableInput,
        output_schema = types.CreateVariableOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteBatchImportJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBatchImportJob",
        input_schema = types.DeleteBatchImportJobInput,
        output_schema = types.DeleteBatchImportJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteBatchPredictionJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBatchPredictionJob",
        input_schema = types.DeleteBatchPredictionJobInput,
        output_schema = types.DeleteBatchPredictionJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDetector(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDetector",
        input_schema = types.DeleteDetectorInput,
        output_schema = types.DeleteDetectorOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDetectorVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDetectorVersion",
        input_schema = types.DeleteDetectorVersionInput,
        output_schema = types.DeleteDetectorVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteEntityType(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEntityType",
        input_schema = types.DeleteEntityTypeInput,
        output_schema = types.DeleteEntityTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteEvent(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEvent",
        input_schema = types.DeleteEventInput,
        output_schema = types.DeleteEventOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteEventsByEventType(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventsByEventType",
        input_schema = types.DeleteEventsByEventTypeInput,
        output_schema = types.DeleteEventsByEventTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteEventType(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventType",
        input_schema = types.DeleteEventTypeInput,
        output_schema = types.DeleteEventTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteExternalModel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteExternalModel",
        input_schema = types.DeleteExternalModelInput,
        output_schema = types.DeleteExternalModelOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteLabel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLabel",
        input_schema = types.DeleteLabelInput,
        output_schema = types.DeleteLabelOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteList(input, options)
    return self:invokeOperation(input, {
        name = "DeleteList",
        input_schema = types.DeleteListInput,
        output_schema = types.DeleteListOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteModel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteModel",
        input_schema = types.DeleteModelInput,
        output_schema = types.DeleteModelOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteModelVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteModelVersion",
        input_schema = types.DeleteModelVersionInput,
        output_schema = types.DeleteModelVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteOutcome(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOutcome",
        input_schema = types.DeleteOutcomeInput,
        output_schema = types.DeleteOutcomeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRule",
        input_schema = types.DeleteRuleInput,
        output_schema = types.DeleteRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteVariable(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVariable",
        input_schema = types.DeleteVariableInput,
        output_schema = types.DeleteVariableOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDetector(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDetector",
        input_schema = types.DescribeDetectorInput,
        output_schema = types.DescribeDetectorOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeModelVersions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeModelVersions",
        input_schema = types.DescribeModelVersionsInput,
        output_schema = types.DescribeModelVersionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getBatchImportJobs(input, options)
    return self:invokeOperation(input, {
        name = "GetBatchImportJobs",
        input_schema = types.GetBatchImportJobsInput,
        output_schema = types.GetBatchImportJobsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getBatchPredictionJobs(input, options)
    return self:invokeOperation(input, {
        name = "GetBatchPredictionJobs",
        input_schema = types.GetBatchPredictionJobsInput,
        output_schema = types.GetBatchPredictionJobsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDeleteEventsByEventTypeStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetDeleteEventsByEventTypeStatus",
        input_schema = types.GetDeleteEventsByEventTypeStatusInput,
        output_schema = types.GetDeleteEventsByEventTypeStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDetectors(input, options)
    return self:invokeOperation(input, {
        name = "GetDetectors",
        input_schema = types.GetDetectorsInput,
        output_schema = types.GetDetectorsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDetectorVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetDetectorVersion",
        input_schema = types.GetDetectorVersionInput,
        output_schema = types.GetDetectorVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getEntityTypes(input, options)
    return self:invokeOperation(input, {
        name = "GetEntityTypes",
        input_schema = types.GetEntityTypesInput,
        output_schema = types.GetEntityTypesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getEvent(input, options)
    return self:invokeOperation(input, {
        name = "GetEvent",
        input_schema = types.GetEventInput,
        output_schema = types.GetEventOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getEventPrediction(input, options)
    return self:invokeOperation(input, {
        name = "GetEventPrediction",
        input_schema = types.GetEventPredictionInput,
        output_schema = types.GetEventPredictionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getEventPredictionMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetEventPredictionMetadata",
        input_schema = types.GetEventPredictionMetadataInput,
        output_schema = types.GetEventPredictionMetadataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getEventTypes(input, options)
    return self:invokeOperation(input, {
        name = "GetEventTypes",
        input_schema = types.GetEventTypesInput,
        output_schema = types.GetEventTypesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getExternalModels(input, options)
    return self:invokeOperation(input, {
        name = "GetExternalModels",
        input_schema = types.GetExternalModelsInput,
        output_schema = types.GetExternalModelsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getKMSEncryptionKey(input, options)
    return self:invokeOperation(input, {
        name = "GetKMSEncryptionKey",
        input_schema = types.GetKMSEncryptionKeyInput,
        output_schema = types.GetKMSEncryptionKeyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getLabels(input, options)
    return self:invokeOperation(input, {
        name = "GetLabels",
        input_schema = types.GetLabelsInput,
        output_schema = types.GetLabelsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getListElements(input, options)
    return self:invokeOperation(input, {
        name = "GetListElements",
        input_schema = types.GetListElementsInput,
        output_schema = types.GetListElementsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getListsMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetListsMetadata",
        input_schema = types.GetListsMetadataInput,
        output_schema = types.GetListsMetadataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getModels(input, options)
    return self:invokeOperation(input, {
        name = "GetModels",
        input_schema = types.GetModelsInput,
        output_schema = types.GetModelsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getModelVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetModelVersion",
        input_schema = types.GetModelVersionInput,
        output_schema = types.GetModelVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getOutcomes(input, options)
    return self:invokeOperation(input, {
        name = "GetOutcomes",
        input_schema = types.GetOutcomesInput,
        output_schema = types.GetOutcomesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getRules(input, options)
    return self:invokeOperation(input, {
        name = "GetRules",
        input_schema = types.GetRulesInput,
        output_schema = types.GetRulesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getVariables(input, options)
    return self:invokeOperation(input, {
        name = "GetVariables",
        input_schema = types.GetVariablesInput,
        output_schema = types.GetVariablesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listEventPredictions(input, options)
    return self:invokeOperation(input, {
        name = "ListEventPredictions",
        input_schema = types.ListEventPredictionsInput,
        output_schema = types.ListEventPredictionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putDetector(input, options)
    return self:invokeOperation(input, {
        name = "PutDetector",
        input_schema = types.PutDetectorInput,
        output_schema = types.PutDetectorOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putEntityType(input, options)
    return self:invokeOperation(input, {
        name = "PutEntityType",
        input_schema = types.PutEntityTypeInput,
        output_schema = types.PutEntityTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putEventType(input, options)
    return self:invokeOperation(input, {
        name = "PutEventType",
        input_schema = types.PutEventTypeInput,
        output_schema = types.PutEventTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putExternalModel(input, options)
    return self:invokeOperation(input, {
        name = "PutExternalModel",
        input_schema = types.PutExternalModelInput,
        output_schema = types.PutExternalModelOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putKMSEncryptionKey(input, options)
    return self:invokeOperation(input, {
        name = "PutKMSEncryptionKey",
        input_schema = types.PutKMSEncryptionKeyInput,
        output_schema = types.PutKMSEncryptionKeyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putLabel(input, options)
    return self:invokeOperation(input, {
        name = "PutLabel",
        input_schema = types.PutLabelInput,
        output_schema = types.PutLabelOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putOutcome(input, options)
    return self:invokeOperation(input, {
        name = "PutOutcome",
        input_schema = types.PutOutcomeInput,
        output_schema = types.PutOutcomeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:sendEvent(input, options)
    return self:invokeOperation(input, {
        name = "SendEvent",
        input_schema = types.SendEventInput,
        output_schema = types.SendEventOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateDetectorVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDetectorVersion",
        input_schema = types.UpdateDetectorVersionInput,
        output_schema = types.UpdateDetectorVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateDetectorVersionMetadata(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDetectorVersionMetadata",
        input_schema = types.UpdateDetectorVersionMetadataInput,
        output_schema = types.UpdateDetectorVersionMetadataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateDetectorVersionStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDetectorVersionStatus",
        input_schema = types.UpdateDetectorVersionStatusInput,
        output_schema = types.UpdateDetectorVersionStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateEventLabel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEventLabel",
        input_schema = types.UpdateEventLabelInput,
        output_schema = types.UpdateEventLabelOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateList(input, options)
    return self:invokeOperation(input, {
        name = "UpdateList",
        input_schema = types.UpdateListInput,
        output_schema = types.UpdateListOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateModel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateModel",
        input_schema = types.UpdateModelInput,
        output_schema = types.UpdateModelOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateModelVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdateModelVersion",
        input_schema = types.UpdateModelVersionInput,
        output_schema = types.UpdateModelVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateModelVersionStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateModelVersionStatus",
        input_schema = types.UpdateModelVersionStatusInput,
        output_schema = types.UpdateModelVersionStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateRuleMetadata(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRuleMetadata",
        input_schema = types.UpdateRuleMetadataInput,
        output_schema = types.UpdateRuleMetadataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateRuleVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRuleVersion",
        input_schema = types.UpdateRuleVersionInput,
        output_schema = types.UpdateRuleVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateVariable(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVariable",
        input_schema = types.UpdateVariableInput,
        output_schema = types.UpdateVariableOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
