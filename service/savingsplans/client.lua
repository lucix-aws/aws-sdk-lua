local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("savingsplans.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("savingsplans.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSSavingsPlan"
    cfg.signing_name = "savingsplans"
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

function Client:createSavingsPlan(input, options)
    return self:invokeOperation(input, {
        name = "CreateSavingsPlan",
        input_schema = types.CreateSavingsPlanInput,
        output_schema = types.CreateSavingsPlanOutput,
        http_method = "POST",
        http_path = "/CreateSavingsPlan",
    }, options)
end

function Client:deleteQueuedSavingsPlan(input, options)
    return self:invokeOperation(input, {
        name = "DeleteQueuedSavingsPlan",
        input_schema = types.DeleteQueuedSavingsPlanInput,
        output_schema = types.DeleteQueuedSavingsPlanOutput,
        http_method = "POST",
        http_path = "/DeleteQueuedSavingsPlan",
    }, options)
end

function Client:describeSavingsPlanRates(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSavingsPlanRates",
        input_schema = types.DescribeSavingsPlanRatesInput,
        output_schema = types.DescribeSavingsPlanRatesOutput,
        http_method = "POST",
        http_path = "/DescribeSavingsPlanRates",
    }, options)
end

function Client:describeSavingsPlans(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSavingsPlans",
        input_schema = types.DescribeSavingsPlansInput,
        output_schema = types.DescribeSavingsPlansOutput,
        http_method = "POST",
        http_path = "/DescribeSavingsPlans",
    }, options)
end

function Client:describeSavingsPlansOfferingRates(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSavingsPlansOfferingRates",
        input_schema = types.DescribeSavingsPlansOfferingRatesInput,
        output_schema = types.DescribeSavingsPlansOfferingRatesOutput,
        http_method = "POST",
        http_path = "/DescribeSavingsPlansOfferingRates",
    }, options)
end

function Client:describeSavingsPlansOfferings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSavingsPlansOfferings",
        input_schema = types.DescribeSavingsPlansOfferingsInput,
        output_schema = types.DescribeSavingsPlansOfferingsOutput,
        http_method = "POST",
        http_path = "/DescribeSavingsPlansOfferings",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/ListTagsForResource",
    }, options)
end

function Client:returnSavingsPlan(input, options)
    return self:invokeOperation(input, {
        name = "ReturnSavingsPlan",
        input_schema = types.ReturnSavingsPlanInput,
        output_schema = types.ReturnSavingsPlanOutput,
        http_method = "POST",
        http_path = "/ReturnSavingsPlan",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/TagResource",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/UntagResource",
    }, options)
end

return M
