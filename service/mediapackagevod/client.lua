



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("mediapackagevod.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("mediapackagevod.schemas")
local traits = require("smithy.traits")
local types = require("mediapackagevod.types")
local sdk_defaults = require("aws.sdk_defaults")























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "MediaPackageVod"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "mediapackage-vod", signing_region = c.region } }
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

function C:configureLogs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ConfigureLogs, input, options)
end

function C:createAsset(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAsset, input, options)
end

function C:createPackagingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePackagingConfiguration, input, options)
end

function C:createPackagingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePackagingGroup, input, options)
end

function C:deleteAsset(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAsset, input, options)
end

function C:deletePackagingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePackagingConfiguration, input, options)
end

function C:deletePackagingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePackagingGroup, input, options)
end

function C:describeAsset(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAsset, input, options)
end

function C:describePackagingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePackagingConfiguration, input, options)
end

function C:describePackagingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePackagingGroup, input, options)
end

function C:listAssets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssets, input, options)
end

function C:listPackagingConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPackagingConfigurations, input, options)
end

function C:listPackagingGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPackagingGroups, input, options)
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

function C:updatePackagingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePackagingGroup, input, options)
end

return M
