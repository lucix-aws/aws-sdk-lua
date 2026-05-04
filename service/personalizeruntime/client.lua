local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("personalizeruntime.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("personalizeruntime.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonPersonalizeRuntime"
    cfg.signing_name = "personalize"
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

function Client:getActionRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "GetActionRecommendations",
        input_schema = types.GetActionRecommendationsInput,
        output_schema = types.GetActionRecommendationsOutput,
        http_method = "POST",
        http_path = "/action-recommendations",
    }, options)
end

function Client:getPersonalizedRanking(input, options)
    return self:invokeOperation(input, {
        name = "GetPersonalizedRanking",
        input_schema = types.GetPersonalizedRankingInput,
        output_schema = types.GetPersonalizedRankingOutput,
        http_method = "POST",
        http_path = "/personalize-ranking",
    }, options)
end

function Client:getRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "GetRecommendations",
        input_schema = types.GetRecommendationsInput,
        output_schema = types.GetRecommendationsOutput,
        http_method = "POST",
        http_path = "/recommendations",
    }, options)
end

return M
