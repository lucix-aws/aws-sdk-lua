local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("elasticache.endpoint_rules")
local query_protocol = require("protocol.query")
local sdk_defaults = require("sdk_defaults")
local types = require("elasticache.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonElastiCacheV9"
    cfg.signing_name = "elasticache"
    if not cfg.protocol then
        cfg.protocol = query_protocol.new("awsQuery")
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:addTagsToResource(input, options)
    return self:invokeOperation(input, {
        name = "AddTagsToResource",
        input_schema = types.AddTagsToResourceInput,
        output_schema = types.AddTagsToResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:authorizeCacheSecurityGroupIngress(input, options)
    return self:invokeOperation(input, {
        name = "AuthorizeCacheSecurityGroupIngress",
        input_schema = types.AuthorizeCacheSecurityGroupIngressInput,
        output_schema = types.AuthorizeCacheSecurityGroupIngressOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchApplyUpdateAction(input, options)
    return self:invokeOperation(input, {
        name = "BatchApplyUpdateAction",
        input_schema = types.BatchApplyUpdateActionInput,
        output_schema = types.BatchApplyUpdateActionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchStopUpdateAction(input, options)
    return self:invokeOperation(input, {
        name = "BatchStopUpdateAction",
        input_schema = types.BatchStopUpdateActionInput,
        output_schema = types.BatchStopUpdateActionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:completeMigration(input, options)
    return self:invokeOperation(input, {
        name = "CompleteMigration",
        input_schema = types.CompleteMigrationInput,
        output_schema = types.CompleteMigrationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:copyServerlessCacheSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CopyServerlessCacheSnapshot",
        input_schema = types.CopyServerlessCacheSnapshotInput,
        output_schema = types.CopyServerlessCacheSnapshotOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:copySnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CopySnapshot",
        input_schema = types.CopySnapshotInput,
        output_schema = types.CopySnapshotOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createCacheCluster(input, options)
    return self:invokeOperation(input, {
        name = "CreateCacheCluster",
        input_schema = types.CreateCacheClusterInput,
        output_schema = types.CreateCacheClusterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createCacheParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateCacheParameterGroup",
        input_schema = types.CreateCacheParameterGroupInput,
        output_schema = types.CreateCacheParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createCacheSecurityGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateCacheSecurityGroup",
        input_schema = types.CreateCacheSecurityGroupInput,
        output_schema = types.CreateCacheSecurityGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createCacheSubnetGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateCacheSubnetGroup",
        input_schema = types.CreateCacheSubnetGroupInput,
        output_schema = types.CreateCacheSubnetGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createGlobalReplicationGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateGlobalReplicationGroup",
        input_schema = types.CreateGlobalReplicationGroupInput,
        output_schema = types.CreateGlobalReplicationGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createReplicationGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateReplicationGroup",
        input_schema = types.CreateReplicationGroupInput,
        output_schema = types.CreateReplicationGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createServerlessCache(input, options)
    return self:invokeOperation(input, {
        name = "CreateServerlessCache",
        input_schema = types.CreateServerlessCacheInput,
        output_schema = types.CreateServerlessCacheOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createServerlessCacheSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CreateServerlessCacheSnapshot",
        input_schema = types.CreateServerlessCacheSnapshotInput,
        output_schema = types.CreateServerlessCacheSnapshotOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CreateSnapshot",
        input_schema = types.CreateSnapshotInput,
        output_schema = types.CreateSnapshotOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createUser(input, options)
    return self:invokeOperation(input, {
        name = "CreateUser",
        input_schema = types.CreateUserInput,
        output_schema = types.CreateUserOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createUserGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateUserGroup",
        input_schema = types.CreateUserGroupInput,
        output_schema = types.CreateUserGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:decreaseNodeGroupsInGlobalReplicationGroup(input, options)
    return self:invokeOperation(input, {
        name = "DecreaseNodeGroupsInGlobalReplicationGroup",
        input_schema = types.DecreaseNodeGroupsInGlobalReplicationGroupInput,
        output_schema = types.DecreaseNodeGroupsInGlobalReplicationGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:decreaseReplicaCount(input, options)
    return self:invokeOperation(input, {
        name = "DecreaseReplicaCount",
        input_schema = types.DecreaseReplicaCountInput,
        output_schema = types.DecreaseReplicaCountOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteCacheCluster(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCacheCluster",
        input_schema = types.DeleteCacheClusterInput,
        output_schema = types.DeleteCacheClusterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteCacheParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCacheParameterGroup",
        input_schema = types.DeleteCacheParameterGroupInput,
        output_schema = types.DeleteCacheParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteCacheSecurityGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCacheSecurityGroup",
        input_schema = types.DeleteCacheSecurityGroupInput,
        output_schema = types.DeleteCacheSecurityGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteCacheSubnetGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCacheSubnetGroup",
        input_schema = types.DeleteCacheSubnetGroupInput,
        output_schema = types.DeleteCacheSubnetGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteGlobalReplicationGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGlobalReplicationGroup",
        input_schema = types.DeleteGlobalReplicationGroupInput,
        output_schema = types.DeleteGlobalReplicationGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteReplicationGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteReplicationGroup",
        input_schema = types.DeleteReplicationGroupInput,
        output_schema = types.DeleteReplicationGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteServerlessCache(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServerlessCache",
        input_schema = types.DeleteServerlessCacheInput,
        output_schema = types.DeleteServerlessCacheOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteServerlessCacheSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServerlessCacheSnapshot",
        input_schema = types.DeleteServerlessCacheSnapshotInput,
        output_schema = types.DeleteServerlessCacheSnapshotOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSnapshot",
        input_schema = types.DeleteSnapshotInput,
        output_schema = types.DeleteSnapshotOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteUser(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUser",
        input_schema = types.DeleteUserInput,
        output_schema = types.DeleteUserOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteUserGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUserGroup",
        input_schema = types.DeleteUserGroupInput,
        output_schema = types.DeleteUserGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeCacheClusters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCacheClusters",
        input_schema = types.DescribeCacheClustersInput,
        output_schema = types.DescribeCacheClustersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeCacheEngineVersions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCacheEngineVersions",
        input_schema = types.DescribeCacheEngineVersionsInput,
        output_schema = types.DescribeCacheEngineVersionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeCacheParameterGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCacheParameterGroups",
        input_schema = types.DescribeCacheParameterGroupsInput,
        output_schema = types.DescribeCacheParameterGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeCacheParameters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCacheParameters",
        input_schema = types.DescribeCacheParametersInput,
        output_schema = types.DescribeCacheParametersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeCacheSecurityGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCacheSecurityGroups",
        input_schema = types.DescribeCacheSecurityGroupsInput,
        output_schema = types.DescribeCacheSecurityGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeCacheSubnetGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCacheSubnetGroups",
        input_schema = types.DescribeCacheSubnetGroupsInput,
        output_schema = types.DescribeCacheSubnetGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeEngineDefaultParameters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEngineDefaultParameters",
        input_schema = types.DescribeEngineDefaultParametersInput,
        output_schema = types.DescribeEngineDefaultParametersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeEvents(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEvents",
        input_schema = types.DescribeEventsInput,
        output_schema = types.DescribeEventsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeGlobalReplicationGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGlobalReplicationGroups",
        input_schema = types.DescribeGlobalReplicationGroupsInput,
        output_schema = types.DescribeGlobalReplicationGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeReplicationGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReplicationGroups",
        input_schema = types.DescribeReplicationGroupsInput,
        output_schema = types.DescribeReplicationGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeReservedCacheNodes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReservedCacheNodes",
        input_schema = types.DescribeReservedCacheNodesInput,
        output_schema = types.DescribeReservedCacheNodesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeReservedCacheNodesOfferings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReservedCacheNodesOfferings",
        input_schema = types.DescribeReservedCacheNodesOfferingsInput,
        output_schema = types.DescribeReservedCacheNodesOfferingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeServerlessCaches(input, options)
    return self:invokeOperation(input, {
        name = "DescribeServerlessCaches",
        input_schema = types.DescribeServerlessCachesInput,
        output_schema = types.DescribeServerlessCachesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeServerlessCacheSnapshots(input, options)
    return self:invokeOperation(input, {
        name = "DescribeServerlessCacheSnapshots",
        input_schema = types.DescribeServerlessCacheSnapshotsInput,
        output_schema = types.DescribeServerlessCacheSnapshotsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeServiceUpdates(input, options)
    return self:invokeOperation(input, {
        name = "DescribeServiceUpdates",
        input_schema = types.DescribeServiceUpdatesInput,
        output_schema = types.DescribeServiceUpdatesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeSnapshots(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSnapshots",
        input_schema = types.DescribeSnapshotsInput,
        output_schema = types.DescribeSnapshotsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeUpdateActions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUpdateActions",
        input_schema = types.DescribeUpdateActionsInput,
        output_schema = types.DescribeUpdateActionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeUserGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUserGroups",
        input_schema = types.DescribeUserGroupsInput,
        output_schema = types.DescribeUserGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeUsers(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUsers",
        input_schema = types.DescribeUsersInput,
        output_schema = types.DescribeUsersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateGlobalReplicationGroup(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateGlobalReplicationGroup",
        input_schema = types.DisassociateGlobalReplicationGroupInput,
        output_schema = types.DisassociateGlobalReplicationGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:exportServerlessCacheSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "ExportServerlessCacheSnapshot",
        input_schema = types.ExportServerlessCacheSnapshotInput,
        output_schema = types.ExportServerlessCacheSnapshotOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:failoverGlobalReplicationGroup(input, options)
    return self:invokeOperation(input, {
        name = "FailoverGlobalReplicationGroup",
        input_schema = types.FailoverGlobalReplicationGroupInput,
        output_schema = types.FailoverGlobalReplicationGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:increaseNodeGroupsInGlobalReplicationGroup(input, options)
    return self:invokeOperation(input, {
        name = "IncreaseNodeGroupsInGlobalReplicationGroup",
        input_schema = types.IncreaseNodeGroupsInGlobalReplicationGroupInput,
        output_schema = types.IncreaseNodeGroupsInGlobalReplicationGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:increaseReplicaCount(input, options)
    return self:invokeOperation(input, {
        name = "IncreaseReplicaCount",
        input_schema = types.IncreaseReplicaCountInput,
        output_schema = types.IncreaseReplicaCountOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAllowedNodeTypeModifications(input, options)
    return self:invokeOperation(input, {
        name = "ListAllowedNodeTypeModifications",
        input_schema = types.ListAllowedNodeTypeModificationsInput,
        output_schema = types.ListAllowedNodeTypeModificationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyCacheCluster(input, options)
    return self:invokeOperation(input, {
        name = "ModifyCacheCluster",
        input_schema = types.ModifyCacheClusterInput,
        output_schema = types.ModifyCacheClusterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyCacheParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "ModifyCacheParameterGroup",
        input_schema = types.ModifyCacheParameterGroupInput,
        output_schema = types.ModifyCacheParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyCacheSubnetGroup(input, options)
    return self:invokeOperation(input, {
        name = "ModifyCacheSubnetGroup",
        input_schema = types.ModifyCacheSubnetGroupInput,
        output_schema = types.ModifyCacheSubnetGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyGlobalReplicationGroup(input, options)
    return self:invokeOperation(input, {
        name = "ModifyGlobalReplicationGroup",
        input_schema = types.ModifyGlobalReplicationGroupInput,
        output_schema = types.ModifyGlobalReplicationGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyReplicationGroup(input, options)
    return self:invokeOperation(input, {
        name = "ModifyReplicationGroup",
        input_schema = types.ModifyReplicationGroupInput,
        output_schema = types.ModifyReplicationGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyReplicationGroupShardConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "ModifyReplicationGroupShardConfiguration",
        input_schema = types.ModifyReplicationGroupShardConfigurationInput,
        output_schema = types.ModifyReplicationGroupShardConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyServerlessCache(input, options)
    return self:invokeOperation(input, {
        name = "ModifyServerlessCache",
        input_schema = types.ModifyServerlessCacheInput,
        output_schema = types.ModifyServerlessCacheOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyUser(input, options)
    return self:invokeOperation(input, {
        name = "ModifyUser",
        input_schema = types.ModifyUserInput,
        output_schema = types.ModifyUserOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyUserGroup(input, options)
    return self:invokeOperation(input, {
        name = "ModifyUserGroup",
        input_schema = types.ModifyUserGroupInput,
        output_schema = types.ModifyUserGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:purchaseReservedCacheNodesOffering(input, options)
    return self:invokeOperation(input, {
        name = "PurchaseReservedCacheNodesOffering",
        input_schema = types.PurchaseReservedCacheNodesOfferingInput,
        output_schema = types.PurchaseReservedCacheNodesOfferingOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:rebalanceSlotsInGlobalReplicationGroup(input, options)
    return self:invokeOperation(input, {
        name = "RebalanceSlotsInGlobalReplicationGroup",
        input_schema = types.RebalanceSlotsInGlobalReplicationGroupInput,
        output_schema = types.RebalanceSlotsInGlobalReplicationGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:rebootCacheCluster(input, options)
    return self:invokeOperation(input, {
        name = "RebootCacheCluster",
        input_schema = types.RebootCacheClusterInput,
        output_schema = types.RebootCacheClusterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:removeTagsFromResource(input, options)
    return self:invokeOperation(input, {
        name = "RemoveTagsFromResource",
        input_schema = types.RemoveTagsFromResourceInput,
        output_schema = types.RemoveTagsFromResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:resetCacheParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "ResetCacheParameterGroup",
        input_schema = types.ResetCacheParameterGroupInput,
        output_schema = types.ResetCacheParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:revokeCacheSecurityGroupIngress(input, options)
    return self:invokeOperation(input, {
        name = "RevokeCacheSecurityGroupIngress",
        input_schema = types.RevokeCacheSecurityGroupIngressInput,
        output_schema = types.RevokeCacheSecurityGroupIngressOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startMigration(input, options)
    return self:invokeOperation(input, {
        name = "StartMigration",
        input_schema = types.StartMigrationInput,
        output_schema = types.StartMigrationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:testFailover(input, options)
    return self:invokeOperation(input, {
        name = "TestFailover",
        input_schema = types.TestFailoverInput,
        output_schema = types.TestFailoverOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:testMigration(input, options)
    return self:invokeOperation(input, {
        name = "TestMigration",
        input_schema = types.TestMigrationInput,
        output_schema = types.TestMigrationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
