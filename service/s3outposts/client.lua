local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("s3outposts.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("s3outposts.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "S3Outposts"
    cfg.signing_name = "s3-outposts"
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

function Client:createEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateEndpoint",
        input_schema = types.CreateEndpointInput,
        output_schema = types.CreateEndpointOutput,
        http_method = "POST",
        http_path = "/S3Outposts/CreateEndpoint",
    }, options)
end

function Client:deleteEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEndpoint",
        input_schema = types.DeleteEndpointInput,
        output_schema = types.DeleteEndpointOutput,
        http_method = "DELETE",
        http_path = "/S3Outposts/DeleteEndpoint",
    }, options)
end

function Client:listEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListEndpoints",
        input_schema = types.ListEndpointsInput,
        output_schema = types.ListEndpointsOutput,
        http_method = "GET",
        http_path = "/S3Outposts/ListEndpoints",
    }, options)
end

function Client:listOutpostsWithS3(input, options)
    return self:invokeOperation(input, {
        name = "ListOutpostsWithS3",
        input_schema = types.ListOutpostsWithS3Input,
        output_schema = types.ListOutpostsWithS3Output,
        http_method = "GET",
        http_path = "/S3Outposts/ListOutpostsWithS3",
    }, options)
end

function Client:listSharedEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListSharedEndpoints",
        input_schema = types.ListSharedEndpointsInput,
        output_schema = types.ListSharedEndpointsOutput,
        http_method = "GET",
        http_path = "/S3Outposts/ListSharedEndpoints",
    }, options)
end

return M
