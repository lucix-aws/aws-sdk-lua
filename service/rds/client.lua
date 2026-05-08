



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("rds.endpoint_rules")
local query_protocol = require("smithy.protocol.awsquery")
local schemas = require("rds.schemas")
local traits = require("smithy.traits")
local types = require("rds.types")
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

function C:addRoleToDBInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddRoleToDBInstance, input, options)
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

function C:authorizeDBSecurityGroupIngress(input, options)
   return self:invokeOperation(schemas.Service, schemas.AuthorizeDBSecurityGroupIngress, input, options)
end

function C:backtrackDBCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.BacktrackDBCluster, input, options)
end

function C:cancelExportTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelExportTask, input, options)
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

function C:copyDBSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CopyDBSnapshot, input, options)
end

function C:copyOptionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CopyOptionGroup, input, options)
end

function C:createBlueGreenDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBlueGreenDeployment, input, options)
end

function C:createCustomDBEngineVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCustomDBEngineVersion, input, options)
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

function C:createDBInstanceReadReplica(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDBInstanceReadReplica, input, options)
end

function C:createDBParameterGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDBParameterGroup, input, options)
end

function C:createDBProxy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDBProxy, input, options)
end

function C:createDBProxyEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDBProxyEndpoint, input, options)
end

function C:createDBSecurityGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDBSecurityGroup, input, options)
end

function C:createDBShardGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDBShardGroup, input, options)
end

function C:createDBSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDBSnapshot, input, options)
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

function C:createIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIntegration, input, options)
end

function C:createOptionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateOptionGroup, input, options)
end

function C:createTenantDatabase(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTenantDatabase, input, options)
end

function C:deleteBlueGreenDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBlueGreenDeployment, input, options)
end

function C:deleteCustomDBEngineVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCustomDBEngineVersion, input, options)
end

function C:deleteDBCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDBCluster, input, options)
end

function C:deleteDBClusterAutomatedBackup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDBClusterAutomatedBackup, input, options)
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

function C:deleteDBInstanceAutomatedBackup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDBInstanceAutomatedBackup, input, options)
end

function C:deleteDBParameterGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDBParameterGroup, input, options)
end

function C:deleteDBProxy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDBProxy, input, options)
end

function C:deleteDBProxyEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDBProxyEndpoint, input, options)
end

function C:deleteDBSecurityGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDBSecurityGroup, input, options)
end

function C:deleteDBShardGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDBShardGroup, input, options)
end

function C:deleteDBSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDBSnapshot, input, options)
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

function C:deleteIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIntegration, input, options)
end

function C:deleteOptionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteOptionGroup, input, options)
end

function C:deleteTenantDatabase(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTenantDatabase, input, options)
end

function C:deregisterDBProxyTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterDBProxyTargets, input, options)
end

function C:describeAccountAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccountAttributes, input, options)
end

function C:describeBlueGreenDeployments(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBlueGreenDeployments, input, options)
end

function C:describeCertificates(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCertificates, input, options)
end

function C:describeDBClusterAutomatedBackups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDBClusterAutomatedBackups, input, options)
end

function C:describeDBClusterBacktracks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDBClusterBacktracks, input, options)
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

function C:describeDBInstanceAutomatedBackups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDBInstanceAutomatedBackups, input, options)
end

function C:describeDBInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDBInstances, input, options)
end

function C:describeDBLogFiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDBLogFiles, input, options)
end

function C:describeDBMajorEngineVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDBMajorEngineVersions, input, options)
end

function C:describeDBParameterGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDBParameterGroups, input, options)
end

function C:describeDBParameters(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDBParameters, input, options)
end

function C:describeDBProxies(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDBProxies, input, options)
end

function C:describeDBProxyEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDBProxyEndpoints, input, options)
end

function C:describeDBProxyTargetGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDBProxyTargetGroups, input, options)
end

function C:describeDBProxyTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDBProxyTargets, input, options)
end

function C:describeDBRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDBRecommendations, input, options)
end

function C:describeDBSecurityGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDBSecurityGroups, input, options)
end

function C:describeDBShardGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDBShardGroups, input, options)
end

function C:describeDBSnapshotAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDBSnapshotAttributes, input, options)
end

function C:describeDBSnapshots(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDBSnapshots, input, options)
end

function C:describeDBSnapshotTenantDatabases(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDBSnapshotTenantDatabases, input, options)
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

function C:describeExportTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeExportTasks, input, options)
end

function C:describeGlobalClusters(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeGlobalClusters, input, options)
end

function C:describeIntegrations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIntegrations, input, options)
end

function C:describeOptionGroupOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOptionGroupOptions, input, options)
end

function C:describeOptionGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOptionGroups, input, options)
end

function C:describeOrderableDBInstanceOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOrderableDBInstanceOptions, input, options)
end

function C:describePendingMaintenanceActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePendingMaintenanceActions, input, options)
end

function C:describeReservedDBInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReservedDBInstances, input, options)
end

function C:describeReservedDBInstancesOfferings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReservedDBInstancesOfferings, input, options)
end

function C:describeServerlessV2PlatformVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeServerlessV2PlatformVersions, input, options)
end

function C:describeSourceRegions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSourceRegions, input, options)
end

function C:describeTenantDatabases(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTenantDatabases, input, options)
end

function C:describeValidDBInstanceModifications(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeValidDBInstanceModifications, input, options)
end

function C:disableHttpEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableHttpEndpoint, input, options)
end

function C:downloadDBLogFilePortion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DownloadDBLogFilePortion, input, options)
end

function C:enableHttpEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableHttpEndpoint, input, options)
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

function C:modifyActivityStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyActivityStream, input, options)
end

function C:modifyCertificates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyCertificates, input, options)
end

function C:modifyCurrentDBClusterCapacity(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyCurrentDBClusterCapacity, input, options)
end

function C:modifyCustomDBEngineVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyCustomDBEngineVersion, input, options)
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

function C:modifyDBProxy(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyDBProxy, input, options)
end

function C:modifyDBProxyEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyDBProxyEndpoint, input, options)
end

function C:modifyDBProxyTargetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyDBProxyTargetGroup, input, options)
end

function C:modifyDBRecommendation(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyDBRecommendation, input, options)
end

function C:modifyDBShardGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyDBShardGroup, input, options)
end

function C:modifyDBSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyDBSnapshot, input, options)
end

function C:modifyDBSnapshotAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyDBSnapshotAttribute, input, options)
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

function C:modifyIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyIntegration, input, options)
end

function C:modifyOptionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyOptionGroup, input, options)
end

function C:modifyTenantDatabase(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyTenantDatabase, input, options)
end

function C:promoteReadReplica(input, options)
   return self:invokeOperation(schemas.Service, schemas.PromoteReadReplica, input, options)
end

function C:promoteReadReplicaDBCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.PromoteReadReplicaDBCluster, input, options)
end

function C:purchaseReservedDBInstancesOffering(input, options)
   return self:invokeOperation(schemas.Service, schemas.PurchaseReservedDBInstancesOffering, input, options)
end

function C:rebootDBCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.RebootDBCluster, input, options)
end

function C:rebootDBInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.RebootDBInstance, input, options)
end

function C:rebootDBShardGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.RebootDBShardGroup, input, options)
end

function C:registerDBProxyTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterDBProxyTargets, input, options)
end

function C:removeFromGlobalCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveFromGlobalCluster, input, options)
end

function C:removeRoleFromDBCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveRoleFromDBCluster, input, options)
end

function C:removeRoleFromDBInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveRoleFromDBInstance, input, options)
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

function C:restoreDBClusterFromS3(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreDBClusterFromS3, input, options)
end

function C:restoreDBClusterFromSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreDBClusterFromSnapshot, input, options)
end

function C:restoreDBClusterToPointInTime(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreDBClusterToPointInTime, input, options)
end

function C:restoreDBInstanceFromDBSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreDBInstanceFromDBSnapshot, input, options)
end

function C:restoreDBInstanceFromS3(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreDBInstanceFromS3, input, options)
end

function C:restoreDBInstanceToPointInTime(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreDBInstanceToPointInTime, input, options)
end

function C:revokeDBSecurityGroupIngress(input, options)
   return self:invokeOperation(schemas.Service, schemas.RevokeDBSecurityGroupIngress, input, options)
end

function C:startActivityStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartActivityStream, input, options)
end

function C:startDBCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDBCluster, input, options)
end

function C:startDBInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDBInstance, input, options)
end

function C:startDBInstanceAutomatedBackupsReplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDBInstanceAutomatedBackupsReplication, input, options)
end

function C:startExportTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartExportTask, input, options)
end

function C:stopActivityStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopActivityStream, input, options)
end

function C:stopDBCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopDBCluster, input, options)
end

function C:stopDBInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopDBInstance, input, options)
end

function C:stopDBInstanceAutomatedBackupsReplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopDBInstanceAutomatedBackupsReplication, input, options)
end

function C:switchoverBlueGreenDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.SwitchoverBlueGreenDeployment, input, options)
end

function C:switchoverGlobalCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.SwitchoverGlobalCluster, input, options)
end

function C:switchoverReadReplica(input, options)
   return self:invokeOperation(schemas.Service, schemas.SwitchoverReadReplica, input, options)
end

return M
