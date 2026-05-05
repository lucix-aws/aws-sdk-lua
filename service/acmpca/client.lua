local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("acmpca.endpoint_rules")
local schemas = require("acmpca.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ACMPrivateCA"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "acm-pca", signing_region = cfg.region } }
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

function Client:createCertificateAuthority(input, options)
    return self:invokeOperation(input, {
        name = "CreateCertificateAuthority",
        input_schema = schemas.CreateCertificateAuthorityInput,
        output_schema = schemas.CreateCertificateAuthorityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCertificateAuthorityAuditReport(input, options)
    return self:invokeOperation(input, {
        name = "CreateCertificateAuthorityAuditReport",
        input_schema = schemas.CreateCertificateAuthorityAuditReportInput,
        output_schema = schemas.CreateCertificateAuthorityAuditReportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPermission(input, options)
    return self:invokeOperation(input, {
        name = "CreatePermission",
        input_schema = schemas.CreatePermissionInput,
        output_schema = schemas.CreatePermissionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCertificateAuthority(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCertificateAuthority",
        input_schema = schemas.DeleteCertificateAuthorityInput,
        output_schema = schemas.DeleteCertificateAuthorityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePermission(input, options)
    return self:invokeOperation(input, {
        name = "DeletePermission",
        input_schema = schemas.DeletePermissionInput,
        output_schema = schemas.DeletePermissionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeletePolicy",
        input_schema = schemas.DeletePolicyInput,
        output_schema = schemas.DeletePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCertificateAuthority(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCertificateAuthority",
        input_schema = schemas.DescribeCertificateAuthorityInput,
        output_schema = schemas.DescribeCertificateAuthorityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCertificateAuthorityAuditReport(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCertificateAuthorityAuditReport",
        input_schema = schemas.DescribeCertificateAuthorityAuditReportInput,
        output_schema = schemas.DescribeCertificateAuthorityAuditReportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCertificate(input, options)
    return self:invokeOperation(input, {
        name = "GetCertificate",
        input_schema = schemas.GetCertificateInput,
        output_schema = schemas.GetCertificateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCertificateAuthorityCertificate(input, options)
    return self:invokeOperation(input, {
        name = "GetCertificateAuthorityCertificate",
        input_schema = schemas.GetCertificateAuthorityCertificateInput,
        output_schema = schemas.GetCertificateAuthorityCertificateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCertificateAuthorityCsr(input, options)
    return self:invokeOperation(input, {
        name = "GetCertificateAuthorityCsr",
        input_schema = schemas.GetCertificateAuthorityCsrInput,
        output_schema = schemas.GetCertificateAuthorityCsrOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetPolicy",
        input_schema = schemas.GetPolicyInput,
        output_schema = schemas.GetPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importCertificateAuthorityCertificate(input, options)
    return self:invokeOperation(input, {
        name = "ImportCertificateAuthorityCertificate",
        input_schema = schemas.ImportCertificateAuthorityCertificateInput,
        output_schema = schemas.ImportCertificateAuthorityCertificateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:issueCertificate(input, options)
    return self:invokeOperation(input, {
        name = "IssueCertificate",
        input_schema = schemas.IssueCertificateInput,
        output_schema = schemas.IssueCertificateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCertificateAuthorities(input, options)
    return self:invokeOperation(input, {
        name = "ListCertificateAuthorities",
        input_schema = schemas.ListCertificateAuthoritiesInput,
        output_schema = schemas.ListCertificateAuthoritiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPermissions(input, options)
    return self:invokeOperation(input, {
        name = "ListPermissions",
        input_schema = schemas.ListPermissionsInput,
        output_schema = schemas.ListPermissionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTags(input, options)
    return self:invokeOperation(input, {
        name = "ListTags",
        input_schema = schemas.ListTagsInput,
        output_schema = schemas.ListTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutPolicy",
        input_schema = schemas.PutPolicyInput,
        output_schema = schemas.PutPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restoreCertificateAuthority(input, options)
    return self:invokeOperation(input, {
        name = "RestoreCertificateAuthority",
        input_schema = schemas.RestoreCertificateAuthorityInput,
        output_schema = schemas.RestoreCertificateAuthorityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:revokeCertificate(input, options)
    return self:invokeOperation(input, {
        name = "RevokeCertificate",
        input_schema = schemas.RevokeCertificateInput,
        output_schema = schemas.RevokeCertificateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagCertificateAuthority(input, options)
    return self:invokeOperation(input, {
        name = "TagCertificateAuthority",
        input_schema = schemas.TagCertificateAuthorityInput,
        output_schema = schemas.TagCertificateAuthorityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagCertificateAuthority(input, options)
    return self:invokeOperation(input, {
        name = "UntagCertificateAuthority",
        input_schema = schemas.UntagCertificateAuthorityInput,
        output_schema = schemas.UntagCertificateAuthorityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCertificateAuthority(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCertificateAuthority",
        input_schema = schemas.UpdateCertificateAuthorityInput,
        output_schema = schemas.UpdateCertificateAuthorityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
