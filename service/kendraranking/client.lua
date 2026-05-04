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
    cfg.signing_name = "kendra-ranking"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
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

function Client:createRescoreExecutionPlan(input, options)
    return self:invokeOperation(input, {
        name = "CreateRescoreExecutionPlan",
        input_schema = types.CreateRescoreExecutionPlanInput,
        output_schema = types.CreateRescoreExecutionPlanOutput,
        http_method = "POST",
        http_path = "/rescore-execution-plans",
    }, options)
end

function Client:deleteRescoreExecutionPlan(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRescoreExecutionPlan",
        input_schema = types.DeleteRescoreExecutionPlanInput,
        output_schema = types.DeleteRescoreExecutionPlanOutput,
        http_method = "DELETE",
        http_path = "/rescore-execution-plans/{Id}",
    }, options)
end

function Client:describeRescoreExecutionPlan(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRescoreExecutionPlan",
        input_schema = types.DescribeRescoreExecutionPlanInput,
        output_schema = types.DescribeRescoreExecutionPlanOutput,
        http_method = "GET",
        http_path = "/rescore-execution-plans/{Id}",
    }, options)
end

function Client:listRescoreExecutionPlans(input, options)
    return self:invokeOperation(input, {
        name = "ListRescoreExecutionPlans",
        input_schema = types.ListRescoreExecutionPlansInput,
        output_schema = types.ListRescoreExecutionPlansOutput,
        http_method = "GET",
        http_path = "/rescore-execution-plans",
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

function Client:rescore(input, options)
    return self:invokeOperation(input, {
        name = "Rescore",
        input_schema = types.RescoreInput,
        output_schema = types.RescoreOutput,
        http_method = "POST",
        http_path = "/rescore-execution-plans/{RescoreExecutionPlanId}/rescore",
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

function Client:updateRescoreExecutionPlan(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRescoreExecutionPlan",
        input_schema = types.UpdateRescoreExecutionPlanInput,
        output_schema = types.UpdateRescoreExecutionPlanOutput,
        http_method = "PUT",
        http_path = "/rescore-execution-plans/{Id}",
    }, options)
end

return M
