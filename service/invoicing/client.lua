local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("invoicing.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("invoicing.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Invoicing"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "invoicing", signing_region = cfg.region } }
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

function Client:batchGetInvoiceProfile(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetInvoiceProfile",
        input_schema = types.BatchGetInvoiceProfileInput,
        output_schema = types.BatchGetInvoiceProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createInvoiceUnit(input, options)
    return self:invokeOperation(input, {
        name = "CreateInvoiceUnit",
        input_schema = types.CreateInvoiceUnitInput,
        output_schema = types.CreateInvoiceUnitOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProcurementPortalPreference(input, options)
    return self:invokeOperation(input, {
        name = "CreateProcurementPortalPreference",
        input_schema = types.CreateProcurementPortalPreferenceInput,
        output_schema = types.CreateProcurementPortalPreferenceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInvoiceUnit(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInvoiceUnit",
        input_schema = types.DeleteInvoiceUnitInput,
        output_schema = types.DeleteInvoiceUnitOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProcurementPortalPreference(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProcurementPortalPreference",
        input_schema = types.DeleteProcurementPortalPreferenceInput,
        output_schema = types.DeleteProcurementPortalPreferenceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInvoicePDF(input, options)
    return self:invokeOperation(input, {
        name = "GetInvoicePDF",
        input_schema = types.GetInvoicePDFInput,
        output_schema = types.GetInvoicePDFOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInvoiceUnit(input, options)
    return self:invokeOperation(input, {
        name = "GetInvoiceUnit",
        input_schema = types.GetInvoiceUnitInput,
        output_schema = types.GetInvoiceUnitOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getProcurementPortalPreference(input, options)
    return self:invokeOperation(input, {
        name = "GetProcurementPortalPreference",
        input_schema = types.GetProcurementPortalPreferenceInput,
        output_schema = types.GetProcurementPortalPreferenceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInvoiceSummaries(input, options)
    return self:invokeOperation(input, {
        name = "ListInvoiceSummaries",
        input_schema = types.ListInvoiceSummariesInput,
        output_schema = types.ListInvoiceSummariesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInvoiceUnits(input, options)
    return self:invokeOperation(input, {
        name = "ListInvoiceUnits",
        input_schema = types.ListInvoiceUnitsInput,
        output_schema = types.ListInvoiceUnitsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProcurementPortalPreferences(input, options)
    return self:invokeOperation(input, {
        name = "ListProcurementPortalPreferences",
        input_schema = types.ListProcurementPortalPreferencesInput,
        output_schema = types.ListProcurementPortalPreferencesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putProcurementPortalPreference(input, options)
    return self:invokeOperation(input, {
        name = "PutProcurementPortalPreference",
        input_schema = types.PutProcurementPortalPreferenceInput,
        output_schema = types.PutProcurementPortalPreferenceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateInvoiceUnit(input, options)
    return self:invokeOperation(input, {
        name = "UpdateInvoiceUnit",
        input_schema = types.UpdateInvoiceUnitInput,
        output_schema = types.UpdateInvoiceUnitOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProcurementPortalPreferenceStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProcurementPortalPreferenceStatus",
        input_schema = types.UpdateProcurementPortalPreferenceStatusInput,
        output_schema = types.UpdateProcurementPortalPreferenceStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
