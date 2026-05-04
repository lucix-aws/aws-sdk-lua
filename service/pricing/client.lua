local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("pricing.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("pricing.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSPriceListService"
    cfg.signing_name = "awspricelistservice"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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

function Client:describeServices(input, options)
    return self:invokeOperation(input, {
        name = "DescribeServices",
        input_schema = types.DescribeServicesInput,
        output_schema = types.DescribeServicesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getAttributeValues(input, options)
    return self:invokeOperation(input, {
        name = "GetAttributeValues",
        input_schema = types.GetAttributeValuesInput,
        output_schema = types.GetAttributeValuesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getPriceListFileUrl(input, options)
    return self:invokeOperation(input, {
        name = "GetPriceListFileUrl",
        input_schema = types.GetPriceListFileUrlInput,
        output_schema = types.GetPriceListFileUrlOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getProducts(input, options)
    return self:invokeOperation(input, {
        name = "GetProducts",
        input_schema = types.GetProductsInput,
        output_schema = types.GetProductsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listPriceLists(input, options)
    return self:invokeOperation(input, {
        name = "ListPriceLists",
        input_schema = types.ListPriceListsInput,
        output_schema = types.ListPriceListsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
