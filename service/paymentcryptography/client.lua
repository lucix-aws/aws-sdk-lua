local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("paymentcryptography.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("paymentcryptography.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "PaymentCryptographyControlPlane"
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

function Client:addKeyReplicationRegions(input, options)
    return self:invokeOperation(input, {
        name = "AddKeyReplicationRegions",
        input_schema = types.AddKeyReplicationRegionsInput,
        output_schema = types.AddKeyReplicationRegionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateMpaTeam(input, options)
    return self:invokeOperation(input, {
        name = "AssociateMpaTeam",
        input_schema = types.AssociateMpaTeamInput,
        output_schema = types.AssociateMpaTeamOutput,
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

function Client:deleteKey(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKey",
        input_schema = types.DeleteKeyInput,
        output_schema = types.DeleteKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = types.DeleteResourcePolicyInput,
        output_schema = types.DeleteResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableDefaultKeyReplicationRegions(input, options)
    return self:invokeOperation(input, {
        name = "DisableDefaultKeyReplicationRegions",
        input_schema = types.DisableDefaultKeyReplicationRegionsInput,
        output_schema = types.DisableDefaultKeyReplicationRegionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateMpaTeam(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateMpaTeam",
        input_schema = types.DisassociateMpaTeamInput,
        output_schema = types.DisassociateMpaTeamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableDefaultKeyReplicationRegions(input, options)
    return self:invokeOperation(input, {
        name = "EnableDefaultKeyReplicationRegions",
        input_schema = types.EnableDefaultKeyReplicationRegionsInput,
        output_schema = types.EnableDefaultKeyReplicationRegionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:exportKey(input, options)
    return self:invokeOperation(input, {
        name = "ExportKey",
        input_schema = types.ExportKeyInput,
        output_schema = types.ExportKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAlias(input, options)
    return self:invokeOperation(input, {
        name = "GetAlias",
        input_schema = types.GetAliasInput,
        output_schema = types.GetAliasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCertificateSigningRequest(input, options)
    return self:invokeOperation(input, {
        name = "GetCertificateSigningRequest",
        input_schema = types.GetCertificateSigningRequestInput,
        output_schema = types.GetCertificateSigningRequestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDefaultKeyReplicationRegions(input, options)
    return self:invokeOperation(input, {
        name = "GetDefaultKeyReplicationRegions",
        input_schema = types.GetDefaultKeyReplicationRegionsInput,
        output_schema = types.GetDefaultKeyReplicationRegionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getKey(input, options)
    return self:invokeOperation(input, {
        name = "GetKey",
        input_schema = types.GetKeyInput,
        output_schema = types.GetKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMpaTeamAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetMpaTeamAssociation",
        input_schema = types.GetMpaTeamAssociationInput,
        output_schema = types.GetMpaTeamAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getParametersForExport(input, options)
    return self:invokeOperation(input, {
        name = "GetParametersForExport",
        input_schema = types.GetParametersForExportInput,
        output_schema = types.GetParametersForExportOutput,
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

function Client:getPublicKeyCertificate(input, options)
    return self:invokeOperation(input, {
        name = "GetPublicKeyCertificate",
        input_schema = types.GetPublicKeyCertificateInput,
        output_schema = types.GetPublicKeyCertificateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = types.GetResourcePolicyInput,
        output_schema = types.GetResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importKey(input, options)
    return self:invokeOperation(input, {
        name = "ImportKey",
        input_schema = types.ImportKeyInput,
        output_schema = types.ImportKeyOutput,
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

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = types.PutResourcePolicyInput,
        output_schema = types.PutResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeKeyReplicationRegions(input, options)
    return self:invokeOperation(input, {
        name = "RemoveKeyReplicationRegions",
        input_schema = types.RemoveKeyReplicationRegionsInput,
        output_schema = types.RemoveKeyReplicationRegionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restoreKey(input, options)
    return self:invokeOperation(input, {
        name = "RestoreKey",
        input_schema = types.RestoreKeyInput,
        output_schema = types.RestoreKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startKeyUsage(input, options)
    return self:invokeOperation(input, {
        name = "StartKeyUsage",
        input_schema = types.StartKeyUsageInput,
        output_schema = types.StartKeyUsageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopKeyUsage(input, options)
    return self:invokeOperation(input, {
        name = "StopKeyUsage",
        input_schema = types.StopKeyUsageInput,
        output_schema = types.StopKeyUsageOutput,
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

return M
