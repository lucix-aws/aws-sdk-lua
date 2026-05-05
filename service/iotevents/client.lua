local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("iotevents.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("iotevents.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "IotColumboService"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "iotevents", signing_region = cfg.region } }
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

function Client:createAlarmModel(input, options)
    return self:invokeOperation(input, {
        name = "CreateAlarmModel",
        input_schema = schemas.CreateAlarmModelInput,
        output_schema = schemas.CreateAlarmModelOutput,
        http_method = "POST",
        http_path = "/alarm-models",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDetectorModel(input, options)
    return self:invokeOperation(input, {
        name = "CreateDetectorModel",
        input_schema = schemas.CreateDetectorModelInput,
        output_schema = schemas.CreateDetectorModelOutput,
        http_method = "POST",
        http_path = "/detector-models",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createInput(input, options)
    return self:invokeOperation(input, {
        name = "CreateInput",
        input_schema = schemas.CreateInputInput,
        output_schema = schemas.CreateInputOutput,
        http_method = "POST",
        http_path = "/inputs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAlarmModel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAlarmModel",
        input_schema = schemas.DeleteAlarmModelInput,
        output_schema = schemas.DeleteAlarmModelOutput,
        http_method = "DELETE",
        http_path = "/alarm-models/{alarmModelName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDetectorModel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDetectorModel",
        input_schema = schemas.DeleteDetectorModelInput,
        output_schema = schemas.DeleteDetectorModelOutput,
        http_method = "DELETE",
        http_path = "/detector-models/{detectorModelName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInput(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInput",
        input_schema = schemas.DeleteInputInput,
        output_schema = schemas.DeleteInputOutput,
        http_method = "DELETE",
        http_path = "/inputs/{inputName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAlarmModel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAlarmModel",
        input_schema = schemas.DescribeAlarmModelInput,
        output_schema = schemas.DescribeAlarmModelOutput,
        http_method = "GET",
        http_path = "/alarm-models/{alarmModelName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDetectorModel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDetectorModel",
        input_schema = schemas.DescribeDetectorModelInput,
        output_schema = schemas.DescribeDetectorModelOutput,
        http_method = "GET",
        http_path = "/detector-models/{detectorModelName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDetectorModelAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDetectorModelAnalysis",
        input_schema = schemas.DescribeDetectorModelAnalysisInput,
        output_schema = schemas.DescribeDetectorModelAnalysisOutput,
        http_method = "GET",
        http_path = "/analysis/detector-models/{analysisId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInput(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInput",
        input_schema = schemas.DescribeInputInput,
        output_schema = schemas.DescribeInputOutput,
        http_method = "GET",
        http_path = "/inputs/{inputName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLoggingOptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLoggingOptions",
        input_schema = schemas.DescribeLoggingOptionsInput,
        output_schema = schemas.DescribeLoggingOptionsOutput,
        http_method = "GET",
        http_path = "/logging",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDetectorModelAnalysisResults(input, options)
    return self:invokeOperation(input, {
        name = "GetDetectorModelAnalysisResults",
        input_schema = schemas.GetDetectorModelAnalysisResultsInput,
        output_schema = schemas.GetDetectorModelAnalysisResultsOutput,
        http_method = "GET",
        http_path = "/analysis/detector-models/{analysisId}/results",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAlarmModels(input, options)
    return self:invokeOperation(input, {
        name = "ListAlarmModels",
        input_schema = schemas.ListAlarmModelsInput,
        output_schema = schemas.ListAlarmModelsOutput,
        http_method = "GET",
        http_path = "/alarm-models",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAlarmModelVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListAlarmModelVersions",
        input_schema = schemas.ListAlarmModelVersionsInput,
        output_schema = schemas.ListAlarmModelVersionsOutput,
        http_method = "GET",
        http_path = "/alarm-models/{alarmModelName}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDetectorModels(input, options)
    return self:invokeOperation(input, {
        name = "ListDetectorModels",
        input_schema = schemas.ListDetectorModelsInput,
        output_schema = schemas.ListDetectorModelsOutput,
        http_method = "GET",
        http_path = "/detector-models",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDetectorModelVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListDetectorModelVersions",
        input_schema = schemas.ListDetectorModelVersionsInput,
        output_schema = schemas.ListDetectorModelVersionsOutput,
        http_method = "GET",
        http_path = "/detector-models/{detectorModelName}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInputRoutings(input, options)
    return self:invokeOperation(input, {
        name = "ListInputRoutings",
        input_schema = schemas.ListInputRoutingsInput,
        output_schema = schemas.ListInputRoutingsOutput,
        http_method = "POST",
        http_path = "/input-routings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInputs(input, options)
    return self:invokeOperation(input, {
        name = "ListInputs",
        input_schema = schemas.ListInputsInput,
        output_schema = schemas.ListInputsOutput,
        http_method = "GET",
        http_path = "/inputs",
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
        http_method = "GET",
        http_path = "/tags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putLoggingOptions(input, options)
    return self:invokeOperation(input, {
        name = "PutLoggingOptions",
        input_schema = schemas.PutLoggingOptionsInput,
        output_schema = schemas.PutLoggingOptionsOutput,
        http_method = "PUT",
        http_path = "/logging",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startDetectorModelAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "StartDetectorModelAnalysis",
        input_schema = schemas.StartDetectorModelAnalysisInput,
        output_schema = schemas.StartDetectorModelAnalysisOutput,
        http_method = "POST",
        http_path = "/analysis/detector-models",
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
        http_path = "/tags",
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
        http_method = "DELETE",
        http_path = "/tags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAlarmModel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAlarmModel",
        input_schema = schemas.UpdateAlarmModelInput,
        output_schema = schemas.UpdateAlarmModelOutput,
        http_method = "POST",
        http_path = "/alarm-models/{alarmModelName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDetectorModel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDetectorModel",
        input_schema = schemas.UpdateDetectorModelInput,
        output_schema = schemas.UpdateDetectorModelOutput,
        http_method = "POST",
        http_path = "/detector-models/{detectorModelName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateInput(input, options)
    return self:invokeOperation(input, {
        name = "UpdateInput",
        input_schema = schemas.UpdateInputInput,
        output_schema = schemas.UpdateInputOutput,
        http_method = "PUT",
        http_path = "/inputs/{inputName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
