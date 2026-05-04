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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "launchwizard", signing_region = cfg.region } }
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

function Client:createDeployment(input, options)
    return self:invokeOperation(input, {
        name = "CreateDeployment",
        input_schema = types.CreateDeploymentInput,
        output_schema = types.CreateDeploymentOutput,
        http_method = "POST",
        http_path = "/createDeployment",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDeployment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDeployment",
        input_schema = types.DeleteDeploymentInput,
        output_schema = types.DeleteDeploymentOutput,
        http_method = "POST",
        http_path = "/deleteDeployment",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDeployment(input, options)
    return self:invokeOperation(input, {
        name = "GetDeployment",
        input_schema = types.GetDeploymentInput,
        output_schema = types.GetDeploymentOutput,
        http_method = "POST",
        http_path = "/getDeployment",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDeploymentPatternVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetDeploymentPatternVersion",
        input_schema = types.GetDeploymentPatternVersionInput,
        output_schema = types.GetDeploymentPatternVersionOutput,
        http_method = "POST",
        http_path = "/getDeploymentPatternVersion",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWorkload(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkload",
        input_schema = types.GetWorkloadInput,
        output_schema = types.GetWorkloadOutput,
        http_method = "POST",
        http_path = "/getWorkload",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWorkloadDeploymentPattern(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkloadDeploymentPattern",
        input_schema = types.GetWorkloadDeploymentPatternInput,
        output_schema = types.GetWorkloadDeploymentPatternOutput,
        http_method = "POST",
        http_path = "/getWorkloadDeploymentPattern",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDeploymentEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListDeploymentEvents",
        input_schema = types.ListDeploymentEventsInput,
        output_schema = types.ListDeploymentEventsOutput,
        http_method = "POST",
        http_path = "/listDeploymentEvents",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDeploymentPatternVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListDeploymentPatternVersions",
        input_schema = types.ListDeploymentPatternVersionsInput,
        output_schema = types.ListDeploymentPatternVersionsOutput,
        http_method = "POST",
        http_path = "/listDeploymentPatternVersions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDeployments(input, options)
    return self:invokeOperation(input, {
        name = "ListDeployments",
        input_schema = types.ListDeploymentsInput,
        output_schema = types.ListDeploymentsOutput,
        http_method = "POST",
        http_path = "/listDeployments",
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

function Client:listWorkloadDeploymentPatterns(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkloadDeploymentPatterns",
        input_schema = types.ListWorkloadDeploymentPatternsInput,
        output_schema = types.ListWorkloadDeploymentPatternsOutput,
        http_method = "POST",
        http_path = "/listWorkloadDeploymentPatterns",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkloads(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkloads",
        input_schema = types.ListWorkloadsInput,
        output_schema = types.ListWorkloadsOutput,
        http_method = "POST",
        http_path = "/listWorkloads",
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

function Client:updateDeployment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDeployment",
        input_schema = types.UpdateDeploymentInput,
        output_schema = types.UpdateDeploymentOutput,
        http_method = "POST",
        http_path = "/updateDeployment",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
