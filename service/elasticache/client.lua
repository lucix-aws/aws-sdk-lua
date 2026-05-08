



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("elasticache.endpoint_rules")
local query_protocol = require("smithy.protocol.awsquery")
local schemas = require("elasticache.schemas")
local traits = require("smithy.traits")
local types = require("elasticache.types")
local sdk_defaults = require("aws.sdk_defaults")

















































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonElastiCacheV9"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "elasticache", signing_region = c.region } }
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

function C:authorizeCacheSecurityGroupIngress(input, options)
   return self:invokeOperation(schemas.Service, schemas.AuthorizeCacheSecurityGroupIngress, input, options)
end

function C:batchApplyUpdateAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchApplyUpdateAction, input, options)
end

function C:batchStopUpdateAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchStopUpdateAction, input, options)
end

function C:completeMigration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CompleteMigration, input, options)
end

function C:copyServerlessCacheSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CopyServerlessCacheSnapshot, input, options)
end

function C:copySnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CopySnapshot, input, options)
end

function C:createCacheCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCacheCluster, input, options)
end

function C:createCacheParameterGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCacheParameterGroup, input, options)
end

function C:createCacheSecurityGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCacheSecurityGroup, input, options)
end

function C:createCacheSubnetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCacheSubnetGroup, input, options)
end

function C:createGlobalReplicationGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGlobalReplicationGroup, input, options)
end

function C:createReplicationGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateReplicationGroup, input, options)
end

function C:createServerlessCache(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateServerlessCache, input, options)
end

function C:createServerlessCacheSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateServerlessCacheSnapshot, input, options)
end

function C:createSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSnapshot, input, options)
end

function C:createUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUser, input, options)
end

function C:createUserGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUserGroup, input, options)
end

function C:decreaseNodeGroupsInGlobalReplicationGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DecreaseNodeGroupsInGlobalReplicationGroup, input, options)
end

function C:decreaseReplicaCount(input, options)
   return self:invokeOperation(schemas.Service, schemas.DecreaseReplicaCount, input, options)
end

function C:deleteCacheCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCacheCluster, input, options)
end

function C:deleteCacheParameterGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCacheParameterGroup, input, options)
end

function C:deleteCacheSecurityGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCacheSecurityGroup, input, options)
end

function C:deleteCacheSubnetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCacheSubnetGroup, input, options)
end

function C:deleteGlobalReplicationGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGlobalReplicationGroup, input, options)
end

function C:deleteReplicationGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteReplicationGroup, input, options)
end

function C:deleteServerlessCache(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteServerlessCache, input, options)
end

function C:deleteServerlessCacheSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteServerlessCacheSnapshot, input, options)
end

function C:deleteSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSnapshot, input, options)
end

function C:deleteUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUser, input, options)
end

function C:deleteUserGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUserGroup, input, options)
end

function C:describeCacheClusters(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCacheClusters, input, options)
end

function C:describeCacheEngineVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCacheEngineVersions, input, options)
end

function C:describeCacheParameterGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCacheParameterGroups, input, options)
end

function C:describeCacheParameters(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCacheParameters, input, options)
end

function C:describeCacheSecurityGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCacheSecurityGroups, input, options)
end

function C:describeCacheSubnetGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCacheSubnetGroups, input, options)
end

function C:describeEngineDefaultParameters(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEngineDefaultParameters, input, options)
end

function C:describeEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEvents, input, options)
end

function C:describeGlobalReplicationGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeGlobalReplicationGroups, input, options)
end

function C:describeReplicationGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReplicationGroups, input, options)
end

function C:describeReservedCacheNodes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReservedCacheNodes, input, options)
end

function C:describeReservedCacheNodesOfferings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReservedCacheNodesOfferings, input, options)
end

function C:describeServerlessCaches(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeServerlessCaches, input, options)
end

function C:describeServerlessCacheSnapshots(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeServerlessCacheSnapshots, input, options)
end

function C:describeServiceUpdates(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeServiceUpdates, input, options)
end

function C:describeSnapshots(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSnapshots, input, options)
end

function C:describeUpdateActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeUpdateActions, input, options)
end

function C:describeUserGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeUserGroups, input, options)
end

function C:describeUsers(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeUsers, input, options)
end

function C:disassociateGlobalReplicationGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateGlobalReplicationGroup, input, options)
end

function C:exportServerlessCacheSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportServerlessCacheSnapshot, input, options)
end

function C:failoverGlobalReplicationGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.FailoverGlobalReplicationGroup, input, options)
end

function C:increaseNodeGroupsInGlobalReplicationGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.IncreaseNodeGroupsInGlobalReplicationGroup, input, options)
end

function C:increaseReplicaCount(input, options)
   return self:invokeOperation(schemas.Service, schemas.IncreaseReplicaCount, input, options)
end

function C:listAllowedNodeTypeModifications(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAllowedNodeTypeModifications, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:modifyCacheCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyCacheCluster, input, options)
end

function C:modifyCacheParameterGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyCacheParameterGroup, input, options)
end

function C:modifyCacheSubnetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyCacheSubnetGroup, input, options)
end

function C:modifyGlobalReplicationGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyGlobalReplicationGroup, input, options)
end

function C:modifyReplicationGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyReplicationGroup, input, options)
end

function C:modifyReplicationGroupShardConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyReplicationGroupShardConfiguration, input, options)
end

function C:modifyServerlessCache(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyServerlessCache, input, options)
end

function C:modifyUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyUser, input, options)
end

function C:modifyUserGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyUserGroup, input, options)
end

function C:purchaseReservedCacheNodesOffering(input, options)
   return self:invokeOperation(schemas.Service, schemas.PurchaseReservedCacheNodesOffering, input, options)
end

function C:rebalanceSlotsInGlobalReplicationGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.RebalanceSlotsInGlobalReplicationGroup, input, options)
end

function C:rebootCacheCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.RebootCacheCluster, input, options)
end

function C:removeTagsFromResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveTagsFromResource, input, options)
end

function C:resetCacheParameterGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetCacheParameterGroup, input, options)
end

function C:revokeCacheSecurityGroupIngress(input, options)
   return self:invokeOperation(schemas.Service, schemas.RevokeCacheSecurityGroupIngress, input, options)
end

function C:startMigration(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMigration, input, options)
end

function C:testFailover(input, options)
   return self:invokeOperation(schemas.Service, schemas.TestFailover, input, options)
end

function C:testMigration(input, options)
   return self:invokeOperation(schemas.Service, schemas.TestMigration, input, options)
end

return M
