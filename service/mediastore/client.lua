local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("mediastore.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("mediastore.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "MediaStore_20170901"
    cfg.signing_name = "mediastore_20170901"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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

function Client:createContainer(input, options)
    return self:invokeOperation(input, {
        name = "CreateContainer",
        input_schema = types.CreateContainerInput,
        output_schema = types.CreateContainerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteContainer(input, options)
    return self:invokeOperation(input, {
        name = "DeleteContainer",
        input_schema = types.DeleteContainerInput,
        output_schema = types.DeleteContainerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteContainerPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteContainerPolicy",
        input_schema = types.DeleteContainerPolicyInput,
        output_schema = types.DeleteContainerPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteCorsPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCorsPolicy",
        input_schema = types.DeleteCorsPolicyInput,
        output_schema = types.DeleteCorsPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteLifecyclePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLifecyclePolicy",
        input_schema = types.DeleteLifecyclePolicyInput,
        output_schema = types.DeleteLifecyclePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteMetricPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMetricPolicy",
        input_schema = types.DeleteMetricPolicyInput,
        output_schema = types.DeleteMetricPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeContainer(input, options)
    return self:invokeOperation(input, {
        name = "DescribeContainer",
        input_schema = types.DescribeContainerInput,
        output_schema = types.DescribeContainerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getContainerPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetContainerPolicy",
        input_schema = types.GetContainerPolicyInput,
        output_schema = types.GetContainerPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getCorsPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetCorsPolicy",
        input_schema = types.GetCorsPolicyInput,
        output_schema = types.GetCorsPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getLifecyclePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetLifecyclePolicy",
        input_schema = types.GetLifecyclePolicyInput,
        output_schema = types.GetLifecyclePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getMetricPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetMetricPolicy",
        input_schema = types.GetMetricPolicyInput,
        output_schema = types.GetMetricPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listContainers(input, options)
    return self:invokeOperation(input, {
        name = "ListContainers",
        input_schema = types.ListContainersInput,
        output_schema = types.ListContainersOutput,
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

function Client:putContainerPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutContainerPolicy",
        input_schema = types.PutContainerPolicyInput,
        output_schema = types.PutContainerPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putCorsPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutCorsPolicy",
        input_schema = types.PutCorsPolicyInput,
        output_schema = types.PutCorsPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putLifecyclePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutLifecyclePolicy",
        input_schema = types.PutLifecyclePolicyInput,
        output_schema = types.PutLifecyclePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putMetricPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutMetricPolicy",
        input_schema = types.PutMetricPolicyInput,
        output_schema = types.PutMetricPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startAccessLogging(input, options)
    return self:invokeOperation(input, {
        name = "StartAccessLogging",
        input_schema = types.StartAccessLoggingInput,
        output_schema = types.StartAccessLoggingOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopAccessLogging(input, options)
    return self:invokeOperation(input, {
        name = "StopAccessLogging",
        input_schema = types.StopAccessLoggingInput,
        output_schema = types.StopAccessLoggingOutput,
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

return M
