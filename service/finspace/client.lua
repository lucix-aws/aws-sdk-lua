



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("finspace.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("finspace.schemas")
local traits = require("smithy.traits")
local types = require("finspace.types")
local sdk_defaults = require("aws.sdk_defaults")
























































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSHabaneroManagementService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "finspace", signing_region = c.region } }
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

function C:createEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEnvironment, input, options)
end

function C:createKxChangeset(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateKxChangeset, input, options)
end

function C:createKxCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateKxCluster, input, options)
end

function C:createKxDatabase(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateKxDatabase, input, options)
end

function C:createKxDataview(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateKxDataview, input, options)
end

function C:createKxEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateKxEnvironment, input, options)
end

function C:createKxScalingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateKxScalingGroup, input, options)
end

function C:createKxUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateKxUser, input, options)
end

function C:createKxVolume(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateKxVolume, input, options)
end

function C:deleteEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEnvironment, input, options)
end

function C:deleteKxCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteKxCluster, input, options)
end

function C:deleteKxClusterNode(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteKxClusterNode, input, options)
end

function C:deleteKxDatabase(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteKxDatabase, input, options)
end

function C:deleteKxDataview(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteKxDataview, input, options)
end

function C:deleteKxEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteKxEnvironment, input, options)
end

function C:deleteKxScalingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteKxScalingGroup, input, options)
end

function C:deleteKxUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteKxUser, input, options)
end

function C:deleteKxVolume(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteKxVolume, input, options)
end

function C:getEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEnvironment, input, options)
end

function C:getKxChangeset(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetKxChangeset, input, options)
end

function C:getKxCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetKxCluster, input, options)
end

function C:getKxConnectionString(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetKxConnectionString, input, options)
end

function C:getKxDatabase(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetKxDatabase, input, options)
end

function C:getKxDataview(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetKxDataview, input, options)
end

function C:getKxEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetKxEnvironment, input, options)
end

function C:getKxScalingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetKxScalingGroup, input, options)
end

function C:getKxUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetKxUser, input, options)
end

function C:getKxVolume(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetKxVolume, input, options)
end

function C:listEnvironments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEnvironments, input, options)
end

function C:listKxChangesets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListKxChangesets, input, options)
end

function C:listKxClusterNodes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListKxClusterNodes, input, options)
end

function C:listKxClusters(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListKxClusters, input, options)
end

function C:listKxDatabases(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListKxDatabases, input, options)
end

function C:listKxDataviews(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListKxDataviews, input, options)
end

function C:listKxEnvironments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListKxEnvironments, input, options)
end

function C:listKxScalingGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListKxScalingGroups, input, options)
end

function C:listKxUsers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListKxUsers, input, options)
end

function C:listKxVolumes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListKxVolumes, input, options)
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

function C:updateEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEnvironment, input, options)
end

function C:updateKxClusterCodeConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateKxClusterCodeConfiguration, input, options)
end

function C:updateKxClusterDatabases(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateKxClusterDatabases, input, options)
end

function C:updateKxDatabase(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateKxDatabase, input, options)
end

function C:updateKxDataview(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateKxDataview, input, options)
end

function C:updateKxEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateKxEnvironment, input, options)
end

function C:updateKxEnvironmentNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateKxEnvironmentNetwork, input, options)
end

function C:updateKxUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateKxUser, input, options)
end

function C:updateKxVolume(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateKxVolume, input, options)
end

return M
