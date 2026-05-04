local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("braket.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("braket.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Braket"
    cfg.signing_name = "braket"
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

function Client:cancelJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelJob",
        input_schema = types.CancelJobInput,
        output_schema = types.CancelJobOutput,
        http_method = "PUT",
        http_path = "/job/{jobArn}/cancel",
    }, options)
end

function Client:cancelQuantumTask(input, options)
    return self:invokeOperation(input, {
        name = "CancelQuantumTask",
        input_schema = types.CancelQuantumTaskInput,
        output_schema = types.CancelQuantumTaskOutput,
        http_method = "PUT",
        http_path = "/quantum-task/{quantumTaskArn}/cancel",
    }, options)
end

function Client:createJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateJob",
        input_schema = types.CreateJobInput,
        output_schema = types.CreateJobOutput,
        http_method = "POST",
        http_path = "/job",
    }, options)
end

function Client:createQuantumTask(input, options)
    return self:invokeOperation(input, {
        name = "CreateQuantumTask",
        input_schema = types.CreateQuantumTaskInput,
        output_schema = types.CreateQuantumTaskOutput,
        http_method = "POST",
        http_path = "/quantum-task",
    }, options)
end

function Client:createSpendingLimit(input, options)
    return self:invokeOperation(input, {
        name = "CreateSpendingLimit",
        input_schema = types.CreateSpendingLimitInput,
        output_schema = types.CreateSpendingLimitOutput,
        http_method = "POST",
        http_path = "/spending-limit",
    }, options)
end

function Client:deleteSpendingLimit(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSpendingLimit",
        input_schema = types.DeleteSpendingLimitInput,
        output_schema = types.DeleteSpendingLimitOutput,
        http_method = "DELETE",
        http_path = "/spending-limit/{spendingLimitArn}/delete",
    }, options)
end

function Client:getDevice(input, options)
    return self:invokeOperation(input, {
        name = "GetDevice",
        input_schema = types.GetDeviceInput,
        output_schema = types.GetDeviceOutput,
        http_method = "GET",
        http_path = "/device/{deviceArn}",
    }, options)
end

function Client:getJob(input, options)
    return self:invokeOperation(input, {
        name = "GetJob",
        input_schema = types.GetJobInput,
        output_schema = types.GetJobOutput,
        http_method = "GET",
        http_path = "/job/{jobArn}",
    }, options)
end

function Client:getQuantumTask(input, options)
    return self:invokeOperation(input, {
        name = "GetQuantumTask",
        input_schema = types.GetQuantumTaskInput,
        output_schema = types.GetQuantumTaskOutput,
        http_method = "GET",
        http_path = "/quantum-task/{quantumTaskArn}",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:searchDevices(input, options)
    return self:invokeOperation(input, {
        name = "SearchDevices",
        input_schema = types.SearchDevicesInput,
        output_schema = types.SearchDevicesOutput,
        http_method = "POST",
        http_path = "/devices",
    }, options)
end

function Client:searchJobs(input, options)
    return self:invokeOperation(input, {
        name = "SearchJobs",
        input_schema = types.SearchJobsInput,
        output_schema = types.SearchJobsOutput,
        http_method = "POST",
        http_path = "/jobs",
    }, options)
end

function Client:searchQuantumTasks(input, options)
    return self:invokeOperation(input, {
        name = "SearchQuantumTasks",
        input_schema = types.SearchQuantumTasksInput,
        output_schema = types.SearchQuantumTasksOutput,
        http_method = "POST",
        http_path = "/quantum-tasks",
    }, options)
end

function Client:searchSpendingLimits(input, options)
    return self:invokeOperation(input, {
        name = "SearchSpendingLimits",
        input_schema = types.SearchSpendingLimitsInput,
        output_schema = types.SearchSpendingLimitsOutput,
        http_method = "POST",
        http_path = "/spending-limits",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:updateSpendingLimit(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSpendingLimit",
        input_schema = types.UpdateSpendingLimitInput,
        output_schema = types.UpdateSpendingLimitOutput,
        http_method = "PATCH",
        http_path = "/spending-limit/{spendingLimitArn}/update",
    }, options)
end

return M
