local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("geomaps.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("geomaps.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "MapsService"
    cfg.signing_name = "geo-maps"
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

function Client:getGlyphs(input, options)
    return self:invokeOperation(input, {
        name = "GetGlyphs",
        input_schema = types.GetGlyphsInput,
        output_schema = types.GetGlyphsOutput,
        http_method = "GET",
        http_path = "/glyphs/{FontStack}/{FontUnicodeRange}",
    }, options)
end

function Client:getSprites(input, options)
    return self:invokeOperation(input, {
        name = "GetSprites",
        input_schema = types.GetSpritesInput,
        output_schema = types.GetSpritesOutput,
        http_method = "GET",
        http_path = "/styles/{Style}/{ColorScheme}/{Variant}/sprites/{FileName}",
    }, options)
end

function Client:getStaticMap(input, options)
    return self:invokeOperation(input, {
        name = "GetStaticMap",
        input_schema = types.GetStaticMapInput,
        output_schema = types.GetStaticMapOutput,
        http_method = "GET",
        http_path = "/static/{FileName}",
    }, options)
end

function Client:getStyleDescriptor(input, options)
    return self:invokeOperation(input, {
        name = "GetStyleDescriptor",
        input_schema = types.GetStyleDescriptorInput,
        output_schema = types.GetStyleDescriptorOutput,
        http_method = "GET",
        http_path = "/styles/{Style}/descriptor",
    }, options)
end

function Client:getTile(input, options)
    return self:invokeOperation(input, {
        name = "GetTile",
        input_schema = types.GetTileInput,
        output_schema = types.GetTileOutput,
        http_method = "GET",
        http_path = "/tiles/{Tileset}/{Z}/{X}/{Y}",
    }, options)
end

return M
