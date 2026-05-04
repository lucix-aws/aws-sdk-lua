local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("taxsettings.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("taxsettings.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "TaxSettings"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "tax", signing_region = cfg.region } }
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

function Client:batchDeleteTaxRegistration(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteTaxRegistration",
        input_schema = types.BatchDeleteTaxRegistrationInput,
        output_schema = types.BatchDeleteTaxRegistrationOutput,
        http_method = "POST",
        http_path = "/BatchDeleteTaxRegistration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetTaxExemptions(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetTaxExemptions",
        input_schema = types.BatchGetTaxExemptionsInput,
        output_schema = types.BatchGetTaxExemptionsOutput,
        http_method = "POST",
        http_path = "/BatchGetTaxExemptions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchPutTaxRegistration(input, options)
    return self:invokeOperation(input, {
        name = "BatchPutTaxRegistration",
        input_schema = types.BatchPutTaxRegistrationInput,
        output_schema = types.BatchPutTaxRegistrationOutput,
        http_method = "POST",
        http_path = "/BatchPutTaxRegistration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSupplementalTaxRegistration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSupplementalTaxRegistration",
        input_schema = types.DeleteSupplementalTaxRegistrationInput,
        output_schema = types.DeleteSupplementalTaxRegistrationOutput,
        http_method = "POST",
        http_path = "/DeleteSupplementalTaxRegistration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTaxRegistration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTaxRegistration",
        input_schema = types.DeleteTaxRegistrationInput,
        output_schema = types.DeleteTaxRegistrationOutput,
        http_method = "POST",
        http_path = "/DeleteTaxRegistration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTaxExemptionTypes(input, options)
    return self:invokeOperation(input, {
        name = "GetTaxExemptionTypes",
        input_schema = types.GetTaxExemptionTypesInput,
        output_schema = types.GetTaxExemptionTypesOutput,
        http_method = "POST",
        http_path = "/GetTaxExemptionTypes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTaxInheritance(input, options)
    return self:invokeOperation(input, {
        name = "GetTaxInheritance",
        input_schema = types.GetTaxInheritanceInput,
        output_schema = types.GetTaxInheritanceOutput,
        http_method = "POST",
        http_path = "/GetTaxInheritance",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTaxRegistration(input, options)
    return self:invokeOperation(input, {
        name = "GetTaxRegistration",
        input_schema = types.GetTaxRegistrationInput,
        output_schema = types.GetTaxRegistrationOutput,
        http_method = "POST",
        http_path = "/GetTaxRegistration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTaxRegistrationDocument(input, options)
    return self:invokeOperation(input, {
        name = "GetTaxRegistrationDocument",
        input_schema = types.GetTaxRegistrationDocumentInput,
        output_schema = types.GetTaxRegistrationDocumentOutput,
        http_method = "POST",
        http_path = "/GetTaxRegistrationDocument",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSupplementalTaxRegistrations(input, options)
    return self:invokeOperation(input, {
        name = "ListSupplementalTaxRegistrations",
        input_schema = types.ListSupplementalTaxRegistrationsInput,
        output_schema = types.ListSupplementalTaxRegistrationsOutput,
        http_method = "POST",
        http_path = "/ListSupplementalTaxRegistrations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTaxExemptions(input, options)
    return self:invokeOperation(input, {
        name = "ListTaxExemptions",
        input_schema = types.ListTaxExemptionsInput,
        output_schema = types.ListTaxExemptionsOutput,
        http_method = "POST",
        http_path = "/ListTaxExemptions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTaxRegistrations(input, options)
    return self:invokeOperation(input, {
        name = "ListTaxRegistrations",
        input_schema = types.ListTaxRegistrationsInput,
        output_schema = types.ListTaxRegistrationsOutput,
        http_method = "POST",
        http_path = "/ListTaxRegistrations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putSupplementalTaxRegistration(input, options)
    return self:invokeOperation(input, {
        name = "PutSupplementalTaxRegistration",
        input_schema = types.PutSupplementalTaxRegistrationInput,
        output_schema = types.PutSupplementalTaxRegistrationOutput,
        http_method = "POST",
        http_path = "/PutSupplementalTaxRegistration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putTaxExemption(input, options)
    return self:invokeOperation(input, {
        name = "PutTaxExemption",
        input_schema = types.PutTaxExemptionInput,
        output_schema = types.PutTaxExemptionOutput,
        http_method = "POST",
        http_path = "/PutTaxExemption",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putTaxInheritance(input, options)
    return self:invokeOperation(input, {
        name = "PutTaxInheritance",
        input_schema = types.PutTaxInheritanceInput,
        output_schema = types.PutTaxInheritanceOutput,
        http_method = "POST",
        http_path = "/PutTaxInheritance",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putTaxRegistration(input, options)
    return self:invokeOperation(input, {
        name = "PutTaxRegistration",
        input_schema = types.PutTaxRegistrationInput,
        output_schema = types.PutTaxRegistrationOutput,
        http_method = "POST",
        http_path = "/PutTaxRegistration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
