



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("b2bi.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("b2bi.schemas")
local traits = require("smithy.traits")
local types = require("b2bi.types")
local sdk_defaults = require("aws.sdk_defaults")




































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "B2BI"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "b2bi", signing_region = c.region } }
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

function C:createCapability(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCapability, input, options)
end

function C:createPartnership(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePartnership, input, options)
end

function C:createProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProfile, input, options)
end

function C:createStarterMappingTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStarterMappingTemplate, input, options)
end

function C:createTransformer(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTransformer, input, options)
end

function C:deleteCapability(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCapability, input, options)
end

function C:deletePartnership(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePartnership, input, options)
end

function C:deleteProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProfile, input, options)
end

function C:deleteTransformer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTransformer, input, options)
end

function C:generateMapping(input, options)
   return self:invokeOperation(schemas.Service, schemas.GenerateMapping, input, options)
end

function C:getCapability(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCapability, input, options)
end

function C:getPartnership(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPartnership, input, options)
end

function C:getProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProfile, input, options)
end

function C:getTransformer(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTransformer, input, options)
end

function C:getTransformerJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTransformerJob, input, options)
end

function C:listCapabilities(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCapabilities, input, options)
end

function C:listPartnerships(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPartnerships, input, options)
end

function C:listProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProfiles, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTransformers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTransformers, input, options)
end

function C:startTransformerJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartTransformerJob, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:testConversion(input, options)
   return self:invokeOperation(schemas.Service, schemas.TestConversion, input, options)
end

function C:testMapping(input, options)
   return self:invokeOperation(schemas.Service, schemas.TestMapping, input, options)
end

function C:testParsing(input, options)
   return self:invokeOperation(schemas.Service, schemas.TestParsing, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateCapability(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCapability, input, options)
end

function C:updatePartnership(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePartnership, input, options)
end

function C:updateProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProfile, input, options)
end

function C:updateTransformer(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTransformer, input, options)
end

return M
