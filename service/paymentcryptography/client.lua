local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("paymentcryptography.endpoint_rules")
local schemas = require("paymentcryptography.schemas")
local sdk_defaults = require("sdk_defaults")

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
        input_schema = schemas.AddKeyReplicationRegionsInput,
        output_schema = schemas.AddKeyReplicationRegionsOutput,
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
        input_schema = schemas.AssociateMpaTeamInput,
        output_schema = schemas.AssociateMpaTeamOutput,
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

function Client:deleteKey(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKey",
        input_schema = schemas.DeleteKeyInput,
        output_schema = schemas.DeleteKeyOutput,
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
        input_schema = schemas.DeleteResourcePolicyInput,
        output_schema = schemas.DeleteResourcePolicyOutput,
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
        input_schema = schemas.DisableDefaultKeyReplicationRegionsInput,
        output_schema = schemas.DisableDefaultKeyReplicationRegionsOutput,
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
        input_schema = schemas.DisassociateMpaTeamInput,
        output_schema = schemas.DisassociateMpaTeamOutput,
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
        input_schema = schemas.EnableDefaultKeyReplicationRegionsInput,
        output_schema = schemas.EnableDefaultKeyReplicationRegionsOutput,
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
        input_schema = schemas.ExportKeyInput,
        output_schema = schemas.ExportKeyOutput,
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
        input_schema = schemas.GetAliasInput,
        output_schema = schemas.GetAliasOutput,
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
        input_schema = schemas.GetCertificateSigningRequestInput,
        output_schema = schemas.GetCertificateSigningRequestOutput,
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
        input_schema = schemas.GetDefaultKeyReplicationRegionsInput,
        output_schema = schemas.GetDefaultKeyReplicationRegionsOutput,
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
        input_schema = schemas.GetKeyInput,
        output_schema = schemas.GetKeyOutput,
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
        input_schema = schemas.GetMpaTeamAssociationInput,
        output_schema = schemas.GetMpaTeamAssociationOutput,
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
        input_schema = schemas.GetParametersForExportInput,
        output_schema = schemas.GetParametersForExportOutput,
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

function Client:getPublicKeyCertificate(input, options)
    return self:invokeOperation(input, {
        name = "GetPublicKeyCertificate",
        input_schema = schemas.GetPublicKeyCertificateInput,
        output_schema = schemas.GetPublicKeyCertificateOutput,
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
        input_schema = schemas.GetResourcePolicyInput,
        output_schema = schemas.GetResourcePolicyOutput,
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
        input_schema = schemas.ImportKeyInput,
        output_schema = schemas.ImportKeyOutput,
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

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = schemas.PutResourcePolicyInput,
        output_schema = schemas.PutResourcePolicyOutput,
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
        input_schema = schemas.RemoveKeyReplicationRegionsInput,
        output_schema = schemas.RemoveKeyReplicationRegionsOutput,
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
        input_schema = schemas.RestoreKeyInput,
        output_schema = schemas.RestoreKeyOutput,
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
        input_schema = schemas.StartKeyUsageInput,
        output_schema = schemas.StartKeyUsageOutput,
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
        input_schema = schemas.StopKeyUsageInput,
        output_schema = schemas.StopKeyUsageOutput,
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

return M
