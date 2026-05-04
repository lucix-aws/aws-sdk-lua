local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("acm.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("acm.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "CertificateManager"
    cfg.signing_name = "acm"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
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

function Client:addTagsToCertificate(input, options)
    return self:invokeOperation(input, {
        name = "AddTagsToCertificate",
        input_schema = types.AddTagsToCertificateInput,
        output_schema = types.AddTagsToCertificateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteCertificate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCertificate",
        input_schema = types.DeleteCertificateInput,
        output_schema = types.DeleteCertificateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeCertificate(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCertificate",
        input_schema = types.DescribeCertificateInput,
        output_schema = types.DescribeCertificateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:exportCertificate(input, options)
    return self:invokeOperation(input, {
        name = "ExportCertificate",
        input_schema = types.ExportCertificateInput,
        output_schema = types.ExportCertificateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getAccountConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountConfiguration",
        input_schema = types.GetAccountConfigurationInput,
        output_schema = types.GetAccountConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getCertificate(input, options)
    return self:invokeOperation(input, {
        name = "GetCertificate",
        input_schema = types.GetCertificateInput,
        output_schema = types.GetCertificateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:importCertificate(input, options)
    return self:invokeOperation(input, {
        name = "ImportCertificate",
        input_schema = types.ImportCertificateInput,
        output_schema = types.ImportCertificateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listCertificates(input, options)
    return self:invokeOperation(input, {
        name = "ListCertificates",
        input_schema = types.ListCertificatesInput,
        output_schema = types.ListCertificatesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForCertificate(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForCertificate",
        input_schema = types.ListTagsForCertificateInput,
        output_schema = types.ListTagsForCertificateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putAccountConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutAccountConfiguration",
        input_schema = types.PutAccountConfigurationInput,
        output_schema = types.PutAccountConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:removeTagsFromCertificate(input, options)
    return self:invokeOperation(input, {
        name = "RemoveTagsFromCertificate",
        input_schema = types.RemoveTagsFromCertificateInput,
        output_schema = types.RemoveTagsFromCertificateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:renewCertificate(input, options)
    return self:invokeOperation(input, {
        name = "RenewCertificate",
        input_schema = types.RenewCertificateInput,
        output_schema = types.RenewCertificateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:requestCertificate(input, options)
    return self:invokeOperation(input, {
        name = "RequestCertificate",
        input_schema = types.RequestCertificateInput,
        output_schema = types.RequestCertificateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:resendValidationEmail(input, options)
    return self:invokeOperation(input, {
        name = "ResendValidationEmail",
        input_schema = types.ResendValidationEmailInput,
        output_schema = types.ResendValidationEmailOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:revokeCertificate(input, options)
    return self:invokeOperation(input, {
        name = "RevokeCertificate",
        input_schema = types.RevokeCertificateInput,
        output_schema = types.RevokeCertificateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:searchCertificates(input, options)
    return self:invokeOperation(input, {
        name = "SearchCertificates",
        input_schema = types.SearchCertificatesInput,
        output_schema = types.SearchCertificatesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateCertificateOptions(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCertificateOptions",
        input_schema = types.UpdateCertificateOptionsInput,
        output_schema = types.UpdateCertificateOptionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
