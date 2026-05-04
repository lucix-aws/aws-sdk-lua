local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("trustedadvisor.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("trustedadvisor.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "TrustedAdvisor"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "trustedadvisor", signing_region = cfg.region } }
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

function Client:batchUpdateRecommendationResourceExclusion(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateRecommendationResourceExclusion",
        input_schema = types.BatchUpdateRecommendationResourceExclusionInput,
        output_schema = types.BatchUpdateRecommendationResourceExclusionOutput,
        http_method = "PUT",
        http_path = "/v1/batch-update-recommendation-resource-exclusion",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOrganizationRecommendation(input, options)
    return self:invokeOperation(input, {
        name = "GetOrganizationRecommendation",
        input_schema = types.GetOrganizationRecommendationInput,
        output_schema = types.GetOrganizationRecommendationOutput,
        http_method = "GET",
        http_path = "/v1/organization-recommendations/{organizationRecommendationIdentifier}",
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
        http_method = "GET",
        http_path = "/v1/recommendations/{recommendationIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listChecks(input, options)
    return self:invokeOperation(input, {
        name = "ListChecks",
        input_schema = types.ListChecksInput,
        output_schema = types.ListChecksOutput,
        http_method = "GET",
        http_path = "/v1/checks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOrganizationRecommendationAccounts(input, options)
    return self:invokeOperation(input, {
        name = "ListOrganizationRecommendationAccounts",
        input_schema = types.ListOrganizationRecommendationAccountsInput,
        output_schema = types.ListOrganizationRecommendationAccountsOutput,
        http_method = "GET",
        http_path = "/v1/organization-recommendations/{organizationRecommendationIdentifier}/accounts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOrganizationRecommendationResources(input, options)
    return self:invokeOperation(input, {
        name = "ListOrganizationRecommendationResources",
        input_schema = types.ListOrganizationRecommendationResourcesInput,
        output_schema = types.ListOrganizationRecommendationResourcesOutput,
        http_method = "GET",
        http_path = "/v1/organization-recommendations/{organizationRecommendationIdentifier}/resources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOrganizationRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "ListOrganizationRecommendations",
        input_schema = types.ListOrganizationRecommendationsInput,
        output_schema = types.ListOrganizationRecommendationsOutput,
        http_method = "GET",
        http_path = "/v1/organization-recommendations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRecommendationResources(input, options)
    return self:invokeOperation(input, {
        name = "ListRecommendationResources",
        input_schema = types.ListRecommendationResourcesInput,
        output_schema = types.ListRecommendationResourcesOutput,
        http_method = "GET",
        http_path = "/v1/recommendations/{recommendationIdentifier}/resources",
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
        http_method = "GET",
        http_path = "/v1/recommendations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateOrganizationRecommendationLifecycle(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOrganizationRecommendationLifecycle",
        input_schema = types.UpdateOrganizationRecommendationLifecycleInput,
        output_schema = types.UpdateOrganizationRecommendationLifecycleOutput,
        http_method = "PUT",
        http_path = "/v1/organization-recommendations/{organizationRecommendationIdentifier}/lifecycle",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRecommendationLifecycle(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRecommendationLifecycle",
        input_schema = types.UpdateRecommendationLifecycleInput,
        output_schema = types.UpdateRecommendationLifecycleOutput,
        http_method = "PUT",
        http_path = "/v1/recommendations/{recommendationIdentifier}/lifecycle",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
