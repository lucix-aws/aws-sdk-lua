



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("billing.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("billing.schemas")
local traits = require("smithy.traits")
local types = require("billing.types")
local sdk_defaults = require("aws.sdk_defaults")


















local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSBilling"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "billing", signing_region = c.region } }
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

function C:associateSourceViews(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateSourceViews, input, options)
end

function C:createBillingView(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBillingView, input, options)
end

function C:deleteBillingView(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBillingView, input, options)
end

function C:disassociateSourceViews(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateSourceViews, input, options)
end

function C:getBillingView(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBillingView, input, options)
end

function C:getResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcePolicy, input, options)
end

function C:listBillingViews(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBillingViews, input, options)
end

function C:listSourceViewsForBillingView(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSourceViewsForBillingView, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateBillingView(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBillingView, input, options)
end

return M
