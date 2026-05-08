



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("neptune.endpoint_rules")
local query_protocol = require("smithy.protocol.awsquery")
local schemas = require("neptune.schemas")
local traits = require("smithy.traits")
local types = require("neptune.types")
local sdk_defaults = require("aws.sdk_defaults")












































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonRDSv19"
   if not c.protocol then c.protocol = query_protocol.new("awsQuery") end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "rds", signing_region = c.region } }
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

function C:addRoleToDBCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddRoleToDBCluster, input, options)
end

function C:addSourceIdentifierToSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddSourceIdentifierToSubscription, input, options)
end

function C:addTagsToResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddTagsToResource, input, options)
end

function C:applyPendingMaintenanceAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.ApplyPendingMaintenanceAction, input, options)
end

function C:copyDBClusterParameterGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CopyDBClusterParameterGroup, input, options)
end

function C:copyDBClusterSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CopyDBClusterSnapshot, input, options)
end

function C:copyDBParameterGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CopyDBParameterGroup, input, options)
end

function C:createDBCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDBCluster, input, options)
end

function C:createDBClusterEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDBClusterEndpoint, input, options)
end

function C:createDBClusterParameterGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDBClusterParameterGroup, input, options)
end

function C:createDBClusterSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDBClusterSnapshot, input, options)
end

function C:createDBInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDBInstance, input, options)
end

function C:createDBParameterGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDBParameterGroup, input, options)
end

function C:createDBSubnetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDBSubnetGroup, input, options)
end

function C:createEventSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEventSubscription, input, options)
end

function C:createGlobalCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGlobalCluster, input, options)
end

function C:deleteDBCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDBCluster, input, options)
end

function C:deleteDBClusterEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDBClusterEndpoint, input, options)
end

function C:deleteDBClusterParameterGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDBClusterParameterGroup, input, options)
end

function C:deleteDBClusterSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDBClusterSnapshot, input, options)
end

function C:deleteDBInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDBInstance, input, options)
end

function C:deleteDBParameterGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDBParameterGroup, input, options)
end

function C:deleteDBSubnetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDBSubnetGroup, input, options)
end

function C:deleteEventSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEventSubscription, input, options)
end

function C:deleteGlobalCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGlobalCluster, input, options)
end

function C:describeDBClusterEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDBClusterEndpoints, input, options)
end

function C:describeDBClusterParameterGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDBClusterParameterGroups, input, options)
end

function C:describeDBClusterParameters(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDBClusterParameters, input, options)
end

function C:describeDBClusters(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDBClusters, input, options)
end

function C:describeDBClusterSnapshotAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDBClusterSnapshotAttributes, input, options)
end

function C:describeDBClusterSnapshots(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDBClusterSnapshots, input, options)
end

function C:describeDBEngineVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDBEngineVersions, input, options)
end

function C:describeDBInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDBInstances, input, options)
end

function C:describeDBParameterGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDBParameterGroups, input, options)
end

function C:describeDBParameters(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDBParameters, input, options)
end

function C:describeDBSubnetGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDBSubnetGroups, input, options)
end

function C:describeEngineDefaultClusterParameters(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEngineDefaultClusterParameters, input, options)
end

function C:describeEngineDefaultParameters(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEngineDefaultParameters, input, options)
end

function C:describeEventCategories(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEventCategories, input, options)
end

function C:describeEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEvents, input, options)
end

function C:describeEventSubscriptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEventSubscriptions, input, options)
end

function C:describeGlobalClusters(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeGlobalClusters, input, options)
end

function C:describeOrderableDBInstanceOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOrderableDBInstanceOptions, input, options)
end

function C:describePendingMaintenanceActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePendingMaintenanceActions, input, options)
end

function C:describeValidDBInstanceModifications(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeValidDBInstanceModifications, input, options)
end

function C:failoverDBCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.FailoverDBCluster, input, options)
end

function C:failoverGlobalCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.FailoverGlobalCluster, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:modifyDBCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyDBCluster, input, options)
end

function C:modifyDBClusterEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyDBClusterEndpoint, input, options)
end

function C:modifyDBClusterParameterGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyDBClusterParameterGroup, input, options)
end

function C:modifyDBClusterSnapshotAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyDBClusterSnapshotAttribute, input, options)
end

function C:modifyDBInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyDBInstance, input, options)
end

function C:modifyDBParameterGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyDBParameterGroup, input, options)
end

function C:modifyDBSubnetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyDBSubnetGroup, input, options)
end

function C:modifyEventSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyEventSubscription, input, options)
end

function C:modifyGlobalCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyGlobalCluster, input, options)
end

function C:promoteReadReplicaDBCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.PromoteReadReplicaDBCluster, input, options)
end

function C:rebootDBInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.RebootDBInstance, input, options)
end

function C:removeFromGlobalCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveFromGlobalCluster, input, options)
end

function C:removeRoleFromDBCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveRoleFromDBCluster, input, options)
end

function C:removeSourceIdentifierFromSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveSourceIdentifierFromSubscription, input, options)
end

function C:removeTagsFromResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveTagsFromResource, input, options)
end

function C:resetDBClusterParameterGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetDBClusterParameterGroup, input, options)
end

function C:resetDBParameterGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetDBParameterGroup, input, options)
end

function C:restoreDBClusterFromSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreDBClusterFromSnapshot, input, options)
end

function C:restoreDBClusterToPointInTime(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreDBClusterToPointInTime, input, options)
end

function C:startDBCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDBCluster, input, options)
end

function C:stopDBCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopDBCluster, input, options)
end

function C:switchoverGlobalCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.SwitchoverGlobalCluster, input, options)
end

return M
