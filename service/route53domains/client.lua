



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("route53domains.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("route53domains.schemas")
local traits = require("smithy.traits")
local types = require("route53domains.types")
local sdk_defaults = require("aws.sdk_defaults")








































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "Route53Domains_v20140515"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "route53domains", signing_region = c.region } }
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

function C:acceptDomainTransferFromAnotherAwsAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptDomainTransferFromAnotherAwsAccount, input, options)
end

function C:associateDelegationSignerToDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateDelegationSignerToDomain, input, options)
end

function C:cancelDomainTransferToAnotherAwsAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelDomainTransferToAnotherAwsAccount, input, options)
end

function C:checkDomainAvailability(input, options)
   return self:invokeOperation(schemas.Service, schemas.CheckDomainAvailability, input, options)
end

function C:checkDomainTransferability(input, options)
   return self:invokeOperation(schemas.Service, schemas.CheckDomainTransferability, input, options)
end

function C:deleteDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDomain, input, options)
end

function C:deleteTagsForDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTagsForDomain, input, options)
end

function C:disableDomainAutoRenew(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableDomainAutoRenew, input, options)
end

function C:disableDomainTransferLock(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableDomainTransferLock, input, options)
end

function C:disassociateDelegationSignerFromDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateDelegationSignerFromDomain, input, options)
end

function C:enableDomainAutoRenew(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableDomainAutoRenew, input, options)
end

function C:enableDomainTransferLock(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableDomainTransferLock, input, options)
end

function C:getContactReachabilityStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetContactReachabilityStatus, input, options)
end

function C:getDomainDetail(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDomainDetail, input, options)
end

function C:getDomainSuggestions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDomainSuggestions, input, options)
end

function C:getOperationDetail(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOperationDetail, input, options)
end

function C:listDomains(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDomains, input, options)
end

function C:listOperations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOperations, input, options)
end

function C:listPrices(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPrices, input, options)
end

function C:listTagsForDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForDomain, input, options)
end

function C:pushDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.PushDomain, input, options)
end

function C:registerDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterDomain, input, options)
end

function C:rejectDomainTransferFromAnotherAwsAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectDomainTransferFromAnotherAwsAccount, input, options)
end

function C:renewDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.RenewDomain, input, options)
end

function C:resendContactReachabilityEmail(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResendContactReachabilityEmail, input, options)
end

function C:resendOperationAuthorization(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResendOperationAuthorization, input, options)
end

function C:retrieveDomainAuthCode(input, options)
   return self:invokeOperation(schemas.Service, schemas.RetrieveDomainAuthCode, input, options)
end

function C:transferDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.TransferDomain, input, options)
end

function C:transferDomainToAnotherAwsAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.TransferDomainToAnotherAwsAccount, input, options)
end

function C:updateDomainContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDomainContact, input, options)
end

function C:updateDomainContactPrivacy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDomainContactPrivacy, input, options)
end

function C:updateDomainNameservers(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDomainNameservers, input, options)
end

function C:updateTagsForDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTagsForDomain, input, options)
end

function C:viewBilling(input, options)
   return self:invokeOperation(schemas.Service, schemas.ViewBilling, input, options)
end

return M
