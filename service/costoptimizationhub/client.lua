local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("costoptimizationhub.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("costoptimizationhub.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "CostOptimizationHubService"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "cost-optimization-hub", signing_region = cfg.region } }
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

function Client:getPreferences(input, options)
    return self:invokeOperation(input, {
        name = "GetPreferences",
        input_schema = types.GetPreferencesInput,
        output_schema = types.GetPreferencesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRecommendation(input, options)
    return self:invokeOperation(input, {
        name = "GetRecommendation",
        input_schema = types.GetRecommendationInput,
        output_schema = types.GetRecommendationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEfficiencyMetrics(input, options)
    return self:invokeOperation(input, {
        name = "ListEfficiencyMetrics",
        input_schema = types.ListEfficiencyMetricsInput,
        output_schema = types.ListEfficiencyMetricsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEnrollmentStatuses(input, options)
    return self:invokeOperation(input, {
        name = "ListEnrollmentStatuses",
        input_schema = types.ListEnrollmentStatusesInput,
        output_schema = types.ListEnrollmentStatusesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "ListRecommendations",
        input_schema = types.ListRecommendationsInput,
        output_schema = types.ListRecommendationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRecommendationSummaries(input, options)
    return self:invokeOperation(input, {
        name = "ListRecommendationSummaries",
        input_schema = types.ListRecommendationSummariesInput,
        output_schema = types.ListRecommendationSummariesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEnrollmentStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEnrollmentStatus",
        input_schema = types.UpdateEnrollmentStatusInput,
        output_schema = types.UpdateEnrollmentStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePreferences(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePreferences",
        input_schema = types.UpdatePreferencesInput,
        output_schema = types.UpdatePreferencesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
