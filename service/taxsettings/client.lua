local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("taxsettings.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("taxsettings.schemas")
local sdk_defaults = require("aws.sdk_defaults")

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
        input_schema = schemas.BatchDeleteTaxRegistrationInput,
        output_schema = schemas.BatchDeleteTaxRegistrationOutput,
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
        input_schema = schemas.BatchGetTaxExemptionsInput,
        output_schema = schemas.BatchGetTaxExemptionsOutput,
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
        input_schema = schemas.BatchPutTaxRegistrationInput,
        output_schema = schemas.BatchPutTaxRegistrationOutput,
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
        input_schema = schemas.DeleteSupplementalTaxRegistrationInput,
        output_schema = schemas.DeleteSupplementalTaxRegistrationOutput,
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
        input_schema = schemas.DeleteTaxRegistrationInput,
        output_schema = schemas.DeleteTaxRegistrationOutput,
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
        input_schema = schemas.GetTaxExemptionTypesInput,
        output_schema = schemas.GetTaxExemptionTypesOutput,
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
        input_schema = schemas.GetTaxInheritanceInput,
        output_schema = schemas.GetTaxInheritanceOutput,
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
        input_schema = schemas.GetTaxRegistrationInput,
        output_schema = schemas.GetTaxRegistrationOutput,
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
        input_schema = schemas.GetTaxRegistrationDocumentInput,
        output_schema = schemas.GetTaxRegistrationDocumentOutput,
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
        input_schema = schemas.ListSupplementalTaxRegistrationsInput,
        output_schema = schemas.ListSupplementalTaxRegistrationsOutput,
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
        input_schema = schemas.ListTaxExemptionsInput,
        output_schema = schemas.ListTaxExemptionsOutput,
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
        input_schema = schemas.ListTaxRegistrationsInput,
        output_schema = schemas.ListTaxRegistrationsOutput,
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
        input_schema = schemas.PutSupplementalTaxRegistrationInput,
        output_schema = schemas.PutSupplementalTaxRegistrationOutput,
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
        input_schema = schemas.PutTaxExemptionInput,
        output_schema = schemas.PutTaxExemptionOutput,
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
        input_schema = schemas.PutTaxInheritanceInput,
        output_schema = schemas.PutTaxInheritanceOutput,
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
        input_schema = schemas.PutTaxRegistrationInput,
        output_schema = schemas.PutTaxRegistrationOutput,
        http_method = "POST",
        http_path = "/PutTaxRegistration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
