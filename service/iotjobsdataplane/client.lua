local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("iotjobsdataplane.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("iotjobsdataplane.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "IotLaserThingJobManagerExternalService"
    cfg.signing_name = "iotlaserthingjobmanagerexternalservice"
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

function Client:describeJobExecution(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJobExecution",
        input_schema = types.DescribeJobExecutionInput,
        output_schema = types.DescribeJobExecutionOutput,
        http_method = "GET",
        http_path = "/things/{thingName}/jobs/{jobId}",
    }, options)
end

function Client:getPendingJobExecutions(input, options)
    return self:invokeOperation(input, {
        name = "GetPendingJobExecutions",
        input_schema = types.GetPendingJobExecutionsInput,
        output_schema = types.GetPendingJobExecutionsOutput,
        http_method = "GET",
        http_path = "/things/{thingName}/jobs",
    }, options)
end

function Client:startCommandExecution(input, options)
    return self:invokeOperation(input, {
        name = "StartCommandExecution",
        input_schema = types.StartCommandExecutionInput,
        output_schema = types.StartCommandExecutionOutput,
        http_method = "POST",
        http_path = "/command-executions",
    }, options)
end

function Client:startNextPendingJobExecution(input, options)
    return self:invokeOperation(input, {
        name = "StartNextPendingJobExecution",
        input_schema = types.StartNextPendingJobExecutionInput,
        output_schema = types.StartNextPendingJobExecutionOutput,
        http_method = "PUT",
        http_path = "/things/{thingName}/jobs/$next",
    }, options)
end

function Client:updateJobExecution(input, options)
    return self:invokeOperation(input, {
        name = "UpdateJobExecution",
        input_schema = types.UpdateJobExecutionInput,
        output_schema = types.UpdateJobExecutionOutput,
        http_method = "POST",
        http_path = "/things/{thingName}/jobs/{jobId}",
    }, options)
end

return M
