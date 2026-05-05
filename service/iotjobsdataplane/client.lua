local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("iotjobsdataplane.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("iotjobsdataplane.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "IotLaserThingJobManagerExternalService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "iot-jobs-data", signing_region = cfg.region } }
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

function Client:describeJobExecution(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJobExecution",
        input_schema = schemas.DescribeJobExecutionInput,
        output_schema = schemas.DescribeJobExecutionOutput,
        http_method = "GET",
        http_path = "/things/{thingName}/jobs/{jobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPendingJobExecutions(input, options)
    return self:invokeOperation(input, {
        name = "GetPendingJobExecutions",
        input_schema = schemas.GetPendingJobExecutionsInput,
        output_schema = schemas.GetPendingJobExecutionsOutput,
        http_method = "GET",
        http_path = "/things/{thingName}/jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startCommandExecution(input, options)
    return self:invokeOperation(input, {
        name = "StartCommandExecution",
        input_schema = schemas.StartCommandExecutionInput,
        output_schema = schemas.StartCommandExecutionOutput,
        http_method = "POST",
        http_path = "/command-executions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startNextPendingJobExecution(input, options)
    return self:invokeOperation(input, {
        name = "StartNextPendingJobExecution",
        input_schema = schemas.StartNextPendingJobExecutionInput,
        output_schema = schemas.StartNextPendingJobExecutionOutput,
        http_method = "PUT",
        http_path = "/things/{thingName}/jobs/$next",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateJobExecution(input, options)
    return self:invokeOperation(input, {
        name = "UpdateJobExecution",
        input_schema = schemas.UpdateJobExecutionInput,
        output_schema = schemas.UpdateJobExecutionOutput,
        http_method = "POST",
        http_path = "/things/{thingName}/jobs/{jobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
