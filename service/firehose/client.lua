local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("firehose.endpoint_rules")
local schemas = require("firehose.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Firehose_20150804"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "firehose", signing_region = cfg.region } }
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

function Client:createDeliveryStream(input, options)
    return self:invokeOperation(input, {
        name = "CreateDeliveryStream",
        input_schema = schemas.CreateDeliveryStreamInput,
        output_schema = schemas.CreateDeliveryStreamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDeliveryStream(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDeliveryStream",
        input_schema = schemas.DeleteDeliveryStreamInput,
        output_schema = schemas.DeleteDeliveryStreamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDeliveryStream(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDeliveryStream",
        input_schema = schemas.DescribeDeliveryStreamInput,
        output_schema = schemas.DescribeDeliveryStreamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDeliveryStreams(input, options)
    return self:invokeOperation(input, {
        name = "ListDeliveryStreams",
        input_schema = schemas.ListDeliveryStreamsInput,
        output_schema = schemas.ListDeliveryStreamsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForDeliveryStream(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForDeliveryStream",
        input_schema = schemas.ListTagsForDeliveryStreamInput,
        output_schema = schemas.ListTagsForDeliveryStreamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putRecord(input, options)
    return self:invokeOperation(input, {
        name = "PutRecord",
        input_schema = schemas.PutRecordInput,
        output_schema = schemas.PutRecordOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putRecordBatch(input, options)
    return self:invokeOperation(input, {
        name = "PutRecordBatch",
        input_schema = schemas.PutRecordBatchInput,
        output_schema = schemas.PutRecordBatchOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startDeliveryStreamEncryption(input, options)
    return self:invokeOperation(input, {
        name = "StartDeliveryStreamEncryption",
        input_schema = schemas.StartDeliveryStreamEncryptionInput,
        output_schema = schemas.StartDeliveryStreamEncryptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopDeliveryStreamEncryption(input, options)
    return self:invokeOperation(input, {
        name = "StopDeliveryStreamEncryption",
        input_schema = schemas.StopDeliveryStreamEncryptionInput,
        output_schema = schemas.StopDeliveryStreamEncryptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagDeliveryStream(input, options)
    return self:invokeOperation(input, {
        name = "TagDeliveryStream",
        input_schema = schemas.TagDeliveryStreamInput,
        output_schema = schemas.TagDeliveryStreamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagDeliveryStream(input, options)
    return self:invokeOperation(input, {
        name = "UntagDeliveryStream",
        input_schema = schemas.UntagDeliveryStreamInput,
        output_schema = schemas.UntagDeliveryStreamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDestination(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDestination",
        input_schema = schemas.UpdateDestinationInput,
        output_schema = schemas.UpdateDestinationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
