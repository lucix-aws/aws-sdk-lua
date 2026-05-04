local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("bcmrecommendedactions.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("bcmrecommendedactions.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSBillingAndCostManagementRecommendedActions"
    cfg.signing_name = "bcm-recommended-actions"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
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

function Client:listRecommendedActions(input, options)
    return self:invokeOperation(input, {
        name = "ListRecommendedActions",
        input_schema = types.ListRecommendedActionsInput,
        output_schema = types.ListRecommendedActionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
