local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("keyspacesstreams.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("keyspacesstreams.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "KeyspacesStreams"
    cfg.signing_name = "cassandra"
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

function Client:getRecords(input, options)
    return self:invokeOperation(input, {
        name = "GetRecords",
        input_schema = types.GetRecordsInput,
        output_schema = types.GetRecordsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getShardIterator(input, options)
    return self:invokeOperation(input, {
        name = "GetShardIterator",
        input_schema = types.GetShardIteratorInput,
        output_schema = types.GetShardIteratorOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getStream(input, options)
    return self:invokeOperation(input, {
        name = "GetStream",
        input_schema = types.GetStreamInput,
        output_schema = types.GetStreamOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listStreams(input, options)
    return self:invokeOperation(input, {
        name = "ListStreams",
        input_schema = types.ListStreamsInput,
        output_schema = types.ListStreamsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
