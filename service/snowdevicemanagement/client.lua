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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "snow-device-management", signing_region = cfg.region } }
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

function Client:cancelTask(input, options)
    return self:invokeOperation(input, {
        name = "CancelTask",
        input_schema = types.CancelTaskInput,
        output_schema = types.CancelTaskOutput,
        http_method = "POST",
        http_path = "/task/{taskId}/cancel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTask(input, options)
    return self:invokeOperation(input, {
        name = "CreateTask",
        input_schema = types.CreateTaskInput,
        output_schema = types.CreateTaskOutput,
        http_method = "POST",
        http_path = "/task",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDevice(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDevice",
        input_schema = types.DescribeDeviceInput,
        output_schema = types.DescribeDeviceOutput,
        http_method = "POST",
        http_path = "/managed-device/{managedDeviceId}/describe",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDeviceEc2Instances(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDeviceEc2Instances",
        input_schema = types.DescribeDeviceEc2InstancesInput,
        output_schema = types.DescribeDeviceEc2InstancesOutput,
        http_method = "POST",
        http_path = "/managed-device/{managedDeviceId}/resources/ec2/describe",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeExecution(input, options)
    return self:invokeOperation(input, {
        name = "DescribeExecution",
        input_schema = types.DescribeExecutionInput,
        output_schema = types.DescribeExecutionOutput,
        http_method = "POST",
        http_path = "/task/{taskId}/execution/{managedDeviceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTask(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTask",
        input_schema = types.DescribeTaskInput,
        output_schema = types.DescribeTaskOutput,
        http_method = "POST",
        http_path = "/task/{taskId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDeviceResources(input, options)
    return self:invokeOperation(input, {
        name = "ListDeviceResources",
        input_schema = types.ListDeviceResourcesInput,
        output_schema = types.ListDeviceResourcesOutput,
        http_method = "GET",
        http_path = "/managed-device/{managedDeviceId}/resources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDevices(input, options)
    return self:invokeOperation(input, {
        name = "ListDevices",
        input_schema = types.ListDevicesInput,
        output_schema = types.ListDevicesOutput,
        http_method = "GET",
        http_path = "/managed-devices",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListExecutions",
        input_schema = types.ListExecutionsInput,
        output_schema = types.ListExecutionsOutput,
        http_method = "GET",
        http_path = "/executions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListTasks",
        input_schema = types.ListTasksInput,
        output_schema = types.ListTasksOutput,
        http_method = "GET",
        http_path = "/tasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
