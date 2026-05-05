local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("invoicing.endpoint_rules")
local schemas = require("invoicing.schemas")
local sdk_defaults = require("sdk_defaults")

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
        input_schema = schemas.BatchGetInvoiceProfileInput,
        output_schema = schemas.BatchGetInvoiceProfileOutput,
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
        input_schema = schemas.CreateInvoiceUnitInput,
        output_schema = schemas.CreateInvoiceUnitOutput,
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
        input_schema = schemas.CreateProcurementPortalPreferenceInput,
        output_schema = schemas.CreateProcurementPortalPreferenceOutput,
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
        input_schema = schemas.DeleteInvoiceUnitInput,
        output_schema = schemas.DeleteInvoiceUnitOutput,
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
        input_schema = schemas.DeleteProcurementPortalPreferenceInput,
        output_schema = schemas.DeleteProcurementPortalPreferenceOutput,
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
        input_schema = schemas.GetInvoicePDFInput,
        output_schema = schemas.GetInvoicePDFOutput,
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
        input_schema = schemas.GetInvoiceUnitInput,
        output_schema = schemas.GetInvoiceUnitOutput,
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
        input_schema = schemas.GetProcurementPortalPreferenceInput,
        output_schema = schemas.GetProcurementPortalPreferenceOutput,
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
        input_schema = schemas.ListInvoiceSummariesInput,
        output_schema = schemas.ListInvoiceSummariesOutput,
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
        input_schema = schemas.ListInvoiceUnitsInput,
        output_schema = schemas.ListInvoiceUnitsOutput,
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
        input_schema = schemas.ListProcurementPortalPreferencesInput,
        output_schema = schemas.ListProcurementPortalPreferencesOutput,
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
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
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
        input_schema = schemas.PutProcurementPortalPreferenceInput,
        output_schema = schemas.PutProcurementPortalPreferenceOutput,
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
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
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
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
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
        input_schema = schemas.UpdateInvoiceUnitInput,
        output_schema = schemas.UpdateInvoiceUnitOutput,
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
        input_schema = schemas.UpdateProcurementPortalPreferenceStatusInput,
        output_schema = schemas.UpdateProcurementPortalPreferenceStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
