local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("dlm.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("dlm.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "dlm_20180112"
    cfg.signing_name = "dlm"
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

function Client:createLifecyclePolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateLifecyclePolicy",
        input_schema = types.CreateLifecyclePolicyInput,
        output_schema = types.CreateLifecyclePolicyOutput,
        http_method = "POST",
        http_path = "/policies",
    }, options)
end

function Client:deleteLifecyclePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLifecyclePolicy",
        input_schema = types.DeleteLifecyclePolicyInput,
        output_schema = types.DeleteLifecyclePolicyOutput,
        http_method = "DELETE",
        http_path = "/policies/{PolicyId}",
    }, options)
end

function Client:getLifecyclePolicies(input, options)
    return self:invokeOperation(input, {
        name = "GetLifecyclePolicies",
        input_schema = types.GetLifecyclePoliciesInput,
        output_schema = types.GetLifecyclePoliciesOutput,
        http_method = "GET",
        http_path = "/policies",
    }, options)
end

function Client:getLifecyclePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetLifecyclePolicy",
        input_schema = types.GetLifecyclePolicyInput,
        output_schema = types.GetLifecyclePolicyOutput,
        http_method = "GET",
        http_path = "/policies/{PolicyId}",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:updateLifecyclePolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLifecyclePolicy",
        input_schema = types.UpdateLifecyclePolicyInput,
        output_schema = types.UpdateLifecyclePolicyOutput,
        http_method = "PATCH",
        http_path = "/policies/{PolicyId}",
    }, options)
end

return M
