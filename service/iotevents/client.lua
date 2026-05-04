local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("iotevents.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("iotevents.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "IotColumboService"
    cfg.signing_name = "iotcolumboservice"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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

function Client:createAlarmModel(input, options)
    return self:invokeOperation(input, {
        name = "CreateAlarmModel",
        input_schema = types.CreateAlarmModelInput,
        output_schema = types.CreateAlarmModelOutput,
        http_method = "POST",
        http_path = "/alarm-models",
    }, options)
end

function Client:createDetectorModel(input, options)
    return self:invokeOperation(input, {
        name = "CreateDetectorModel",
        input_schema = types.CreateDetectorModelInput,
        output_schema = types.CreateDetectorModelOutput,
        http_method = "POST",
        http_path = "/detector-models",
    }, options)
end

function Client:createInput(input, options)
    return self:invokeOperation(input, {
        name = "CreateInput",
        input_schema = types.CreateInputInput,
        output_schema = types.CreateInputOutput,
        http_method = "POST",
        http_path = "/inputs",
    }, options)
end

function Client:deleteAlarmModel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAlarmModel",
        input_schema = types.DeleteAlarmModelInput,
        output_schema = types.DeleteAlarmModelOutput,
        http_method = "DELETE",
        http_path = "/alarm-models/{alarmModelName}",
    }, options)
end

function Client:deleteDetectorModel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDetectorModel",
        input_schema = types.DeleteDetectorModelInput,
        output_schema = types.DeleteDetectorModelOutput,
        http_method = "DELETE",
        http_path = "/detector-models/{detectorModelName}",
    }, options)
end

function Client:deleteInput(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInput",
        input_schema = types.DeleteInputInput,
        output_schema = types.DeleteInputOutput,
        http_method = "DELETE",
        http_path = "/inputs/{inputName}",
    }, options)
end

function Client:describeAlarmModel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAlarmModel",
        input_schema = types.DescribeAlarmModelInput,
        output_schema = types.DescribeAlarmModelOutput,
        http_method = "GET",
        http_path = "/alarm-models/{alarmModelName}",
    }, options)
end

function Client:describeDetectorModel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDetectorModel",
        input_schema = types.DescribeDetectorModelInput,
        output_schema = types.DescribeDetectorModelOutput,
        http_method = "GET",
        http_path = "/detector-models/{detectorModelName}",
    }, options)
end

function Client:describeDetectorModelAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDetectorModelAnalysis",
        input_schema = types.DescribeDetectorModelAnalysisInput,
        output_schema = types.DescribeDetectorModelAnalysisOutput,
        http_method = "GET",
        http_path = "/analysis/detector-models/{analysisId}",
    }, options)
end

function Client:describeInput(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInput",
        input_schema = types.DescribeInputInput,
        output_schema = types.DescribeInputOutput,
        http_method = "GET",
        http_path = "/inputs/{inputName}",
    }, options)
end

function Client:describeLoggingOptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLoggingOptions",
        input_schema = types.DescribeLoggingOptionsInput,
        output_schema = types.DescribeLoggingOptionsOutput,
        http_method = "GET",
        http_path = "/logging",
    }, options)
end

function Client:getDetectorModelAnalysisResults(input, options)
    return self:invokeOperation(input, {
        name = "GetDetectorModelAnalysisResults",
        input_schema = types.GetDetectorModelAnalysisResultsInput,
        output_schema = types.GetDetectorModelAnalysisResultsOutput,
        http_method = "GET",
        http_path = "/analysis/detector-models/{analysisId}/results",
    }, options)
end

function Client:listAlarmModels(input, options)
    return self:invokeOperation(input, {
        name = "ListAlarmModels",
        input_schema = types.ListAlarmModelsInput,
        output_schema = types.ListAlarmModelsOutput,
        http_method = "GET",
        http_path = "/alarm-models",
    }, options)
end

function Client:listAlarmModelVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListAlarmModelVersions",
        input_schema = types.ListAlarmModelVersionsInput,
        output_schema = types.ListAlarmModelVersionsOutput,
        http_method = "GET",
        http_path = "/alarm-models/{alarmModelName}/versions",
    }, options)
end

function Client:listDetectorModels(input, options)
    return self:invokeOperation(input, {
        name = "ListDetectorModels",
        input_schema = types.ListDetectorModelsInput,
        output_schema = types.ListDetectorModelsOutput,
        http_method = "GET",
        http_path = "/detector-models",
    }, options)
end

function Client:listDetectorModelVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListDetectorModelVersions",
        input_schema = types.ListDetectorModelVersionsInput,
        output_schema = types.ListDetectorModelVersionsOutput,
        http_method = "GET",
        http_path = "/detector-models/{detectorModelName}/versions",
    }, options)
end

function Client:listInputRoutings(input, options)
    return self:invokeOperation(input, {
        name = "ListInputRoutings",
        input_schema = types.ListInputRoutingsInput,
        output_schema = types.ListInputRoutingsOutput,
        http_method = "POST",
        http_path = "/input-routings",
    }, options)
end

function Client:listInputs(input, options)
    return self:invokeOperation(input, {
        name = "ListInputs",
        input_schema = types.ListInputsInput,
        output_schema = types.ListInputsOutput,
        http_method = "GET",
        http_path = "/inputs",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags",
    }, options)
end

function Client:putLoggingOptions(input, options)
    return self:invokeOperation(input, {
        name = "PutLoggingOptions",
        input_schema = types.PutLoggingOptionsInput,
        output_schema = types.PutLoggingOptionsOutput,
        http_method = "PUT",
        http_path = "/logging",
    }, options)
end

function Client:startDetectorModelAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "StartDetectorModelAnalysis",
        input_schema = types.StartDetectorModelAnalysisInput,
        output_schema = types.StartDetectorModelAnalysisOutput,
        http_method = "POST",
        http_path = "/analysis/detector-models",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags",
    }, options)
end

function Client:updateAlarmModel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAlarmModel",
        input_schema = types.UpdateAlarmModelInput,
        output_schema = types.UpdateAlarmModelOutput,
        http_method = "POST",
        http_path = "/alarm-models/{alarmModelName}",
    }, options)
end

function Client:updateDetectorModel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDetectorModel",
        input_schema = types.UpdateDetectorModelInput,
        output_schema = types.UpdateDetectorModelOutput,
        http_method = "POST",
        http_path = "/detector-models/{detectorModelName}",
    }, options)
end

function Client:updateInput(input, options)
    return self:invokeOperation(input, {
        name = "UpdateInput",
        input_schema = types.UpdateInputInput,
        output_schema = types.UpdateInputOutput,
        http_method = "PUT",
        http_path = "/inputs/{inputName}",
    }, options)
end

return M
