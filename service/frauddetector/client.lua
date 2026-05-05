local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("frauddetector.endpoint_rules")
local schemas = require("frauddetector.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSHawksNestServiceFacade"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    if not cfg.auth_scheme_resolver then
        cfg.auth_scheme_resolver = function(operation)
            local options = {}
            for _, scheme_id in ipairs(operation.effective_auth_schemes) do
                if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "frauddetector", signing_region = cfg.region } }
                else
                    options[#options + 1] = { scheme_id = scheme_id }
                end
            end
            return options
        end
    end
    defaults.resolve_auth_schemes(cfg)
    defaults.resolve_identity_resolvers(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:batchCreateVariable(input, options)
    return self:invokeOperation(input, {
        name = "BatchCreateVariable",
        input_schema = schemas.BatchCreateVariableInput,
        output_schema = schemas.BatchCreateVariableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetVariable(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetVariable",
        input_schema = schemas.BatchGetVariableInput,
        output_schema = schemas.BatchGetVariableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelBatchImportJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelBatchImportJob",
        input_schema = schemas.CancelBatchImportJobInput,
        output_schema = schemas.CancelBatchImportJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelBatchPredictionJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelBatchPredictionJob",
        input_schema = schemas.CancelBatchPredictionJobInput,
        output_schema = schemas.CancelBatchPredictionJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBatchImportJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateBatchImportJob",
        input_schema = schemas.CreateBatchImportJobInput,
        output_schema = schemas.CreateBatchImportJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBatchPredictionJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateBatchPredictionJob",
        input_schema = schemas.CreateBatchPredictionJobInput,
        output_schema = schemas.CreateBatchPredictionJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDetectorVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateDetectorVersion",
        input_schema = schemas.CreateDetectorVersionInput,
        output_schema = schemas.CreateDetectorVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createList(input, options)
    return self:invokeOperation(input, {
        name = "CreateList",
        input_schema = schemas.CreateListInput,
        output_schema = schemas.CreateListOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createModel(input, options)
    return self:invokeOperation(input, {
        name = "CreateModel",
        input_schema = schemas.CreateModelInput,
        output_schema = schemas.CreateModelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createModelVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateModelVersion",
        input_schema = schemas.CreateModelVersionInput,
        output_schema = schemas.CreateModelVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateRule",
        input_schema = schemas.CreateRuleInput,
        output_schema = schemas.CreateRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVariable(input, options)
    return self:invokeOperation(input, {
        name = "CreateVariable",
        input_schema = schemas.CreateVariableInput,
        output_schema = schemas.CreateVariableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBatchImportJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBatchImportJob",
        input_schema = schemas.DeleteBatchImportJobInput,
        output_schema = schemas.DeleteBatchImportJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBatchPredictionJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBatchPredictionJob",
        input_schema = schemas.DeleteBatchPredictionJobInput,
        output_schema = schemas.DeleteBatchPredictionJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDetector(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDetector",
        input_schema = schemas.DeleteDetectorInput,
        output_schema = schemas.DeleteDetectorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDetectorVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDetectorVersion",
        input_schema = schemas.DeleteDetectorVersionInput,
        output_schema = schemas.DeleteDetectorVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEntityType(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEntityType",
        input_schema = schemas.DeleteEntityTypeInput,
        output_schema = schemas.DeleteEntityTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEvent(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEvent",
        input_schema = schemas.DeleteEventInput,
        output_schema = schemas.DeleteEventOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEventsByEventType(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventsByEventType",
        input_schema = schemas.DeleteEventsByEventTypeInput,
        output_schema = schemas.DeleteEventsByEventTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEventType(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventType",
        input_schema = schemas.DeleteEventTypeInput,
        output_schema = schemas.DeleteEventTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteExternalModel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteExternalModel",
        input_schema = schemas.DeleteExternalModelInput,
        output_schema = schemas.DeleteExternalModelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLabel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLabel",
        input_schema = schemas.DeleteLabelInput,
        output_schema = schemas.DeleteLabelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteList(input, options)
    return self:invokeOperation(input, {
        name = "DeleteList",
        input_schema = schemas.DeleteListInput,
        output_schema = schemas.DeleteListOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteModel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteModel",
        input_schema = schemas.DeleteModelInput,
        output_schema = schemas.DeleteModelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteModelVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteModelVersion",
        input_schema = schemas.DeleteModelVersionInput,
        output_schema = schemas.DeleteModelVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteOutcome(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOutcome",
        input_schema = schemas.DeleteOutcomeInput,
        output_schema = schemas.DeleteOutcomeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRule",
        input_schema = schemas.DeleteRuleInput,
        output_schema = schemas.DeleteRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVariable(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVariable",
        input_schema = schemas.DeleteVariableInput,
        output_schema = schemas.DeleteVariableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDetector(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDetector",
        input_schema = schemas.DescribeDetectorInput,
        output_schema = schemas.DescribeDetectorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeModelVersions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeModelVersions",
        input_schema = schemas.DescribeModelVersionsInput,
        output_schema = schemas.DescribeModelVersionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBatchImportJobs(input, options)
    return self:invokeOperation(input, {
        name = "GetBatchImportJobs",
        input_schema = schemas.GetBatchImportJobsInput,
        output_schema = schemas.GetBatchImportJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBatchPredictionJobs(input, options)
    return self:invokeOperation(input, {
        name = "GetBatchPredictionJobs",
        input_schema = schemas.GetBatchPredictionJobsInput,
        output_schema = schemas.GetBatchPredictionJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDeleteEventsByEventTypeStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetDeleteEventsByEventTypeStatus",
        input_schema = schemas.GetDeleteEventsByEventTypeStatusInput,
        output_schema = schemas.GetDeleteEventsByEventTypeStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDetectors(input, options)
    return self:invokeOperation(input, {
        name = "GetDetectors",
        input_schema = schemas.GetDetectorsInput,
        output_schema = schemas.GetDetectorsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDetectorVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetDetectorVersion",
        input_schema = schemas.GetDetectorVersionInput,
        output_schema = schemas.GetDetectorVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEntityTypes(input, options)
    return self:invokeOperation(input, {
        name = "GetEntityTypes",
        input_schema = schemas.GetEntityTypesInput,
        output_schema = schemas.GetEntityTypesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEvent(input, options)
    return self:invokeOperation(input, {
        name = "GetEvent",
        input_schema = schemas.GetEventInput,
        output_schema = schemas.GetEventOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEventPrediction(input, options)
    return self:invokeOperation(input, {
        name = "GetEventPrediction",
        input_schema = schemas.GetEventPredictionInput,
        output_schema = schemas.GetEventPredictionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEventPredictionMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetEventPredictionMetadata",
        input_schema = schemas.GetEventPredictionMetadataInput,
        output_schema = schemas.GetEventPredictionMetadataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEventTypes(input, options)
    return self:invokeOperation(input, {
        name = "GetEventTypes",
        input_schema = schemas.GetEventTypesInput,
        output_schema = schemas.GetEventTypesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getExternalModels(input, options)
    return self:invokeOperation(input, {
        name = "GetExternalModels",
        input_schema = schemas.GetExternalModelsInput,
        output_schema = schemas.GetExternalModelsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getKMSEncryptionKey(input, options)
    return self:invokeOperation(input, {
        name = "GetKMSEncryptionKey",
        input_schema = schemas.GetKMSEncryptionKeyInput,
        output_schema = schemas.GetKMSEncryptionKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLabels(input, options)
    return self:invokeOperation(input, {
        name = "GetLabels",
        input_schema = schemas.GetLabelsInput,
        output_schema = schemas.GetLabelsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getListElements(input, options)
    return self:invokeOperation(input, {
        name = "GetListElements",
        input_schema = schemas.GetListElementsInput,
        output_schema = schemas.GetListElementsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getListsMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetListsMetadata",
        input_schema = schemas.GetListsMetadataInput,
        output_schema = schemas.GetListsMetadataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getModels(input, options)
    return self:invokeOperation(input, {
        name = "GetModels",
        input_schema = schemas.GetModelsInput,
        output_schema = schemas.GetModelsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getModelVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetModelVersion",
        input_schema = schemas.GetModelVersionInput,
        output_schema = schemas.GetModelVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOutcomes(input, options)
    return self:invokeOperation(input, {
        name = "GetOutcomes",
        input_schema = schemas.GetOutcomesInput,
        output_schema = schemas.GetOutcomesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRules(input, options)
    return self:invokeOperation(input, {
        name = "GetRules",
        input_schema = schemas.GetRulesInput,
        output_schema = schemas.GetRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVariables(input, options)
    return self:invokeOperation(input, {
        name = "GetVariables",
        input_schema = schemas.GetVariablesInput,
        output_schema = schemas.GetVariablesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEventPredictions(input, options)
    return self:invokeOperation(input, {
        name = "ListEventPredictions",
        input_schema = schemas.ListEventPredictionsInput,
        output_schema = schemas.ListEventPredictionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putDetector(input, options)
    return self:invokeOperation(input, {
        name = "PutDetector",
        input_schema = schemas.PutDetectorInput,
        output_schema = schemas.PutDetectorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putEntityType(input, options)
    return self:invokeOperation(input, {
        name = "PutEntityType",
        input_schema = schemas.PutEntityTypeInput,
        output_schema = schemas.PutEntityTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putEventType(input, options)
    return self:invokeOperation(input, {
        name = "PutEventType",
        input_schema = schemas.PutEventTypeInput,
        output_schema = schemas.PutEventTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putExternalModel(input, options)
    return self:invokeOperation(input, {
        name = "PutExternalModel",
        input_schema = schemas.PutExternalModelInput,
        output_schema = schemas.PutExternalModelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putKMSEncryptionKey(input, options)
    return self:invokeOperation(input, {
        name = "PutKMSEncryptionKey",
        input_schema = schemas.PutKMSEncryptionKeyInput,
        output_schema = schemas.PutKMSEncryptionKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putLabel(input, options)
    return self:invokeOperation(input, {
        name = "PutLabel",
        input_schema = schemas.PutLabelInput,
        output_schema = schemas.PutLabelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putOutcome(input, options)
    return self:invokeOperation(input, {
        name = "PutOutcome",
        input_schema = schemas.PutOutcomeInput,
        output_schema = schemas.PutOutcomeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendEvent(input, options)
    return self:invokeOperation(input, {
        name = "SendEvent",
        input_schema = schemas.SendEventInput,
        output_schema = schemas.SendEventOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDetectorVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDetectorVersion",
        input_schema = schemas.UpdateDetectorVersionInput,
        output_schema = schemas.UpdateDetectorVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDetectorVersionMetadata(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDetectorVersionMetadata",
        input_schema = schemas.UpdateDetectorVersionMetadataInput,
        output_schema = schemas.UpdateDetectorVersionMetadataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDetectorVersionStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDetectorVersionStatus",
        input_schema = schemas.UpdateDetectorVersionStatusInput,
        output_schema = schemas.UpdateDetectorVersionStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEventLabel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEventLabel",
        input_schema = schemas.UpdateEventLabelInput,
        output_schema = schemas.UpdateEventLabelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateList(input, options)
    return self:invokeOperation(input, {
        name = "UpdateList",
        input_schema = schemas.UpdateListInput,
        output_schema = schemas.UpdateListOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateModel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateModel",
        input_schema = schemas.UpdateModelInput,
        output_schema = schemas.UpdateModelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateModelVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdateModelVersion",
        input_schema = schemas.UpdateModelVersionInput,
        output_schema = schemas.UpdateModelVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateModelVersionStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateModelVersionStatus",
        input_schema = schemas.UpdateModelVersionStatusInput,
        output_schema = schemas.UpdateModelVersionStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRuleMetadata(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRuleMetadata",
        input_schema = schemas.UpdateRuleMetadataInput,
        output_schema = schemas.UpdateRuleMetadataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRuleVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRuleVersion",
        input_schema = schemas.UpdateRuleVersionInput,
        output_schema = schemas.UpdateRuleVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateVariable(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVariable",
        input_schema = schemas.UpdateVariableInput,
        output_schema = schemas.UpdateVariableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
