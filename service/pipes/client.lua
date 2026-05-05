local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("pipes.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("pipes.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Pipes"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "pipes", signing_region = cfg.region } }
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

function Client:createPipe(input, options)
    return self:invokeOperation(input, {
        name = "CreatePipe",
        input_schema = schemas.CreatePipeInput,
        output_schema = schemas.CreatePipeOutput,
        http_method = "POST",
        http_path = "/v1/pipes/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePipe(input, options)
    return self:invokeOperation(input, {
        name = "DeletePipe",
        input_schema = schemas.DeletePipeInput,
        output_schema = schemas.DeletePipeOutput,
        http_method = "DELETE",
        http_path = "/v1/pipes/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePipe(input, options)
    return self:invokeOperation(input, {
        name = "DescribePipe",
        input_schema = schemas.DescribePipeInput,
        output_schema = schemas.DescribePipeOutput,
        http_method = "GET",
        http_path = "/v1/pipes/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPipes(input, options)
    return self:invokeOperation(input, {
        name = "ListPipes",
        input_schema = schemas.ListPipesInput,
        output_schema = schemas.ListPipesOutput,
        http_method = "GET",
        http_path = "/v1/pipes",
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

function Client:startPipe(input, options)
    return self:invokeOperation(input, {
        name = "StartPipe",
        input_schema = schemas.StartPipeInput,
        output_schema = schemas.StartPipeOutput,
        http_method = "POST",
        http_path = "/v1/pipes/{Name}/start",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopPipe(input, options)
    return self:invokeOperation(input, {
        name = "StopPipe",
        input_schema = schemas.StopPipeInput,
        output_schema = schemas.StopPipeOutput,
        http_method = "POST",
        http_path = "/v1/pipes/{Name}/stop",
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

function Client:updatePipe(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePipe",
        input_schema = schemas.UpdatePipeInput,
        output_schema = schemas.UpdatePipeOutput,
        http_method = "PUT",
        http_path = "/v1/pipes/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
