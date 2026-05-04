local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("snowdevicemanagement.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("snowdevicemanagement.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "SnowDeviceManagement"
    cfg.signing_name = "snow-device-management"
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

function Client:cancelTask(input, options)
    return self:invokeOperation(input, {
        name = "CancelTask",
        input_schema = types.CancelTaskInput,
        output_schema = types.CancelTaskOutput,
        http_method = "POST",
        http_path = "/task/{taskId}/cancel",
    }, options)
end

function Client:createTask(input, options)
    return self:invokeOperation(input, {
        name = "CreateTask",
        input_schema = types.CreateTaskInput,
        output_schema = types.CreateTaskOutput,
        http_method = "POST",
        http_path = "/task",
    }, options)
end

function Client:describeDevice(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDevice",
        input_schema = types.DescribeDeviceInput,
        output_schema = types.DescribeDeviceOutput,
        http_method = "POST",
        http_path = "/managed-device/{managedDeviceId}/describe",
    }, options)
end

function Client:describeDeviceEc2Instances(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDeviceEc2Instances",
        input_schema = types.DescribeDeviceEc2InstancesInput,
        output_schema = types.DescribeDeviceEc2InstancesOutput,
        http_method = "POST",
        http_path = "/managed-device/{managedDeviceId}/resources/ec2/describe",
    }, options)
end

function Client:describeExecution(input, options)
    return self:invokeOperation(input, {
        name = "DescribeExecution",
        input_schema = types.DescribeExecutionInput,
        output_schema = types.DescribeExecutionOutput,
        http_method = "POST",
        http_path = "/task/{taskId}/execution/{managedDeviceId}",
    }, options)
end

function Client:describeTask(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTask",
        input_schema = types.DescribeTaskInput,
        output_schema = types.DescribeTaskOutput,
        http_method = "POST",
        http_path = "/task/{taskId}",
    }, options)
end

function Client:listDeviceResources(input, options)
    return self:invokeOperation(input, {
        name = "ListDeviceResources",
        input_schema = types.ListDeviceResourcesInput,
        output_schema = types.ListDeviceResourcesOutput,
        http_method = "GET",
        http_path = "/managed-device/{managedDeviceId}/resources",
    }, options)
end

function Client:listDevices(input, options)
    return self:invokeOperation(input, {
        name = "ListDevices",
        input_schema = types.ListDevicesInput,
        output_schema = types.ListDevicesOutput,
        http_method = "GET",
        http_path = "/managed-devices",
    }, options)
end

function Client:listExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListExecutions",
        input_schema = types.ListExecutionsInput,
        output_schema = types.ListExecutionsOutput,
        http_method = "GET",
        http_path = "/executions",
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

function Client:listTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListTasks",
        input_schema = types.ListTasksInput,
        output_schema = types.ListTasksOutput,
        http_method = "GET",
        http_path = "/tasks",
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

return M
