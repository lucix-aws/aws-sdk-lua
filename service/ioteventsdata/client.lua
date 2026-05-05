local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("ioteventsdata.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("ioteventsdata.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "IotColumboDataService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ioteventsdata", signing_region = cfg.region } }
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

function Client:batchAcknowledgeAlarm(input, options)
    return self:invokeOperation(input, {
        name = "BatchAcknowledgeAlarm",
        input_schema = schemas.BatchAcknowledgeAlarmInput,
        output_schema = schemas.BatchAcknowledgeAlarmOutput,
        http_method = "POST",
        http_path = "/alarms/acknowledge",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDeleteDetector(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteDetector",
        input_schema = schemas.BatchDeleteDetectorInput,
        output_schema = schemas.BatchDeleteDetectorOutput,
        http_method = "POST",
        http_path = "/detectors/delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDisableAlarm(input, options)
    return self:invokeOperation(input, {
        name = "BatchDisableAlarm",
        input_schema = schemas.BatchDisableAlarmInput,
        output_schema = schemas.BatchDisableAlarmOutput,
        http_method = "POST",
        http_path = "/alarms/disable",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchEnableAlarm(input, options)
    return self:invokeOperation(input, {
        name = "BatchEnableAlarm",
        input_schema = schemas.BatchEnableAlarmInput,
        output_schema = schemas.BatchEnableAlarmOutput,
        http_method = "POST",
        http_path = "/alarms/enable",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchPutMessage(input, options)
    return self:invokeOperation(input, {
        name = "BatchPutMessage",
        input_schema = schemas.BatchPutMessageInput,
        output_schema = schemas.BatchPutMessageOutput,
        http_method = "POST",
        http_path = "/inputs/messages",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchResetAlarm(input, options)
    return self:invokeOperation(input, {
        name = "BatchResetAlarm",
        input_schema = schemas.BatchResetAlarmInput,
        output_schema = schemas.BatchResetAlarmOutput,
        http_method = "POST",
        http_path = "/alarms/reset",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchSnoozeAlarm(input, options)
    return self:invokeOperation(input, {
        name = "BatchSnoozeAlarm",
        input_schema = schemas.BatchSnoozeAlarmInput,
        output_schema = schemas.BatchSnoozeAlarmOutput,
        http_method = "POST",
        http_path = "/alarms/snooze",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchUpdateDetector(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateDetector",
        input_schema = schemas.BatchUpdateDetectorInput,
        output_schema = schemas.BatchUpdateDetectorOutput,
        http_method = "POST",
        http_path = "/detectors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAlarm(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAlarm",
        input_schema = schemas.DescribeAlarmInput,
        output_schema = schemas.DescribeAlarmOutput,
        http_method = "GET",
        http_path = "/alarms/{alarmModelName}/keyValues",
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
        http_method = "GET",
        http_path = "/detectors/{detectorModelName}/keyValues",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAlarms(input, options)
    return self:invokeOperation(input, {
        name = "ListAlarms",
        input_schema = schemas.ListAlarmsInput,
        output_schema = schemas.ListAlarmsOutput,
        http_method = "GET",
        http_path = "/alarms/{alarmModelName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDetectors(input, options)
    return self:invokeOperation(input, {
        name = "ListDetectors",
        input_schema = schemas.ListDetectorsInput,
        output_schema = schemas.ListDetectorsOutput,
        http_method = "GET",
        http_path = "/detectors/{detectorModelName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
