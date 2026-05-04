local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("mediastoredata.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("mediastoredata.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "MediaStoreObject_20170901"
    cfg.signing_name = "mediastoreobject_20170901"
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

function Client:deleteObject(input, options)
    return self:invokeOperation(input, {
        name = "DeleteObject",
        input_schema = types.DeleteObjectInput,
        output_schema = types.DeleteObjectOutput,
        http_method = "DELETE",
        http_path = "/{Path+}",
    }, options)
end

function Client:describeObject(input, options)
    return self:invokeOperation(input, {
        name = "DescribeObject",
        input_schema = types.DescribeObjectInput,
        output_schema = types.DescribeObjectOutput,
        http_method = "HEAD",
        http_path = "/{Path+}",
    }, options)
end

function Client:getObject(input, options)
    return self:invokeOperation(input, {
        name = "GetObject",
        input_schema = types.GetObjectInput,
        output_schema = types.GetObjectOutput,
        http_method = "GET",
        http_path = "/{Path+}",
    }, options)
end

function Client:listItems(input, options)
    return self:invokeOperation(input, {
        name = "ListItems",
        input_schema = types.ListItemsInput,
        output_schema = types.ListItemsOutput,
        http_method = "GET",
        http_path = "/",
    }, options)
end

function Client:putObject(input, options)
    return self:invokeOperation(input, {
        name = "PutObject",
        input_schema = types.PutObjectInput,
        output_schema = types.PutObjectOutput,
        http_method = "PUT",
        http_path = "/{Path+}",
    }, options)
end

return M
