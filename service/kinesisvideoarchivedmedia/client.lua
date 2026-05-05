local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("kinesisvideoarchivedmedia.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("kinesisvideoarchivedmedia.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSAcuityReader"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "kinesisvideo", signing_region = cfg.region } }
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

function Client:getClip(input, options)
    return self:invokeOperation(input, {
        name = "GetClip",
        input_schema = schemas.GetClipInput,
        output_schema = schemas.GetClipOutput,
        http_method = "POST",
        http_path = "/getClip",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDASHStreamingSessionURL(input, options)
    return self:invokeOperation(input, {
        name = "GetDASHStreamingSessionURL",
        input_schema = schemas.GetDASHStreamingSessionURLInput,
        output_schema = schemas.GetDASHStreamingSessionURLOutput,
        http_method = "POST",
        http_path = "/getDASHStreamingSessionURL",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getHLSStreamingSessionURL(input, options)
    return self:invokeOperation(input, {
        name = "GetHLSStreamingSessionURL",
        input_schema = schemas.GetHLSStreamingSessionURLInput,
        output_schema = schemas.GetHLSStreamingSessionURLOutput,
        http_method = "POST",
        http_path = "/getHLSStreamingSessionURL",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getImages(input, options)
    return self:invokeOperation(input, {
        name = "GetImages",
        input_schema = schemas.GetImagesInput,
        output_schema = schemas.GetImagesOutput,
        http_method = "POST",
        http_path = "/getImages",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMediaForFragmentList(input, options)
    return self:invokeOperation(input, {
        name = "GetMediaForFragmentList",
        input_schema = schemas.GetMediaForFragmentListInput,
        output_schema = schemas.GetMediaForFragmentListOutput,
        http_method = "POST",
        http_path = "/getMediaForFragmentList",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFragments(input, options)
    return self:invokeOperation(input, {
        name = "ListFragments",
        input_schema = schemas.ListFragmentsInput,
        output_schema = schemas.ListFragmentsOutput,
        http_method = "POST",
        http_path = "/listFragments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
