



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("acm.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("acm.schemas")
local traits = require("smithy.traits")
local types = require("acm.types")
local sdk_defaults = require("aws.sdk_defaults")























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "CertificateManager"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "acm", signing_region = c.region } }
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

function C:addTagsToCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddTagsToCertificate, input, options)
end

function C:deleteCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCertificate, input, options)
end

function C:describeCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCertificate, input, options)
end

function C:exportCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportCertificate, input, options)
end

function C:getAccountConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccountConfiguration, input, options)
end

function C:getCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCertificate, input, options)
end

function C:importCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportCertificate, input, options)
end

function C:listCertificates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCertificates, input, options)
end

function C:listTagsForCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForCertificate, input, options)
end

function C:putAccountConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAccountConfiguration, input, options)
end

function C:removeTagsFromCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveTagsFromCertificate, input, options)
end

function C:renewCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.RenewCertificate, input, options)
end

function C:requestCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.RequestCertificate, input, options)
end

function C:resendValidationEmail(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResendValidationEmail, input, options)
end

function C:revokeCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.RevokeCertificate, input, options)
end

function C:searchCertificates(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchCertificates, input, options)
end

function C:updateCertificateOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCertificateOptions, input, options)
end

return M
