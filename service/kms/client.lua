local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("kms.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("kms.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "TrentService"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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
        input_schema = types.CancelKeyDeletionInput,
        output_schema = types.CancelKeyDeletionOutput,
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
        input_schema = types.ConnectCustomKeyStoreInput,
        output_schema = types.ConnectCustomKeyStoreOutput,
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
        input_schema = types.CreateAliasInput,
        output_schema = types.CreateAliasOutput,
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
        input_schema = types.CreateCustomKeyStoreInput,
        output_schema = types.CreateCustomKeyStoreOutput,
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
        input_schema = types.CreateGrantInput,
        output_schema = types.CreateGrantOutput,
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
        input_schema = types.CreateKeyInput,
        output_schema = types.CreateKeyOutput,
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
        input_schema = types.DecryptInput,
        output_schema = types.DecryptOutput,
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
        input_schema = types.DeleteAliasInput,
        output_schema = types.DeleteAliasOutput,
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
        input_schema = types.DeleteCustomKeyStoreInput,
        output_schema = types.DeleteCustomKeyStoreOutput,
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
        input_schema = types.DeleteImportedKeyMaterialInput,
        output_schema = types.DeleteImportedKeyMaterialOutput,
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
        input_schema = types.DeriveSharedSecretInput,
        output_schema = types.DeriveSharedSecretOutput,
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
        input_schema = types.DescribeCustomKeyStoresInput,
        output_schema = types.DescribeCustomKeyStoresOutput,
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
        input_schema = types.DescribeKeyInput,
        output_schema = types.DescribeKeyOutput,
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
        input_schema = types.DisableKeyInput,
        output_schema = types.DisableKeyOutput,
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
        input_schema = types.DisableKeyRotationInput,
        output_schema = types.DisableKeyRotationOutput,
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
        input_schema = types.DisconnectCustomKeyStoreInput,
        output_schema = types.DisconnectCustomKeyStoreOutput,
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
        input_schema = types.EnableKeyInput,
        output_schema = types.EnableKeyOutput,
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
        input_schema = types.EnableKeyRotationInput,
        output_schema = types.EnableKeyRotationOutput,
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
        input_schema = types.EncryptInput,
        output_schema = types.EncryptOutput,
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
        input_schema = types.GenerateDataKeyInput,
        output_schema = types.GenerateDataKeyOutput,
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
        input_schema = types.GenerateDataKeyPairInput,
        output_schema = types.GenerateDataKeyPairOutput,
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
        input_schema = types.GenerateDataKeyPairWithoutPlaintextInput,
        output_schema = types.GenerateDataKeyPairWithoutPlaintextOutput,
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
        input_schema = types.GenerateDataKeyWithoutPlaintextInput,
        output_schema = types.GenerateDataKeyWithoutPlaintextOutput,
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
        input_schema = types.GenerateMacInput,
        output_schema = types.GenerateMacOutput,
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
        input_schema = types.GenerateRandomInput,
        output_schema = types.GenerateRandomOutput,
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
        input_schema = types.GetKeyLastUsageInput,
        output_schema = types.GetKeyLastUsageOutput,
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
        input_schema = types.GetKeyPolicyInput,
        output_schema = types.GetKeyPolicyOutput,
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
        input_schema = types.GetKeyRotationStatusInput,
        output_schema = types.GetKeyRotationStatusOutput,
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
        input_schema = types.GetParametersForImportInput,
        output_schema = types.GetParametersForImportOutput,
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
        input_schema = types.GetPublicKeyInput,
        output_schema = types.GetPublicKeyOutput,
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
        input_schema = types.ImportKeyMaterialInput,
        output_schema = types.ImportKeyMaterialOutput,
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
        input_schema = types.ListAliasesInput,
        output_schema = types.ListAliasesOutput,
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
        input_schema = types.ListGrantsInput,
        output_schema = types.ListGrantsOutput,
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
        input_schema = types.ListKeyPoliciesInput,
        output_schema = types.ListKeyPoliciesOutput,
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
        input_schema = types.ListKeyRotationsInput,
        output_schema = types.ListKeyRotationsOutput,
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
        input_schema = types.ListKeysInput,
        output_schema = types.ListKeysOutput,
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
        input_schema = types.ListResourceTagsInput,
        output_schema = types.ListResourceTagsOutput,
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
        input_schema = types.ListRetirableGrantsInput,
        output_schema = types.ListRetirableGrantsOutput,
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
        input_schema = types.PutKeyPolicyInput,
        output_schema = types.PutKeyPolicyOutput,
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
        input_schema = types.ReEncryptInput,
        output_schema = types.ReEncryptOutput,
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
        input_schema = types.ReplicateKeyInput,
        output_schema = types.ReplicateKeyOutput,
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
        input_schema = types.RetireGrantInput,
        output_schema = types.RetireGrantOutput,
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
        input_schema = types.RevokeGrantInput,
        output_schema = types.RevokeGrantOutput,
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
        input_schema = types.RotateKeyOnDemandInput,
        output_schema = types.RotateKeyOnDemandOutput,
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
        input_schema = types.ScheduleKeyDeletionInput,
        output_schema = types.ScheduleKeyDeletionOutput,
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
        input_schema = types.SignInput,
        output_schema = types.SignOutput,
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

function Client:updateAlias(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAlias",
        input_schema = types.UpdateAliasInput,
        output_schema = types.UpdateAliasOutput,
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
        input_schema = types.UpdateCustomKeyStoreInput,
        output_schema = types.UpdateCustomKeyStoreOutput,
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
        input_schema = types.UpdateKeyDescriptionInput,
        output_schema = types.UpdateKeyDescriptionOutput,
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
        input_schema = types.UpdatePrimaryRegionInput,
        output_schema = types.UpdatePrimaryRegionOutput,
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
        input_schema = types.VerifyInput,
        output_schema = types.VerifyOutput,
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
        input_schema = types.VerifyMacInput,
        output_schema = types.VerifyMacOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
