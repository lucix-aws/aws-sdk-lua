local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("artifact.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("artifact.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Artifact"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "artifact", signing_region = cfg.region } }
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

function Client:getAccountSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountSettings",
        input_schema = schemas.GetAccountSettingsInput,
        output_schema = schemas.GetAccountSettingsOutput,
        http_method = "GET",
        http_path = "/v1/account-settings/get",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getReport(input, options)
    return self:invokeOperation(input, {
        name = "GetReport",
        input_schema = schemas.GetReportInput,
        output_schema = schemas.GetReportOutput,
        http_method = "GET",
        http_path = "/v1/report/get",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getReportMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetReportMetadata",
        input_schema = schemas.GetReportMetadataInput,
        output_schema = schemas.GetReportMetadataOutput,
        http_method = "GET",
        http_path = "/v1/report/getMetadata",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTermForReport(input, options)
    return self:invokeOperation(input, {
        name = "GetTermForReport",
        input_schema = schemas.GetTermForReportInput,
        output_schema = schemas.GetTermForReportOutput,
        http_method = "GET",
        http_path = "/v1/report/getTermForReport",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCustomerAgreements(input, options)
    return self:invokeOperation(input, {
        name = "ListCustomerAgreements",
        input_schema = schemas.ListCustomerAgreementsInput,
        output_schema = schemas.ListCustomerAgreementsOutput,
        http_method = "GET",
        http_path = "/v1/customer-agreement/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listReports(input, options)
    return self:invokeOperation(input, {
        name = "ListReports",
        input_schema = schemas.ListReportsInput,
        output_schema = schemas.ListReportsOutput,
        http_method = "GET",
        http_path = "/v1/report/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listReportVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListReportVersions",
        input_schema = schemas.ListReportVersionsInput,
        output_schema = schemas.ListReportVersionsOutput,
        http_method = "GET",
        http_path = "/v1/report/listVersions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putAccountSettings(input, options)
    return self:invokeOperation(input, {
        name = "PutAccountSettings",
        input_schema = schemas.PutAccountSettingsInput,
        output_schema = schemas.PutAccountSettingsOutput,
        http_method = "PUT",
        http_path = "/v1/account-settings/put",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
