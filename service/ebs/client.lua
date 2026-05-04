local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("ebs.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("ebs.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Ebs"
    cfg.signing_name = "ebs"
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

function Client:completeSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CompleteSnapshot",
        input_schema = types.CompleteSnapshotInput,
        output_schema = types.CompleteSnapshotOutput,
        http_method = "POST",
        http_path = "/snapshots/completion/{SnapshotId}",
    }, options)
end

function Client:getSnapshotBlock(input, options)
    return self:invokeOperation(input, {
        name = "GetSnapshotBlock",
        input_schema = types.GetSnapshotBlockInput,
        output_schema = types.GetSnapshotBlockOutput,
        http_method = "GET",
        http_path = "/snapshots/{SnapshotId}/blocks/{BlockIndex}",
    }, options)
end

function Client:listChangedBlocks(input, options)
    return self:invokeOperation(input, {
        name = "ListChangedBlocks",
        input_schema = types.ListChangedBlocksInput,
        output_schema = types.ListChangedBlocksOutput,
        http_method = "GET",
        http_path = "/snapshots/{SecondSnapshotId}/changedblocks",
    }, options)
end

function Client:listSnapshotBlocks(input, options)
    return self:invokeOperation(input, {
        name = "ListSnapshotBlocks",
        input_schema = types.ListSnapshotBlocksInput,
        output_schema = types.ListSnapshotBlocksOutput,
        http_method = "GET",
        http_path = "/snapshots/{SnapshotId}/blocks",
    }, options)
end

function Client:putSnapshotBlock(input, options)
    return self:invokeOperation(input, {
        name = "PutSnapshotBlock",
        input_schema = types.PutSnapshotBlockInput,
        output_schema = types.PutSnapshotBlockOutput,
        http_method = "PUT",
        http_path = "/snapshots/{SnapshotId}/blocks/{BlockIndex}",
    }, options)
end

function Client:startSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "StartSnapshot",
        input_schema = types.StartSnapshotInput,
        output_schema = types.StartSnapshotOutput,
        http_method = "POST",
        http_path = "/snapshots",
    }, options)
end

return M
