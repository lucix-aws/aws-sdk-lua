local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("marketplacediscovery.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("marketplacediscovery.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSMarketplaceDiscovery"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "aws-marketplace", signing_region = cfg.region } }
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

function Client:getListing(input, options)
    return self:invokeOperation(input, {
        name = "GetListing",
        input_schema = schemas.GetListingInput,
        output_schema = schemas.GetListingOutput,
        http_method = "POST",
        http_path = "/2026-02-05/getListing",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOffer(input, options)
    return self:invokeOperation(input, {
        name = "GetOffer",
        input_schema = schemas.GetOfferInput,
        output_schema = schemas.GetOfferOutput,
        http_method = "POST",
        http_path = "/2026-02-05/getOffer",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOfferSet(input, options)
    return self:invokeOperation(input, {
        name = "GetOfferSet",
        input_schema = schemas.GetOfferSetInput,
        output_schema = schemas.GetOfferSetOutput,
        http_method = "POST",
        http_path = "/2026-02-05/getOfferSet",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOfferTerms(input, options)
    return self:invokeOperation(input, {
        name = "GetOfferTerms",
        input_schema = schemas.GetOfferTermsInput,
        output_schema = schemas.GetOfferTermsOutput,
        http_method = "POST",
        http_path = "/2026-02-05/getOfferTerms",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getProduct(input, options)
    return self:invokeOperation(input, {
        name = "GetProduct",
        input_schema = schemas.GetProductInput,
        output_schema = schemas.GetProductOutput,
        http_method = "POST",
        http_path = "/2026-02-05/getProduct",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFulfillmentOptions(input, options)
    return self:invokeOperation(input, {
        name = "ListFulfillmentOptions",
        input_schema = schemas.ListFulfillmentOptionsInput,
        output_schema = schemas.ListFulfillmentOptionsOutput,
        http_method = "POST",
        http_path = "/2026-02-05/listFulfillmentOptions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPurchaseOptions(input, options)
    return self:invokeOperation(input, {
        name = "ListPurchaseOptions",
        input_schema = schemas.ListPurchaseOptionsInput,
        output_schema = schemas.ListPurchaseOptionsOutput,
        http_method = "POST",
        http_path = "/2026-02-05/listPurchaseOptions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchFacets(input, options)
    return self:invokeOperation(input, {
        name = "SearchFacets",
        input_schema = schemas.SearchFacetsInput,
        output_schema = schemas.SearchFacetsOutput,
        http_method = "POST",
        http_path = "/2026-02-05/searchFacets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchListings(input, options)
    return self:invokeOperation(input, {
        name = "SearchListings",
        input_schema = schemas.SearchListingsInput,
        output_schema = schemas.SearchListingsOutput,
        http_method = "POST",
        http_path = "/2026-02-05/searchListings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
