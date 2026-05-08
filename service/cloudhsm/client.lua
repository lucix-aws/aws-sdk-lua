



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("cloudhsm.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("cloudhsm.schemas")
local traits = require("smithy.traits")
local types = require("cloudhsm.types")
local sdk_defaults = require("aws.sdk_defaults")


























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "CloudHsmFrontendService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "cloudhsm", signing_region = c.region } }
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

function C:addTagsToResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddTagsToResource, input, options)
end

function C:createHapg(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateHapg, input, options)
end

function C:createHsm(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateHsm, input, options)
end

function C:createLunaClient(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLunaClient, input, options)
end

function C:deleteHapg(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteHapg, input, options)
end

function C:deleteHsm(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteHsm, input, options)
end

function C:deleteLunaClient(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLunaClient, input, options)
end

function C:describeHapg(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeHapg, input, options)
end

function C:describeHsm(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeHsm, input, options)
end

function C:describeLunaClient(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLunaClient, input, options)
end

function C:getConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConfig, input, options)
end

function C:listAvailableZones(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAvailableZones, input, options)
end

function C:listHapgs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListHapgs, input, options)
end

function C:listHsms(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListHsms, input, options)
end

function C:listLunaClients(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLunaClients, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:modifyHapg(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyHapg, input, options)
end

function C:modifyHsm(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyHsm, input, options)
end

function C:modifyLunaClient(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyLunaClient, input, options)
end

function C:removeTagsFromResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveTagsFromResource, input, options)
end

return M
