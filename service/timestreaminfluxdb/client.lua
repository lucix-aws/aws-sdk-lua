



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("timestreaminfluxdb.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("timestreaminfluxdb.schemas")
local traits = require("smithy.traits")
local types = require("timestreaminfluxdb.types")
local sdk_defaults = require("aws.sdk_defaults")

























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonTimestreamInfluxDB"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "timestream-influxdb", signing_region = c.region } }
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

function C:createDbCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDbCluster, input, options)
end

function C:createDbInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDbInstance, input, options)
end

function C:createDbParameterGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDbParameterGroup, input, options)
end

function C:deleteDbCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDbCluster, input, options)
end

function C:deleteDbInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDbInstance, input, options)
end

function C:getDbCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDbCluster, input, options)
end

function C:getDbInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDbInstance, input, options)
end

function C:getDbParameterGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDbParameterGroup, input, options)
end

function C:listDbClusters(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDbClusters, input, options)
end

function C:listDbInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDbInstances, input, options)
end

function C:listDbInstancesForCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDbInstancesForCluster, input, options)
end

function C:listDbParameterGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDbParameterGroups, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:rebootDbCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.RebootDbCluster, input, options)
end

function C:rebootDbInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.RebootDbInstance, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateDbCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDbCluster, input, options)
end

function C:updateDbInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDbInstance, input, options)
end

return M
