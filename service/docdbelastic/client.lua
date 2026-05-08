



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("docdbelastic.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("docdbelastic.schemas")
local traits = require("smithy.traits")
local types = require("docdbelastic.types")
local sdk_defaults = require("aws.sdk_defaults")

























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "ChimeraDbLionfishServiceLambda"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "docdb-elastic", signing_region = c.region } }
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

function C:applyPendingMaintenanceAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.ApplyPendingMaintenanceAction, input, options)
end

function C:copyClusterSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CopyClusterSnapshot, input, options)
end

function C:createCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCluster, input, options)
end

function C:createClusterSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateClusterSnapshot, input, options)
end

function C:deleteCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCluster, input, options)
end

function C:deleteClusterSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteClusterSnapshot, input, options)
end

function C:getCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCluster, input, options)
end

function C:getClusterSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetClusterSnapshot, input, options)
end

function C:getPendingMaintenanceAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPendingMaintenanceAction, input, options)
end

function C:listClusters(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListClusters, input, options)
end

function C:listClusterSnapshots(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListClusterSnapshots, input, options)
end

function C:listPendingMaintenanceActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPendingMaintenanceActions, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:restoreClusterFromSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreClusterFromSnapshot, input, options)
end

function C:startCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartCluster, input, options)
end

function C:stopCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopCluster, input, options)
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

return M
