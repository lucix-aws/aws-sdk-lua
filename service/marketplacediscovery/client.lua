



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("marketplacediscovery.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("marketplacediscovery.schemas")
local traits = require("smithy.traits")
local types = require("marketplacediscovery.types")
local sdk_defaults = require("aws.sdk_defaults")















local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSMarketplaceDiscovery"
   if not c.protocol then c.protocol = restjson_protocol.new() end
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

function C:getListing(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetListing, input, options)
end

function C:getOffer(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOffer, input, options)
end

function C:getOfferSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOfferSet, input, options)
end

function C:getOfferTerms(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOfferTerms, input, options)
end

function C:getProduct(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProduct, input, options)
end

function C:listFulfillmentOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFulfillmentOptions, input, options)
end

function C:listPurchaseOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPurchaseOptions, input, options)
end

function C:searchFacets(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchFacets, input, options)
end

function C:searchListings(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchListings, input, options)
end

return M
