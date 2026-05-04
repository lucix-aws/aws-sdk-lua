local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("cloudsearchdomain.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("cloudsearchdomain.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonCloudSearch2013"
    cfg.signing_name = "amazoncloudsearch2013"
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

function Client:search(input, options)
    return self:invokeOperation(input, {
        name = "Search",
        input_schema = types.SearchInput,
        output_schema = types.SearchOutput,
        http_method = "GET",
        http_path = "/2013-01-01/search?format=sdk&pretty=true",
    }, options)
end

function Client:suggest(input, options)
    return self:invokeOperation(input, {
        name = "Suggest",
        input_schema = types.SuggestInput,
        output_schema = types.SuggestOutput,
        http_method = "GET",
        http_path = "/2013-01-01/suggest?format=sdk&pretty=true",
    }, options)
end

function Client:uploadDocuments(input, options)
    return self:invokeOperation(input, {
        name = "UploadDocuments",
        input_schema = types.UploadDocumentsInput,
        output_schema = types.UploadDocumentsOutput,
        http_method = "POST",
        http_path = "/2013-01-01/documents/batch?format=sdk",
    }, options)
end

return M
