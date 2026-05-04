local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("artifact.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("artifact.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Artifact"
    cfg.signing_name = "artifact"
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

function Client:getAccountSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountSettings",
        input_schema = types.GetAccountSettingsInput,
        output_schema = types.GetAccountSettingsOutput,
        http_method = "GET",
        http_path = "/v1/account-settings/get",
    }, options)
end

function Client:getReport(input, options)
    return self:invokeOperation(input, {
        name = "GetReport",
        input_schema = types.GetReportInput,
        output_schema = types.GetReportOutput,
        http_method = "GET",
        http_path = "/v1/report/get",
    }, options)
end

function Client:getReportMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetReportMetadata",
        input_schema = types.GetReportMetadataInput,
        output_schema = types.GetReportMetadataOutput,
        http_method = "GET",
        http_path = "/v1/report/getMetadata",
    }, options)
end

function Client:getTermForReport(input, options)
    return self:invokeOperation(input, {
        name = "GetTermForReport",
        input_schema = types.GetTermForReportInput,
        output_schema = types.GetTermForReportOutput,
        http_method = "GET",
        http_path = "/v1/report/getTermForReport",
    }, options)
end

function Client:listCustomerAgreements(input, options)
    return self:invokeOperation(input, {
        name = "ListCustomerAgreements",
        input_schema = types.ListCustomerAgreementsInput,
        output_schema = types.ListCustomerAgreementsOutput,
        http_method = "GET",
        http_path = "/v1/customer-agreement/list",
    }, options)
end

function Client:listReports(input, options)
    return self:invokeOperation(input, {
        name = "ListReports",
        input_schema = types.ListReportsInput,
        output_schema = types.ListReportsOutput,
        http_method = "GET",
        http_path = "/v1/report/list",
    }, options)
end

function Client:listReportVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListReportVersions",
        input_schema = types.ListReportVersionsInput,
        output_schema = types.ListReportVersionsOutput,
        http_method = "GET",
        http_path = "/v1/report/listVersions",
    }, options)
end

function Client:putAccountSettings(input, options)
    return self:invokeOperation(input, {
        name = "PutAccountSettings",
        input_schema = types.PutAccountSettingsInput,
        output_schema = types.PutAccountSettingsOutput,
        http_method = "PUT",
        http_path = "/v1/account-settings/put",
    }, options)
end

return M
