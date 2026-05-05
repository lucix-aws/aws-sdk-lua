local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("connecthealth.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("connecthealth.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ConnectHealth"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "health-agent", signing_region = cfg.region } }
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

function Client:activateSubscription(input, options)
    return self:invokeOperation(input, {
        name = "ActivateSubscription",
        input_schema = schemas.ActivateSubscriptionInput,
        output_schema = schemas.ActivateSubscriptionOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/subscriptions/{subscriptionId}/activate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDomain(input, options)
    return self:invokeOperation(input, {
        name = "CreateDomain",
        input_schema = schemas.CreateDomainInput,
        output_schema = schemas.CreateDomainOutput,
        http_method = "POST",
        http_path = "/domain",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSubscription(input, options)
    return self:invokeOperation(input, {
        name = "CreateSubscription",
        input_schema = schemas.CreateSubscriptionInput,
        output_schema = schemas.CreateSubscriptionOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/subscriptions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deactivateSubscription(input, options)
    return self:invokeOperation(input, {
        name = "DeactivateSubscription",
        input_schema = schemas.DeactivateSubscriptionInput,
        output_schema = schemas.DeactivateSubscriptionOutput,
        http_method = "POST",
        http_path = "/domains/{domainId}/subscriptions/{subscriptionId}/deactivate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDomain(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomain",
        input_schema = schemas.DeleteDomainInput,
        output_schema = schemas.DeleteDomainOutput,
        http_method = "DELETE",
        http_path = "/domain/{domainId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDomain(input, options)
    return self:invokeOperation(input, {
        name = "GetDomain",
        input_schema = schemas.GetDomainInput,
        output_schema = schemas.GetDomainOutput,
        http_method = "GET",
        http_path = "/domain/{domainId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMedicalScribeListeningSession(input, options)
    return self:invokeOperation(input, {
        name = "GetMedicalScribeListeningSession",
        input_schema = schemas.GetMedicalScribeListeningSessionInput,
        output_schema = schemas.GetMedicalScribeListeningSessionOutput,
        http_method = "GET",
        http_path = "/medical-scribe-stream/domain/{domainId}/subscription/{subscriptionId}/session/{sessionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPatientInsightsJob(input, options)
    return self:invokeOperation(input, {
        name = "GetPatientInsightsJob",
        input_schema = schemas.GetPatientInsightsJobInput,
        output_schema = schemas.GetPatientInsightsJobOutput,
        http_method = "GET",
        http_path = "/domain/{domainId}/patient-insights-job/{jobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSubscription(input, options)
    return self:invokeOperation(input, {
        name = "GetSubscription",
        input_schema = schemas.GetSubscriptionInput,
        output_schema = schemas.GetSubscriptionOutput,
        http_method = "GET",
        http_path = "/domains/{domainId}/subscriptions/{subscriptionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDomains(input, options)
    return self:invokeOperation(input, {
        name = "ListDomains",
        input_schema = schemas.ListDomainsInput,
        output_schema = schemas.ListDomainsOutput,
        http_method = "GET",
        http_path = "/domain",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSubscriptions(input, options)
    return self:invokeOperation(input, {
        name = "ListSubscriptions",
        input_schema = schemas.ListSubscriptionsInput,
        output_schema = schemas.ListSubscriptionsOutput,
        http_method = "GET",
        http_path = "/domains/{domainId}/subscriptions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startPatientInsightsJob(input, options)
    return self:invokeOperation(input, {
        name = "StartPatientInsightsJob",
        input_schema = schemas.StartPatientInsightsJobInput,
        output_schema = schemas.StartPatientInsightsJobOutput,
        http_method = "POST",
        http_path = "/domain/{domainId}/patient-insights-job",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
