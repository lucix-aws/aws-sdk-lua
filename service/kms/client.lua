local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("kms.endpoint_rules")
local schemas = require("kms.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "TrentService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "kms", signing_region = cfg.region } }
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

function Client:cancelKeyDeletion(input, options)
    return self:invokeOperation(input, {
        name = "CancelKeyDeletion",
        input_schema = schemas.CancelKeyDeletionInput,
        output_schema = schemas.CancelKeyDeletionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:connectCustomKeyStore(input, options)
    return self:invokeOperation(input, {
        name = "ConnectCustomKeyStore",
        input_schema = schemas.ConnectCustomKeyStoreInput,
        output_schema = schemas.ConnectCustomKeyStoreOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAlias(input, options)
    return self:invokeOperation(input, {
        name = "CreateAlias",
        input_schema = schemas.CreateAliasInput,
        output_schema = schemas.CreateAliasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCustomKeyStore(input, options)
    return self:invokeOperation(input, {
        name = "CreateCustomKeyStore",
        input_schema = schemas.CreateCustomKeyStoreInput,
        output_schema = schemas.CreateCustomKeyStoreOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGrant(input, options)
    return self:invokeOperation(input, {
        name = "CreateGrant",
        input_schema = schemas.CreateGrantInput,
        output_schema = schemas.CreateGrantOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createKey(input, options)
    return self:invokeOperation(input, {
        name = "CreateKey",
        input_schema = schemas.CreateKeyInput,
        output_schema = schemas.CreateKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:decrypt(input, options)
    return self:invokeOperation(input, {
        name = "Decrypt",
        input_schema = schemas.DecryptInput,
        output_schema = schemas.DecryptOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAlias(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAlias",
        input_schema = schemas.DeleteAliasInput,
        output_schema = schemas.DeleteAliasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCustomKeyStore(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCustomKeyStore",
        input_schema = schemas.DeleteCustomKeyStoreInput,
        output_schema = schemas.DeleteCustomKeyStoreOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteImportedKeyMaterial(input, options)
    return self:invokeOperation(input, {
        name = "DeleteImportedKeyMaterial",
        input_schema = schemas.DeleteImportedKeyMaterialInput,
        output_schema = schemas.DeleteImportedKeyMaterialOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deriveSharedSecret(input, options)
    return self:invokeOperation(input, {
        name = "DeriveSharedSecret",
        input_schema = schemas.DeriveSharedSecretInput,
        output_schema = schemas.DeriveSharedSecretOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCustomKeyStores(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCustomKeyStores",
        input_schema = schemas.DescribeCustomKeyStoresInput,
        output_schema = schemas.DescribeCustomKeyStoresOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeKey(input, options)
    return self:invokeOperation(input, {
        name = "DescribeKey",
        input_schema = schemas.DescribeKeyInput,
        output_schema = schemas.DescribeKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableKey(input, options)
    return self:invokeOperation(input, {
        name = "DisableKey",
        input_schema = schemas.DisableKeyInput,
        output_schema = schemas.DisableKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableKeyRotation(input, options)
    return self:invokeOperation(input, {
        name = "DisableKeyRotation",
        input_schema = schemas.DisableKeyRotationInput,
        output_schema = schemas.DisableKeyRotationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disconnectCustomKeyStore(input, options)
    return self:invokeOperation(input, {
        name = "DisconnectCustomKeyStore",
        input_schema = schemas.DisconnectCustomKeyStoreInput,
        output_schema = schemas.DisconnectCustomKeyStoreOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableKey(input, options)
    return self:invokeOperation(input, {
        name = "EnableKey",
        input_schema = schemas.EnableKeyInput,
        output_schema = schemas.EnableKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableKeyRotation(input, options)
    return self:invokeOperation(input, {
        name = "EnableKeyRotation",
        input_schema = schemas.EnableKeyRotationInput,
        output_schema = schemas.EnableKeyRotationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:encrypt(input, options)
    return self:invokeOperation(input, {
        name = "Encrypt",
        input_schema = schemas.EncryptInput,
        output_schema = schemas.EncryptOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:generateDataKey(input, options)
    return self:invokeOperation(input, {
        name = "GenerateDataKey",
        input_schema = schemas.GenerateDataKeyInput,
        output_schema = schemas.GenerateDataKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:generateDataKeyPair(input, options)
    return self:invokeOperation(input, {
        name = "GenerateDataKeyPair",
        input_schema = schemas.GenerateDataKeyPairInput,
        output_schema = schemas.GenerateDataKeyPairOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:generateDataKeyPairWithoutPlaintext(input, options)
    return self:invokeOperation(input, {
        name = "GenerateDataKeyPairWithoutPlaintext",
        input_schema = schemas.GenerateDataKeyPairWithoutPlaintextInput,
        output_schema = schemas.GenerateDataKeyPairWithoutPlaintextOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:generateDataKeyWithoutPlaintext(input, options)
    return self:invokeOperation(input, {
        name = "GenerateDataKeyWithoutPlaintext",
        input_schema = schemas.GenerateDataKeyWithoutPlaintextInput,
        output_schema = schemas.GenerateDataKeyWithoutPlaintextOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:generateRandom(input, options)
    return self:invokeOperation(input, {
        name = "GenerateRandom",
        input_schema = schemas.GenerateRandomInput,
        output_schema = schemas.GenerateRandomOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getKeyLastUsage(input, options)
    return self:invokeOperation(input, {
        name = "GetKeyLastUsage",
        input_schema = schemas.GetKeyLastUsageInput,
        output_schema = schemas.GetKeyLastUsageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getKeyPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetKeyPolicy",
        input_schema = schemas.GetKeyPolicyInput,
        output_schema = schemas.GetKeyPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getKeyRotationStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetKeyRotationStatus",
        input_schema = schemas.GetKeyRotationStatusInput,
        output_schema = schemas.GetKeyRotationStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getParametersForImport(input, options)
    return self:invokeOperation(input, {
        name = "GetParametersForImport",
        input_schema = schemas.GetParametersForImportInput,
        output_schema = schemas.GetParametersForImportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPublicKey(input, options)
    return self:invokeOperation(input, {
        name = "GetPublicKey",
        input_schema = schemas.GetPublicKeyInput,
        output_schema = schemas.GetPublicKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importKeyMaterial(input, options)
    return self:invokeOperation(input, {
        name = "ImportKeyMaterial",
        input_schema = schemas.ImportKeyMaterialInput,
        output_schema = schemas.ImportKeyMaterialOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAliases(input, options)
    return self:invokeOperation(input, {
        name = "ListAliases",
        input_schema = schemas.ListAliasesInput,
        output_schema = schemas.ListAliasesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGrants(input, options)
    return self:invokeOperation(input, {
        name = "ListGrants",
        input_schema = schemas.ListGrantsInput,
        output_schema = schemas.ListGrantsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listKeyPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListKeyPolicies",
        input_schema = schemas.ListKeyPoliciesInput,
        output_schema = schemas.ListKeyPoliciesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listKeyRotations(input, options)
    return self:invokeOperation(input, {
        name = "ListKeyRotations",
        input_schema = schemas.ListKeyRotationsInput,
        output_schema = schemas.ListKeyRotationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listKeys(input, options)
    return self:invokeOperation(input, {
        name = "ListKeys",
        input_schema = schemas.ListKeysInput,
        output_schema = schemas.ListKeysOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResourceTags(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceTags",
        input_schema = schemas.ListResourceTagsInput,
        output_schema = schemas.ListResourceTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRetirableGrants(input, options)
    return self:invokeOperation(input, {
        name = "ListRetirableGrants",
        input_schema = schemas.ListRetirableGrantsInput,
        output_schema = schemas.ListRetirableGrantsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putKeyPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutKeyPolicy",
        input_schema = schemas.PutKeyPolicyInput,
        output_schema = schemas.PutKeyPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:reEncrypt(input, options)
    return self:invokeOperation(input, {
        name = "ReEncrypt",
        input_schema = schemas.ReEncryptInput,
        output_schema = schemas.ReEncryptOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:replicateKey(input, options)
    return self:invokeOperation(input, {
        name = "ReplicateKey",
        input_schema = schemas.ReplicateKeyInput,
        output_schema = schemas.ReplicateKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:retireGrant(input, options)
    return self:invokeOperation(input, {
        name = "RetireGrant",
        input_schema = schemas.RetireGrantInput,
        output_schema = schemas.RetireGrantOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:revokeGrant(input, options)
    return self:invokeOperation(input, {
        name = "RevokeGrant",
        input_schema = schemas.RevokeGrantInput,
        output_schema = schemas.RevokeGrantOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rotateKeyOnDemand(input, options)
    return self:invokeOperation(input, {
        name = "RotateKeyOnDemand",
        input_schema = schemas.RotateKeyOnDemandInput,
        output_schema = schemas.RotateKeyOnDemandOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:scheduleKeyDeletion(input, options)
    return self:invokeOperation(input, {
        name = "ScheduleKeyDeletion",
        input_schema = schemas.ScheduleKeyDeletionInput,
        output_schema = schemas.ScheduleKeyDeletionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sign(input, options)
    return self:invokeOperation(input, {
        name = "Sign",
        input_schema = schemas.SignInput,
        output_schema = schemas.SignOutput,
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

function Client:updateAlias(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAlias",
        input_schema = schemas.UpdateAliasInput,
        output_schema = schemas.UpdateAliasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCustomKeyStore(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCustomKeyStore",
        input_schema = schemas.UpdateCustomKeyStoreInput,
        output_schema = schemas.UpdateCustomKeyStoreOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateKeyDescription(input, options)
    return self:invokeOperation(input, {
        name = "UpdateKeyDescription",
        input_schema = schemas.UpdateKeyDescriptionInput,
        output_schema = schemas.UpdateKeyDescriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePrimaryRegion(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePrimaryRegion",
        input_schema = schemas.UpdatePrimaryRegionInput,
        output_schema = schemas.UpdatePrimaryRegionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:verify(input, options)
    return self:invokeOperation(input, {
        name = "Verify",
        input_schema = schemas.VerifyInput,
        output_schema = schemas.VerifyOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
