local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("marketplacediscovery.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("marketplacediscovery.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSMarketplaceDiscovery"
    cfg.signing_name = "aws-marketplace"
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

function Client:getListing(input, options)
    return self:invokeOperation(input, {
        name = "GetListing",
        input_schema = types.GetListingInput,
        output_schema = types.GetListingOutput,
        http_method = "POST",
        http_path = "/2026-02-05/getListing",
    }, options)
end

function Client:getOffer(input, options)
    return self:invokeOperation(input, {
        name = "GetOffer",
        input_schema = types.GetOfferInput,
        output_schema = types.GetOfferOutput,
        http_method = "POST",
        http_path = "/2026-02-05/getOffer",
    }, options)
end

function Client:getOfferSet(input, options)
    return self:invokeOperation(input, {
        name = "GetOfferSet",
        input_schema = types.GetOfferSetInput,
        output_schema = types.GetOfferSetOutput,
        http_method = "POST",
        http_path = "/2026-02-05/getOfferSet",
    }, options)
end

function Client:getOfferTerms(input, options)
    return self:invokeOperation(input, {
        name = "GetOfferTerms",
        input_schema = types.GetOfferTermsInput,
        output_schema = types.GetOfferTermsOutput,
        http_method = "POST",
        http_path = "/2026-02-05/getOfferTerms",
    }, options)
end

function Client:getProduct(input, options)
    return self:invokeOperation(input, {
        name = "GetProduct",
        input_schema = types.GetProductInput,
        output_schema = types.GetProductOutput,
        http_method = "POST",
        http_path = "/2026-02-05/getProduct",
    }, options)
end

function Client:listFulfillmentOptions(input, options)
    return self:invokeOperation(input, {
        name = "ListFulfillmentOptions",
        input_schema = types.ListFulfillmentOptionsInput,
        output_schema = types.ListFulfillmentOptionsOutput,
        http_method = "POST",
        http_path = "/2026-02-05/listFulfillmentOptions",
    }, options)
end

function Client:listPurchaseOptions(input, options)
    return self:invokeOperation(input, {
        name = "ListPurchaseOptions",
        input_schema = types.ListPurchaseOptionsInput,
        output_schema = types.ListPurchaseOptionsOutput,
        http_method = "POST",
        http_path = "/2026-02-05/listPurchaseOptions",
    }, options)
end

function Client:searchFacets(input, options)
    return self:invokeOperation(input, {
        name = "SearchFacets",
        input_schema = types.SearchFacetsInput,
        output_schema = types.SearchFacetsOutput,
        http_method = "POST",
        http_path = "/2026-02-05/searchFacets",
    }, options)
end

function Client:searchListings(input, options)
    return self:invokeOperation(input, {
        name = "SearchListings",
        input_schema = types.SearchListingsInput,
        output_schema = types.SearchListingsOutput,
        http_method = "POST",
        http_path = "/2026-02-05/searchListings",
    }, options)
end

return M
