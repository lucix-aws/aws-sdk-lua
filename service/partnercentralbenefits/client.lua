



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("partnercentralbenefits.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("partnercentralbenefits.schemas")
local traits = require("smithy.traits")
local types = require("partnercentralbenefits.types")
local sdk_defaults = require("aws.sdk_defaults")























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "PartnerCentralBenefitsService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "partnercentral-benefits", signing_region = c.region } }
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

function C:amendBenefitApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.AmendBenefitApplication, input, options)
end

function C:associateBenefitApplicationResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateBenefitApplicationResource, input, options)
end

function C:cancelBenefitApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelBenefitApplication, input, options)
end

function C:createBenefitApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBenefitApplication, input, options)
end

function C:disassociateBenefitApplicationResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateBenefitApplicationResource, input, options)
end

function C:getBenefit(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBenefit, input, options)
end

function C:getBenefitAllocation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBenefitAllocation, input, options)
end

function C:getBenefitApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBenefitApplication, input, options)
end

function C:listBenefitAllocations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBenefitAllocations, input, options)
end

function C:listBenefitApplications(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBenefitApplications, input, options)
end

function C:listBenefits(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBenefits, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:recallBenefitApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.RecallBenefitApplication, input, options)
end

function C:submitBenefitApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.SubmitBenefitApplication, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateBenefitApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBenefitApplication, input, options)
end

return M
