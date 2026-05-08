



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("dax.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("dax.schemas")
local traits = require("smithy.traits")
local types = require("dax.types")
local sdk_defaults = require("aws.sdk_defaults")



























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonDAXV3"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "dax", signing_region = c.region } }
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

function C:createCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCluster, input, options)
end

function C:createParameterGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateParameterGroup, input, options)
end

function C:createSubnetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSubnetGroup, input, options)
end

function C:decreaseReplicationFactor(input, options)
   return self:invokeOperation(schemas.Service, schemas.DecreaseReplicationFactor, input, options)
end

function C:deleteCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCluster, input, options)
end

function C:deleteParameterGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteParameterGroup, input, options)
end

function C:deleteSubnetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSubnetGroup, input, options)
end

function C:describeClusters(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeClusters, input, options)
end

function C:describeDefaultParameters(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDefaultParameters, input, options)
end

function C:describeEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEvents, input, options)
end

function C:describeParameterGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeParameterGroups, input, options)
end

function C:describeParameters(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeParameters, input, options)
end

function C:describeSubnetGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSubnetGroups, input, options)
end

function C:increaseReplicationFactor(input, options)
   return self:invokeOperation(schemas.Service, schemas.IncreaseReplicationFactor, input, options)
end

function C:listTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTags, input, options)
end

function C:rebootNode(input, options)
   return self:invokeOperation(schemas.Service, schemas.RebootNode, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCluster, input, options)
end

function C:updateParameterGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateParameterGroup, input, options)
end

function C:updateSubnetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSubnetGroup, input, options)
end

return M
