local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("paymentcryptographydata.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("paymentcryptographydata.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "PaymentCryptographyDataPlane"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "payment-cryptography", signing_region = cfg.region } }
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

function Client:decryptData(input, options)
    return self:invokeOperation(input, {
        name = "DecryptData",
        input_schema = schemas.DecryptDataInput,
        output_schema = schemas.DecryptDataOutput,
        http_method = "POST",
        http_path = "/keys/{KeyIdentifier}/decrypt",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:encryptData(input, options)
    return self:invokeOperation(input, {
        name = "EncryptData",
        input_schema = schemas.EncryptDataInput,
        output_schema = schemas.EncryptDataOutput,
        http_method = "POST",
        http_path = "/keys/{KeyIdentifier}/encrypt",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:generateAs2805KekValidation(input, options)
    return self:invokeOperation(input, {
        name = "GenerateAs2805KekValidation",
        input_schema = schemas.GenerateAs2805KekValidationInput,
        output_schema = schemas.GenerateAs2805KekValidationOutput,
        http_method = "POST",
        http_path = "/as2805kekvalidation/generate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:generateCardValidationData(input, options)
    return self:invokeOperation(input, {
        name = "GenerateCardValidationData",
        input_schema = schemas.GenerateCardValidationDataInput,
        output_schema = schemas.GenerateCardValidationDataOutput,
        http_method = "POST",
        http_path = "/cardvalidationdata/generate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:generateMac(input, options)
    return self:invokeOperation(input, {
        name = "GenerateMac",
        input_schema = schemas.GenerateMacInput,
        output_schema = schemas.GenerateMacOutput,
        http_method = "POST",
        http_path = "/mac/generate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:generateMacEmvPinChange(input, options)
    return self:invokeOperation(input, {
        name = "GenerateMacEmvPinChange",
        input_schema = schemas.GenerateMacEmvPinChangeInput,
        output_schema = schemas.GenerateMacEmvPinChangeOutput,
        http_method = "POST",
        http_path = "/macemvpinchange/generate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:generatePinData(input, options)
    return self:invokeOperation(input, {
        name = "GeneratePinData",
        input_schema = schemas.GeneratePinDataInput,
        output_schema = schemas.GeneratePinDataOutput,
        http_method = "POST",
        http_path = "/pindata/generate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:reEncryptData(input, options)
    return self:invokeOperation(input, {
        name = "ReEncryptData",
        input_schema = schemas.ReEncryptDataInput,
        output_schema = schemas.ReEncryptDataOutput,
        http_method = "POST",
        http_path = "/keys/{IncomingKeyIdentifier}/reencrypt",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:translateKeyMaterial(input, options)
    return self:invokeOperation(input, {
        name = "TranslateKeyMaterial",
        input_schema = schemas.TranslateKeyMaterialInput,
        output_schema = schemas.TranslateKeyMaterialOutput,
        http_method = "POST",
        http_path = "/keymaterial/translate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:translatePinData(input, options)
    return self:invokeOperation(input, {
        name = "TranslatePinData",
        input_schema = schemas.TranslatePinDataInput,
        output_schema = schemas.TranslatePinDataOutput,
        http_method = "POST",
        http_path = "/pindata/translate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:verifyAuthRequestCryptogram(input, options)
    return self:invokeOperation(input, {
        name = "VerifyAuthRequestCryptogram",
        input_schema = schemas.VerifyAuthRequestCryptogramInput,
        output_schema = schemas.VerifyAuthRequestCryptogramOutput,
        http_method = "POST",
        http_path = "/cryptogram/verify",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:verifyCardValidationData(input, options)
    return self:invokeOperation(input, {
        name = "VerifyCardValidationData",
        input_schema = schemas.VerifyCardValidationDataInput,
        output_schema = schemas.VerifyCardValidationDataOutput,
        http_method = "POST",
        http_path = "/cardvalidationdata/verify",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:verifyMac(input, options)
    return self:invokeOperation(input, {
        name = "VerifyMac",
        input_schema = schemas.VerifyMacInput,
        output_schema = schemas.VerifyMacOutput,
        http_method = "POST",
        http_path = "/mac/verify",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:verifyPinData(input, options)
    return self:invokeOperation(input, {
        name = "VerifyPinData",
        input_schema = schemas.VerifyPinDataInput,
        output_schema = schemas.VerifyPinDataOutput,
        http_method = "POST",
        http_path = "/pindata/verify",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
