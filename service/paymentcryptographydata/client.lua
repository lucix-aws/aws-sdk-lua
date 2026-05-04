local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("paymentcryptographydata.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("paymentcryptographydata.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "PaymentCryptographyDataPlane"
    cfg.signing_name = "payment-cryptography"
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

function Client:decryptData(input, options)
    return self:invokeOperation(input, {
        name = "DecryptData",
        input_schema = types.DecryptDataInput,
        output_schema = types.DecryptDataOutput,
        http_method = "POST",
        http_path = "/keys/{KeyIdentifier}/decrypt",
    }, options)
end

function Client:encryptData(input, options)
    return self:invokeOperation(input, {
        name = "EncryptData",
        input_schema = types.EncryptDataInput,
        output_schema = types.EncryptDataOutput,
        http_method = "POST",
        http_path = "/keys/{KeyIdentifier}/encrypt",
    }, options)
end

function Client:generateAs2805KekValidation(input, options)
    return self:invokeOperation(input, {
        name = "GenerateAs2805KekValidation",
        input_schema = types.GenerateAs2805KekValidationInput,
        output_schema = types.GenerateAs2805KekValidationOutput,
        http_method = "POST",
        http_path = "/as2805kekvalidation/generate",
    }, options)
end

function Client:generateCardValidationData(input, options)
    return self:invokeOperation(input, {
        name = "GenerateCardValidationData",
        input_schema = types.GenerateCardValidationDataInput,
        output_schema = types.GenerateCardValidationDataOutput,
        http_method = "POST",
        http_path = "/cardvalidationdata/generate",
    }, options)
end

function Client:generateMac(input, options)
    return self:invokeOperation(input, {
        name = "GenerateMac",
        input_schema = types.GenerateMacInput,
        output_schema = types.GenerateMacOutput,
        http_method = "POST",
        http_path = "/mac/generate",
    }, options)
end

function Client:generateMacEmvPinChange(input, options)
    return self:invokeOperation(input, {
        name = "GenerateMacEmvPinChange",
        input_schema = types.GenerateMacEmvPinChangeInput,
        output_schema = types.GenerateMacEmvPinChangeOutput,
        http_method = "POST",
        http_path = "/macemvpinchange/generate",
    }, options)
end

function Client:generatePinData(input, options)
    return self:invokeOperation(input, {
        name = "GeneratePinData",
        input_schema = types.GeneratePinDataInput,
        output_schema = types.GeneratePinDataOutput,
        http_method = "POST",
        http_path = "/pindata/generate",
    }, options)
end

function Client:reEncryptData(input, options)
    return self:invokeOperation(input, {
        name = "ReEncryptData",
        input_schema = types.ReEncryptDataInput,
        output_schema = types.ReEncryptDataOutput,
        http_method = "POST",
        http_path = "/keys/{IncomingKeyIdentifier}/reencrypt",
    }, options)
end

function Client:translateKeyMaterial(input, options)
    return self:invokeOperation(input, {
        name = "TranslateKeyMaterial",
        input_schema = types.TranslateKeyMaterialInput,
        output_schema = types.TranslateKeyMaterialOutput,
        http_method = "POST",
        http_path = "/keymaterial/translate",
    }, options)
end

function Client:translatePinData(input, options)
    return self:invokeOperation(input, {
        name = "TranslatePinData",
        input_schema = types.TranslatePinDataInput,
        output_schema = types.TranslatePinDataOutput,
        http_method = "POST",
        http_path = "/pindata/translate",
    }, options)
end

function Client:verifyAuthRequestCryptogram(input, options)
    return self:invokeOperation(input, {
        name = "VerifyAuthRequestCryptogram",
        input_schema = types.VerifyAuthRequestCryptogramInput,
        output_schema = types.VerifyAuthRequestCryptogramOutput,
        http_method = "POST",
        http_path = "/cryptogram/verify",
    }, options)
end

function Client:verifyCardValidationData(input, options)
    return self:invokeOperation(input, {
        name = "VerifyCardValidationData",
        input_schema = types.VerifyCardValidationDataInput,
        output_schema = types.VerifyCardValidationDataOutput,
        http_method = "POST",
        http_path = "/cardvalidationdata/verify",
    }, options)
end

function Client:verifyMac(input, options)
    return self:invokeOperation(input, {
        name = "VerifyMac",
        input_schema = types.VerifyMacInput,
        output_schema = types.VerifyMacOutput,
        http_method = "POST",
        http_path = "/mac/verify",
    }, options)
end

function Client:verifyPinData(input, options)
    return self:invokeOperation(input, {
        name = "VerifyPinData",
        input_schema = types.VerifyPinDataInput,
        output_schema = types.VerifyPinDataOutput,
        http_method = "POST",
        http_path = "/pindata/verify",
    }, options)
end

return M
