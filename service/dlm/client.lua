local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("dlm.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("dlm.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "dlm_20180112"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "dlm", signing_region = cfg.region } }
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

function Client:createLifecyclePolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateLifecyclePolicy",
        input_schema = schemas.CreateLifecyclePolicyInput,
        output_schema = schemas.CreateLifecyclePolicyOutput,
        http_method = "POST",
        http_path = "/policies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLifecyclePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLifecyclePolicy",
        input_schema = schemas.DeleteLifecyclePolicyInput,
        output_schema = schemas.DeleteLifecyclePolicyOutput,
        http_method = "DELETE",
        http_path = "/policies/{PolicyId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLifecyclePolicies(input, options)
    return self:invokeOperation(input, {
        name = "GetLifecyclePolicies",
        input_schema = schemas.GetLifecyclePoliciesInput,
        output_schema = schemas.GetLifecyclePoliciesOutput,
        http_method = "GET",
        http_path = "/policies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLifecyclePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetLifecyclePolicy",
        input_schema = schemas.GetLifecyclePolicyInput,
        output_schema = schemas.GetLifecyclePolicyOutput,
        http_method = "GET",
        http_path = "/policies/{PolicyId}",
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
        http_path = "/tags/{ResourceArn}",
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
        http_path = "/tags/{ResourceArn}",
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
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLifecyclePolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLifecyclePolicy",
        input_schema = schemas.UpdateLifecyclePolicyInput,
        output_schema = schemas.UpdateLifecyclePolicyOutput,
        http_method = "PATCH",
        http_path = "/policies/{PolicyId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
