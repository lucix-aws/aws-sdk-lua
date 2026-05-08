



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("odb.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("odb.schemas")
local traits = require("smithy.traits")
local types = require("odb.types")
local sdk_defaults = require("aws.sdk_defaults")

















































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "Odb"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "odb", signing_region = c.region } }
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

function C:acceptMarketplaceRegistration(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptMarketplaceRegistration, input, options)
end

function C:associateIamRoleToResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateIamRoleToResource, input, options)
end

function C:createCloudAutonomousVmCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCloudAutonomousVmCluster, input, options)
end

function C:createCloudExadataInfrastructure(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCloudExadataInfrastructure, input, options)
end

function C:createCloudVmCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCloudVmCluster, input, options)
end

function C:createOdbNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateOdbNetwork, input, options)
end

function C:createOdbPeeringConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateOdbPeeringConnection, input, options)
end

function C:deleteCloudAutonomousVmCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCloudAutonomousVmCluster, input, options)
end

function C:deleteCloudExadataInfrastructure(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCloudExadataInfrastructure, input, options)
end

function C:deleteCloudVmCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCloudVmCluster, input, options)
end

function C:deleteOdbNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteOdbNetwork, input, options)
end

function C:deleteOdbPeeringConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteOdbPeeringConnection, input, options)
end

function C:disassociateIamRoleFromResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateIamRoleFromResource, input, options)
end

function C:getCloudAutonomousVmCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCloudAutonomousVmCluster, input, options)
end

function C:getCloudExadataInfrastructure(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCloudExadataInfrastructure, input, options)
end

function C:getCloudExadataInfrastructureUnallocatedResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCloudExadataInfrastructureUnallocatedResources, input, options)
end

function C:getCloudVmCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCloudVmCluster, input, options)
end

function C:getDbNode(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDbNode, input, options)
end

function C:getDbServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDbServer, input, options)
end

function C:getOciOnboardingStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOciOnboardingStatus, input, options)
end

function C:getOdbNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOdbNetwork, input, options)
end

function C:getOdbPeeringConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOdbPeeringConnection, input, options)
end

function C:initializeService(input, options)
   return self:invokeOperation(schemas.Service, schemas.InitializeService, input, options)
end

function C:listAutonomousVirtualMachines(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAutonomousVirtualMachines, input, options)
end

function C:listCloudAutonomousVmClusters(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCloudAutonomousVmClusters, input, options)
end

function C:listCloudExadataInfrastructures(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCloudExadataInfrastructures, input, options)
end

function C:listCloudVmClusters(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCloudVmClusters, input, options)
end

function C:listDbNodes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDbNodes, input, options)
end

function C:listDbServers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDbServers, input, options)
end

function C:listDbSystemShapes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDbSystemShapes, input, options)
end

function C:listGiVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGiVersions, input, options)
end

function C:listOdbNetworks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOdbNetworks, input, options)
end

function C:listOdbPeeringConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOdbPeeringConnections, input, options)
end

function C:listSystemVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSystemVersions, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:rebootDbNode(input, options)
   return self:invokeOperation(schemas.Service, schemas.RebootDbNode, input, options)
end

function C:startDbNode(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDbNode, input, options)
end

function C:stopDbNode(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopDbNode, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateCloudExadataInfrastructure(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCloudExadataInfrastructure, input, options)
end

function C:updateOdbNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateOdbNetwork, input, options)
end

function C:updateOdbPeeringConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateOdbPeeringConnection, input, options)
end

return M
