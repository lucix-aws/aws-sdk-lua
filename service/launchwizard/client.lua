local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("launchwizard.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("launchwizard.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "LaunchWizard"
    cfg.signing_name = "launchwizard"
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

function Client:createDeployment(input, options)
    return self:invokeOperation(input, {
        name = "CreateDeployment",
        input_schema = types.CreateDeploymentInput,
        output_schema = types.CreateDeploymentOutput,
        http_method = "POST",
        http_path = "/createDeployment",
    }, options)
end

function Client:deleteDeployment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDeployment",
        input_schema = types.DeleteDeploymentInput,
        output_schema = types.DeleteDeploymentOutput,
        http_method = "POST",
        http_path = "/deleteDeployment",
    }, options)
end

function Client:getDeployment(input, options)
    return self:invokeOperation(input, {
        name = "GetDeployment",
        input_schema = types.GetDeploymentInput,
        output_schema = types.GetDeploymentOutput,
        http_method = "POST",
        http_path = "/getDeployment",
    }, options)
end

function Client:getDeploymentPatternVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetDeploymentPatternVersion",
        input_schema = types.GetDeploymentPatternVersionInput,
        output_schema = types.GetDeploymentPatternVersionOutput,
        http_method = "POST",
        http_path = "/getDeploymentPatternVersion",
    }, options)
end

function Client:getWorkload(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkload",
        input_schema = types.GetWorkloadInput,
        output_schema = types.GetWorkloadOutput,
        http_method = "POST",
        http_path = "/getWorkload",
    }, options)
end

function Client:getWorkloadDeploymentPattern(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkloadDeploymentPattern",
        input_schema = types.GetWorkloadDeploymentPatternInput,
        output_schema = types.GetWorkloadDeploymentPatternOutput,
        http_method = "POST",
        http_path = "/getWorkloadDeploymentPattern",
    }, options)
end

function Client:listDeploymentEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListDeploymentEvents",
        input_schema = types.ListDeploymentEventsInput,
        output_schema = types.ListDeploymentEventsOutput,
        http_method = "POST",
        http_path = "/listDeploymentEvents",
    }, options)
end

function Client:listDeploymentPatternVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListDeploymentPatternVersions",
        input_schema = types.ListDeploymentPatternVersionsInput,
        output_schema = types.ListDeploymentPatternVersionsOutput,
        http_method = "POST",
        http_path = "/listDeploymentPatternVersions",
    }, options)
end

function Client:listDeployments(input, options)
    return self:invokeOperation(input, {
        name = "ListDeployments",
        input_schema = types.ListDeploymentsInput,
        output_schema = types.ListDeploymentsOutput,
        http_method = "POST",
        http_path = "/listDeployments",
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

function Client:listWorkloadDeploymentPatterns(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkloadDeploymentPatterns",
        input_schema = types.ListWorkloadDeploymentPatternsInput,
        output_schema = types.ListWorkloadDeploymentPatternsOutput,
        http_method = "POST",
        http_path = "/listWorkloadDeploymentPatterns",
    }, options)
end

function Client:listWorkloads(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkloads",
        input_schema = types.ListWorkloadsInput,
        output_schema = types.ListWorkloadsOutput,
        http_method = "POST",
        http_path = "/listWorkloads",
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

function Client:updateDeployment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDeployment",
        input_schema = types.UpdateDeploymentInput,
        output_schema = types.UpdateDeploymentOutput,
        http_method = "POST",
        http_path = "/updateDeployment",
    }, options)
end

return M
