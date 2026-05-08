



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("marketplaceagreement.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("marketplaceagreement.schemas")
local traits = require("smithy.traits")
local types = require("marketplaceagreement.types")
local sdk_defaults = require("aws.sdk_defaults")































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSMPCommerceService_v20200301"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.0", service_id = c.service_id }) end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "aws-marketplace", signing_region = c.region } }
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

function C:acceptAgreementCancellationRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptAgreementCancellationRequest, input, options)
end

function C:acceptAgreementPaymentRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptAgreementPaymentRequest, input, options)
end

function C:acceptAgreementRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptAgreementRequest, input, options)
end

function C:batchCreateBillingAdjustmentRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchCreateBillingAdjustmentRequest, input, options)
end

function C:cancelAgreement(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelAgreement, input, options)
end

function C:cancelAgreementCancellationRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelAgreementCancellationRequest, input, options)
end

function C:cancelAgreementPaymentRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelAgreementPaymentRequest, input, options)
end

function C:createAgreementRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAgreementRequest, input, options)
end

function C:describeAgreement(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAgreement, input, options)
end

function C:getAgreementCancellationRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAgreementCancellationRequest, input, options)
end

function C:getAgreementEntitlements(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAgreementEntitlements, input, options)
end

function C:getAgreementPaymentRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAgreementPaymentRequest, input, options)
end

function C:getAgreementTerms(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAgreementTerms, input, options)
end

function C:getBillingAdjustmentRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBillingAdjustmentRequest, input, options)
end

function C:listAgreementCancellationRequests(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAgreementCancellationRequests, input, options)
end

function C:listAgreementCharges(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAgreementCharges, input, options)
end

function C:listAgreementInvoiceLineItems(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAgreementInvoiceLineItems, input, options)
end

function C:listAgreementPaymentRequests(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAgreementPaymentRequests, input, options)
end

function C:listBillingAdjustmentRequests(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBillingAdjustmentRequests, input, options)
end

function C:rejectAgreementCancellationRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectAgreementCancellationRequest, input, options)
end

function C:rejectAgreementPaymentRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectAgreementPaymentRequest, input, options)
end

function C:searchAgreements(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchAgreements, input, options)
end

function C:sendAgreementCancellationRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendAgreementCancellationRequest, input, options)
end

function C:sendAgreementPaymentRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendAgreementPaymentRequest, input, options)
end

function C:updatePurchaseOrders(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePurchaseOrders, input, options)
end

return M
