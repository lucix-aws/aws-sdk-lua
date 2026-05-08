



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("acmpca.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("acmpca.schemas")
local traits = require("smithy.traits")
local types = require("acmpca.types")
local sdk_defaults = require("aws.sdk_defaults")





























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "ACMPrivateCA"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.1", service_id = c.service_id }) end
   if not c.endpoint_provider then
      c.endpoint_provider = function(params)
         return endpoint.resolve(endpoint_rules, params)
      end
   end
   if not c.auth_scheme_resolver then
      c.auth_scheme_resolver = function(_service, operation)
         local auth_trait = operation:trait(traits.AUTH) or _service:trait(traits.AUTH)
         local options = {}
         for _, scheme in ipairs(auth_trait or {}) do
            local scheme_id = scheme.scheme_id or scheme
            if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "acm-pca", signing_region = c.region } }
            else
               options[#options + 1] = { scheme_id = scheme_id }
            end
         end
         return options
      end
   end
   defaults.resolve_auth_schemes(c)
   defaults.resolve_identity_resolvers(c)
   defaults.resolve_http_client(c)
   defaults.resolve_retry_strategy(c)
   sdk_defaults.resolve_identity_resolver(c)
   local self = setmetatable(base_client.new(c), Client_mt)
   return self
end

function C:createCertificateAuthority(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCertificateAuthority, input, options)
end

function C:createCertificateAuthorityAuditReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCertificateAuthorityAuditReport, input, options)
end

function C:createPermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePermission, input, options)
end

function C:deleteCertificateAuthority(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCertificateAuthority, input, options)
end

function C:deletePermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePermission, input, options)
end

function C:deletePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePolicy, input, options)
end

function C:describeCertificateAuthority(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCertificateAuthority, input, options)
end

function C:describeCertificateAuthorityAuditReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCertificateAuthorityAuditReport, input, options)
end

function C:getCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCertificate, input, options)
end

function C:getCertificateAuthorityCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCertificateAuthorityCertificate, input, options)
end

function C:getCertificateAuthorityCsr(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCertificateAuthorityCsr, input, options)
end

function C:getPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPolicy, input, options)
end

function C:importCertificateAuthorityCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportCertificateAuthorityCertificate, input, options)
end

function C:issueCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.IssueCertificate, input, options)
end

function C:listCertificateAuthorities(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCertificateAuthorities, input, options)
end

function C:listPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPermissions, input, options)
end

function C:listTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTags, input, options)
end

function C:putPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutPolicy, input, options)
end

function C:restoreCertificateAuthority(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreCertificateAuthority, input, options)
end

function C:revokeCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.RevokeCertificate, input, options)
end

function C:tagCertificateAuthority(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagCertificateAuthority, input, options)
end

function C:untagCertificateAuthority(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagCertificateAuthority, input, options)
end

function C:updateCertificateAuthority(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCertificateAuthority, input, options)
end

return M
