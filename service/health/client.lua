local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("health.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("health.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSHealth_20160804"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "health", signing_region = cfg.region } }
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

function Client:describeAffectedAccountsForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAffectedAccountsForOrganization",
        input_schema = types.DescribeAffectedAccountsForOrganizationInput,
        output_schema = types.DescribeAffectedAccountsForOrganizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAffectedEntities(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAffectedEntities",
        input_schema = types.DescribeAffectedEntitiesInput,
        output_schema = types.DescribeAffectedEntitiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAffectedEntitiesForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAffectedEntitiesForOrganization",
        input_schema = types.DescribeAffectedEntitiesForOrganizationInput,
        output_schema = types.DescribeAffectedEntitiesForOrganizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEntityAggregates(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEntityAggregates",
        input_schema = types.DescribeEntityAggregatesInput,
        output_schema = types.DescribeEntityAggregatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEntityAggregatesForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEntityAggregatesForOrganization",
        input_schema = types.DescribeEntityAggregatesForOrganizationInput,
        output_schema = types.DescribeEntityAggregatesForOrganizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEventAggregates(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEventAggregates",
        input_schema = types.DescribeEventAggregatesInput,
        output_schema = types.DescribeEventAggregatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEventDetails(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEventDetails",
        input_schema = types.DescribeEventDetailsInput,
        output_schema = types.DescribeEventDetailsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEventDetailsForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEventDetailsForOrganization",
        input_schema = types.DescribeEventDetailsForOrganizationInput,
        output_schema = types.DescribeEventDetailsForOrganizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEvents(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEvents",
        input_schema = types.DescribeEventsInput,
        output_schema = types.DescribeEventsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEventsForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEventsForOrganization",
        input_schema = types.DescribeEventsForOrganizationInput,
        output_schema = types.DescribeEventsForOrganizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEventTypes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEventTypes",
        input_schema = types.DescribeEventTypesInput,
        output_schema = types.DescribeEventTypesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeHealthServiceStatusForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "DescribeHealthServiceStatusForOrganization",
        input_schema = types.DescribeHealthServiceStatusForOrganizationInput,
        output_schema = types.DescribeHealthServiceStatusForOrganizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableHealthServiceAccessForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "DisableHealthServiceAccessForOrganization",
        input_schema = types.DisableHealthServiceAccessForOrganizationInput,
        output_schema = types.DisableHealthServiceAccessForOrganizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableHealthServiceAccessForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "EnableHealthServiceAccessForOrganization",
        input_schema = types.EnableHealthServiceAccessForOrganizationInput,
        output_schema = types.EnableHealthServiceAccessForOrganizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
