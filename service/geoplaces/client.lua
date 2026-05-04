local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("geoplaces.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("geoplaces.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "PlacesService"
    cfg.signing_name = "geo-places"
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

function Client:autocomplete(input, options)
    return self:invokeOperation(input, {
        name = "Autocomplete",
        input_schema = types.AutocompleteInput,
        output_schema = types.AutocompleteOutput,
        http_method = "POST",
        http_path = "/v2/autocomplete",
    }, options)
end

function Client:geocode(input, options)
    return self:invokeOperation(input, {
        name = "Geocode",
        input_schema = types.GeocodeInput,
        output_schema = types.GeocodeOutput,
        http_method = "POST",
        http_path = "/v2/geocode",
    }, options)
end

function Client:getPlace(input, options)
    return self:invokeOperation(input, {
        name = "GetPlace",
        input_schema = types.GetPlaceInput,
        output_schema = types.GetPlaceOutput,
        http_method = "GET",
        http_path = "/v2/place/{PlaceId}",
    }, options)
end

function Client:reverseGeocode(input, options)
    return self:invokeOperation(input, {
        name = "ReverseGeocode",
        input_schema = types.ReverseGeocodeInput,
        output_schema = types.ReverseGeocodeOutput,
        http_method = "POST",
        http_path = "/v2/reverse-geocode",
    }, options)
end

function Client:searchNearby(input, options)
    return self:invokeOperation(input, {
        name = "SearchNearby",
        input_schema = types.SearchNearbyInput,
        output_schema = types.SearchNearbyOutput,
        http_method = "POST",
        http_path = "/v2/search-nearby",
    }, options)
end

function Client:searchText(input, options)
    return self:invokeOperation(input, {
        name = "SearchText",
        input_schema = types.SearchTextInput,
        output_schema = types.SearchTextOutput,
        http_method = "POST",
        http_path = "/v2/search-text",
    }, options)
end

function Client:suggest(input, options)
    return self:invokeOperation(input, {
        name = "Suggest",
        input_schema = types.SuggestInput,
        output_schema = types.SuggestOutput,
        http_method = "POST",
        http_path = "/v2/suggest",
    }, options)
end

return M
