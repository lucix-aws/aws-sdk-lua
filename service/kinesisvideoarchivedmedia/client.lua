local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("kinesisvideoarchivedmedia.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("kinesisvideoarchivedmedia.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSAcuityReader"
    cfg.signing_name = "awsacuityreader"
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

function Client:getClip(input, options)
    return self:invokeOperation(input, {
        name = "GetClip",
        input_schema = types.GetClipInput,
        output_schema = types.GetClipOutput,
        http_method = "POST",
        http_path = "/getClip",
    }, options)
end

function Client:getDASHStreamingSessionURL(input, options)
    return self:invokeOperation(input, {
        name = "GetDASHStreamingSessionURL",
        input_schema = types.GetDASHStreamingSessionURLInput,
        output_schema = types.GetDASHStreamingSessionURLOutput,
        http_method = "POST",
        http_path = "/getDASHStreamingSessionURL",
    }, options)
end

function Client:getHLSStreamingSessionURL(input, options)
    return self:invokeOperation(input, {
        name = "GetHLSStreamingSessionURL",
        input_schema = types.GetHLSStreamingSessionURLInput,
        output_schema = types.GetHLSStreamingSessionURLOutput,
        http_method = "POST",
        http_path = "/getHLSStreamingSessionURL",
    }, options)
end

function Client:getImages(input, options)
    return self:invokeOperation(input, {
        name = "GetImages",
        input_schema = types.GetImagesInput,
        output_schema = types.GetImagesOutput,
        http_method = "POST",
        http_path = "/getImages",
    }, options)
end

function Client:getMediaForFragmentList(input, options)
    return self:invokeOperation(input, {
        name = "GetMediaForFragmentList",
        input_schema = types.GetMediaForFragmentListInput,
        output_schema = types.GetMediaForFragmentListOutput,
        http_method = "POST",
        http_path = "/getMediaForFragmentList",
    }, options)
end

function Client:listFragments(input, options)
    return self:invokeOperation(input, {
        name = "ListFragments",
        input_schema = types.ListFragmentsInput,
        output_schema = types.ListFragmentsOutput,
        http_method = "POST",
        http_path = "/listFragments",
    }, options)
end

return M
