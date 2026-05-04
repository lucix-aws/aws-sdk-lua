local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("kendraranking.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("kendraranking.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSKendraRerankingFrontendService"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.0")
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "kendra-ranking", signing_region = cfg.region } }
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

function Client:createRescoreExecutionPlan(input, options)
    return self:invokeOperation(input, {
        name = "CreateRescoreExecutionPlan",
        input_schema = types.CreateRescoreExecutionPlanInput,
        output_schema = types.CreateRescoreExecutionPlanOutput,
        http_method = "POST",
        http_path = "/rescore-execution-plans",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRescoreExecutionPlan(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRescoreExecutionPlan",
        input_schema = types.DeleteRescoreExecutionPlanInput,
        output_schema = types.DeleteRescoreExecutionPlanOutput,
        http_method = "DELETE",
        http_path = "/rescore-execution-plans/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRescoreExecutionPlan(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRescoreExecutionPlan",
        input_schema = types.DescribeRescoreExecutionPlanInput,
        output_schema = types.DescribeRescoreExecutionPlanOutput,
        http_method = "GET",
        http_path = "/rescore-execution-plans/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRescoreExecutionPlans(input, options)
    return self:invokeOperation(input, {
        name = "ListRescoreExecutionPlans",
        input_schema = types.ListRescoreExecutionPlansInput,
        output_schema = types.ListRescoreExecutionPlansOutput,
        http_method = "GET",
        http_path = "/rescore-execution-plans",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rescore(input, options)
    return self:invokeOperation(input, {
        name = "Rescore",
        input_schema = types.RescoreInput,
        output_schema = types.RescoreOutput,
        http_method = "POST",
        http_path = "/rescore-execution-plans/{RescoreExecutionPlanId}/rescore",
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
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRescoreExecutionPlan(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRescoreExecutionPlan",
        input_schema = types.UpdateRescoreExecutionPlanInput,
        output_schema = types.UpdateRescoreExecutionPlanOutput,
        http_method = "PUT",
        http_path = "/rescore-execution-plans/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
