local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("launchwizard.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("launchwizard.schemas")
local sdk_defaults = require("aws.sdk_defaults")

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
        input_schema = schemas.CreateDeploymentInput,
        output_schema = schemas.CreateDeploymentOutput,
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
        input_schema = schemas.DeleteDeploymentInput,
        output_schema = schemas.DeleteDeploymentOutput,
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
        input_schema = schemas.GetDeploymentInput,
        output_schema = schemas.GetDeploymentOutput,
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
        input_schema = schemas.GetDeploymentPatternVersionInput,
        output_schema = schemas.GetDeploymentPatternVersionOutput,
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
        input_schema = schemas.GetWorkloadInput,
        output_schema = schemas.GetWorkloadOutput,
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
        input_schema = schemas.GetWorkloadDeploymentPatternInput,
        output_schema = schemas.GetWorkloadDeploymentPatternOutput,
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
        input_schema = schemas.ListDeploymentEventsInput,
        output_schema = schemas.ListDeploymentEventsOutput,
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
        input_schema = schemas.ListDeploymentPatternVersionsInput,
        output_schema = schemas.ListDeploymentPatternVersionsOutput,
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
        input_schema = schemas.ListDeploymentsInput,
        output_schema = schemas.ListDeploymentsOutput,
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
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
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
        input_schema = schemas.ListWorkloadDeploymentPatternsInput,
        output_schema = schemas.ListWorkloadDeploymentPatternsOutput,
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
        input_schema = schemas.ListWorkloadsInput,
        output_schema = schemas.ListWorkloadsOutput,
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
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
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
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
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
        input_schema = schemas.UpdateDeploymentInput,
        output_schema = schemas.UpdateDeploymentOutput,
        http_method = "POST",
        http_path = "/updateDeployment",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
