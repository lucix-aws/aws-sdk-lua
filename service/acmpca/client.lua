local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("acmpca.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("acmpca.types")

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
        input_schema = types.CreateCertificateAuthorityInput,
        output_schema = types.CreateCertificateAuthorityOutput,
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
        input_schema = types.CreateCertificateAuthorityAuditReportInput,
        output_schema = types.CreateCertificateAuthorityAuditReportOutput,
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
        input_schema = types.CreatePermissionInput,
        output_schema = types.CreatePermissionOutput,
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
        input_schema = types.DeleteCertificateAuthorityInput,
        output_schema = types.DeleteCertificateAuthorityOutput,
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
        input_schema = types.DeletePermissionInput,
        output_schema = types.DeletePermissionOutput,
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
        input_schema = types.DeletePolicyInput,
        output_schema = types.DeletePolicyOutput,
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
        input_schema = types.DescribeCertificateAuthorityInput,
        output_schema = types.DescribeCertificateAuthorityOutput,
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
        input_schema = types.DescribeCertificateAuthorityAuditReportInput,
        output_schema = types.DescribeCertificateAuthorityAuditReportOutput,
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
        input_schema = types.GetCertificateInput,
        output_schema = types.GetCertificateOutput,
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
        input_schema = types.GetCertificateAuthorityCertificateInput,
        output_schema = types.GetCertificateAuthorityCertificateOutput,
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
        input_schema = types.GetCertificateAuthorityCsrInput,
        output_schema = types.GetCertificateAuthorityCsrOutput,
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
        input_schema = types.GetPolicyInput,
        output_schema = types.GetPolicyOutput,
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
        input_schema = types.ImportCertificateAuthorityCertificateInput,
        output_schema = types.ImportCertificateAuthorityCertificateOutput,
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
        input_schema = types.IssueCertificateInput,
        output_schema = types.IssueCertificateOutput,
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
        input_schema = types.ListCertificateAuthoritiesInput,
        output_schema = types.ListCertificateAuthoritiesOutput,
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
        input_schema = types.ListPermissionsInput,
        output_schema = types.ListPermissionsOutput,
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
        input_schema = types.ListTagsInput,
        output_schema = types.ListTagsOutput,
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
        input_schema = types.PutPolicyInput,
        output_schema = types.PutPolicyOutput,
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
        input_schema = types.RestoreCertificateAuthorityInput,
        output_schema = types.RestoreCertificateAuthorityOutput,
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
        input_schema = types.RevokeCertificateInput,
        output_schema = types.RevokeCertificateOutput,
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
        input_schema = types.TagCertificateAuthorityInput,
        output_schema = types.TagCertificateAuthorityOutput,
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
        input_schema = types.UntagCertificateAuthorityInput,
        output_schema = types.UntagCertificateAuthorityOutput,
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
        input_schema = types.UpdateCertificateAuthorityInput,
        output_schema = types.UpdateCertificateAuthorityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
