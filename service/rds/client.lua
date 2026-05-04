local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("rds.endpoint_rules")
local query_protocol = require("protocol.query")
local sdk_defaults = require("sdk_defaults")
local types = require("rds.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonRDSv19"
    cfg.signing_name = "amazonrdsv19"
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

function Client:addRoleToDBCluster(input, options)
    return self:invokeOperation(input, {
        name = "AddRoleToDBCluster",
        input_schema = types.AddRoleToDBClusterInput,
        output_schema = types.AddRoleToDBClusterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:addRoleToDBInstance(input, options)
    return self:invokeOperation(input, {
        name = "AddRoleToDBInstance",
        input_schema = types.AddRoleToDBInstanceInput,
        output_schema = types.AddRoleToDBInstanceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:addSourceIdentifierToSubscription(input, options)
    return self:invokeOperation(input, {
        name = "AddSourceIdentifierToSubscription",
        input_schema = types.AddSourceIdentifierToSubscriptionInput,
        output_schema = types.AddSourceIdentifierToSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
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

function Client:applyPendingMaintenanceAction(input, options)
    return self:invokeOperation(input, {
        name = "ApplyPendingMaintenanceAction",
        input_schema = types.ApplyPendingMaintenanceActionInput,
        output_schema = types.ApplyPendingMaintenanceActionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:authorizeDBSecurityGroupIngress(input, options)
    return self:invokeOperation(input, {
        name = "AuthorizeDBSecurityGroupIngress",
        input_schema = types.AuthorizeDBSecurityGroupIngressInput,
        output_schema = types.AuthorizeDBSecurityGroupIngressOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:backtrackDBCluster(input, options)
    return self:invokeOperation(input, {
        name = "BacktrackDBCluster",
        input_schema = types.BacktrackDBClusterInput,
        output_schema = types.BacktrackDBClusterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:cancelExportTask(input, options)
    return self:invokeOperation(input, {
        name = "CancelExportTask",
        input_schema = types.CancelExportTaskInput,
        output_schema = types.CancelExportTaskOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:copyDBClusterParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "CopyDBClusterParameterGroup",
        input_schema = types.CopyDBClusterParameterGroupInput,
        output_schema = types.CopyDBClusterParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:copyDBClusterSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CopyDBClusterSnapshot",
        input_schema = types.CopyDBClusterSnapshotInput,
        output_schema = types.CopyDBClusterSnapshotOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:copyDBParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "CopyDBParameterGroup",
        input_schema = types.CopyDBParameterGroupInput,
        output_schema = types.CopyDBParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:copyDBSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CopyDBSnapshot",
        input_schema = types.CopyDBSnapshotInput,
        output_schema = types.CopyDBSnapshotOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:copyOptionGroup(input, options)
    return self:invokeOperation(input, {
        name = "CopyOptionGroup",
        input_schema = types.CopyOptionGroupInput,
        output_schema = types.CopyOptionGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createBlueGreenDeployment(input, options)
    return self:invokeOperation(input, {
        name = "CreateBlueGreenDeployment",
        input_schema = types.CreateBlueGreenDeploymentInput,
        output_schema = types.CreateBlueGreenDeploymentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createCustomDBEngineVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateCustomDBEngineVersion",
        input_schema = types.CreateCustomDBEngineVersionInput,
        output_schema = types.CreateCustomDBEngineVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDBCluster(input, options)
    return self:invokeOperation(input, {
        name = "CreateDBCluster",
        input_schema = types.CreateDBClusterInput,
        output_schema = types.CreateDBClusterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDBClusterEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateDBClusterEndpoint",
        input_schema = types.CreateDBClusterEndpointInput,
        output_schema = types.CreateDBClusterEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDBClusterParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateDBClusterParameterGroup",
        input_schema = types.CreateDBClusterParameterGroupInput,
        output_schema = types.CreateDBClusterParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDBClusterSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CreateDBClusterSnapshot",
        input_schema = types.CreateDBClusterSnapshotInput,
        output_schema = types.CreateDBClusterSnapshotOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDBInstance(input, options)
    return self:invokeOperation(input, {
        name = "CreateDBInstance",
        input_schema = types.CreateDBInstanceInput,
        output_schema = types.CreateDBInstanceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDBInstanceReadReplica(input, options)
    return self:invokeOperation(input, {
        name = "CreateDBInstanceReadReplica",
        input_schema = types.CreateDBInstanceReadReplicaInput,
        output_schema = types.CreateDBInstanceReadReplicaOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDBParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateDBParameterGroup",
        input_schema = types.CreateDBParameterGroupInput,
        output_schema = types.CreateDBParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDBProxy(input, options)
    return self:invokeOperation(input, {
        name = "CreateDBProxy",
        input_schema = types.CreateDBProxyInput,
        output_schema = types.CreateDBProxyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDBProxyEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateDBProxyEndpoint",
        input_schema = types.CreateDBProxyEndpointInput,
        output_schema = types.CreateDBProxyEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDBSecurityGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateDBSecurityGroup",
        input_schema = types.CreateDBSecurityGroupInput,
        output_schema = types.CreateDBSecurityGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDBShardGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateDBShardGroup",
        input_schema = types.CreateDBShardGroupInput,
        output_schema = types.CreateDBShardGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDBSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CreateDBSnapshot",
        input_schema = types.CreateDBSnapshotInput,
        output_schema = types.CreateDBSnapshotOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDBSubnetGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateDBSubnetGroup",
        input_schema = types.CreateDBSubnetGroupInput,
        output_schema = types.CreateDBSubnetGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createEventSubscription(input, options)
    return self:invokeOperation(input, {
        name = "CreateEventSubscription",
        input_schema = types.CreateEventSubscriptionInput,
        output_schema = types.CreateEventSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createGlobalCluster(input, options)
    return self:invokeOperation(input, {
        name = "CreateGlobalCluster",
        input_schema = types.CreateGlobalClusterInput,
        output_schema = types.CreateGlobalClusterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createIntegration(input, options)
    return self:invokeOperation(input, {
        name = "CreateIntegration",
        input_schema = types.CreateIntegrationInput,
        output_schema = types.CreateIntegrationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createOptionGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateOptionGroup",
        input_schema = types.CreateOptionGroupInput,
        output_schema = types.CreateOptionGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createTenantDatabase(input, options)
    return self:invokeOperation(input, {
        name = "CreateTenantDatabase",
        input_schema = types.CreateTenantDatabaseInput,
        output_schema = types.CreateTenantDatabaseOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteBlueGreenDeployment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBlueGreenDeployment",
        input_schema = types.DeleteBlueGreenDeploymentInput,
        output_schema = types.DeleteBlueGreenDeploymentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteCustomDBEngineVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCustomDBEngineVersion",
        input_schema = types.DeleteCustomDBEngineVersionInput,
        output_schema = types.DeleteCustomDBEngineVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDBCluster(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDBCluster",
        input_schema = types.DeleteDBClusterInput,
        output_schema = types.DeleteDBClusterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDBClusterAutomatedBackup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDBClusterAutomatedBackup",
        input_schema = types.DeleteDBClusterAutomatedBackupInput,
        output_schema = types.DeleteDBClusterAutomatedBackupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDBClusterEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDBClusterEndpoint",
        input_schema = types.DeleteDBClusterEndpointInput,
        output_schema = types.DeleteDBClusterEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDBClusterParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDBClusterParameterGroup",
        input_schema = types.DeleteDBClusterParameterGroupInput,
        output_schema = types.DeleteDBClusterParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDBClusterSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDBClusterSnapshot",
        input_schema = types.DeleteDBClusterSnapshotInput,
        output_schema = types.DeleteDBClusterSnapshotOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDBInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDBInstance",
        input_schema = types.DeleteDBInstanceInput,
        output_schema = types.DeleteDBInstanceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDBInstanceAutomatedBackup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDBInstanceAutomatedBackup",
        input_schema = types.DeleteDBInstanceAutomatedBackupInput,
        output_schema = types.DeleteDBInstanceAutomatedBackupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDBParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDBParameterGroup",
        input_schema = types.DeleteDBParameterGroupInput,
        output_schema = types.DeleteDBParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDBProxy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDBProxy",
        input_schema = types.DeleteDBProxyInput,
        output_schema = types.DeleteDBProxyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDBProxyEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDBProxyEndpoint",
        input_schema = types.DeleteDBProxyEndpointInput,
        output_schema = types.DeleteDBProxyEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDBSecurityGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDBSecurityGroup",
        input_schema = types.DeleteDBSecurityGroupInput,
        output_schema = types.DeleteDBSecurityGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDBShardGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDBShardGroup",
        input_schema = types.DeleteDBShardGroupInput,
        output_schema = types.DeleteDBShardGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDBSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDBSnapshot",
        input_schema = types.DeleteDBSnapshotInput,
        output_schema = types.DeleteDBSnapshotOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDBSubnetGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDBSubnetGroup",
        input_schema = types.DeleteDBSubnetGroupInput,
        output_schema = types.DeleteDBSubnetGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteEventSubscription(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventSubscription",
        input_schema = types.DeleteEventSubscriptionInput,
        output_schema = types.DeleteEventSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteGlobalCluster(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGlobalCluster",
        input_schema = types.DeleteGlobalClusterInput,
        output_schema = types.DeleteGlobalClusterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteIntegration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIntegration",
        input_schema = types.DeleteIntegrationInput,
        output_schema = types.DeleteIntegrationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteOptionGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOptionGroup",
        input_schema = types.DeleteOptionGroupInput,
        output_schema = types.DeleteOptionGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteTenantDatabase(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTenantDatabase",
        input_schema = types.DeleteTenantDatabaseInput,
        output_schema = types.DeleteTenantDatabaseOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deregisterDBProxyTargets(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterDBProxyTargets",
        input_schema = types.DeregisterDBProxyTargetsInput,
        output_schema = types.DeregisterDBProxyTargetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAccountAttributes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountAttributes",
        input_schema = types.DescribeAccountAttributesInput,
        output_schema = types.DescribeAccountAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeBlueGreenDeployments(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBlueGreenDeployments",
        input_schema = types.DescribeBlueGreenDeploymentsInput,
        output_schema = types.DescribeBlueGreenDeploymentsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeCertificates(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCertificates",
        input_schema = types.DescribeCertificatesInput,
        output_schema = types.DescribeCertificatesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDBClusterAutomatedBackups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBClusterAutomatedBackups",
        input_schema = types.DescribeDBClusterAutomatedBackupsInput,
        output_schema = types.DescribeDBClusterAutomatedBackupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDBClusterBacktracks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBClusterBacktracks",
        input_schema = types.DescribeDBClusterBacktracksInput,
        output_schema = types.DescribeDBClusterBacktracksOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDBClusterEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBClusterEndpoints",
        input_schema = types.DescribeDBClusterEndpointsInput,
        output_schema = types.DescribeDBClusterEndpointsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDBClusterParameterGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBClusterParameterGroups",
        input_schema = types.DescribeDBClusterParameterGroupsInput,
        output_schema = types.DescribeDBClusterParameterGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDBClusterParameters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBClusterParameters",
        input_schema = types.DescribeDBClusterParametersInput,
        output_schema = types.DescribeDBClusterParametersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDBClusters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBClusters",
        input_schema = types.DescribeDBClustersInput,
        output_schema = types.DescribeDBClustersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDBClusterSnapshotAttributes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBClusterSnapshotAttributes",
        input_schema = types.DescribeDBClusterSnapshotAttributesInput,
        output_schema = types.DescribeDBClusterSnapshotAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDBClusterSnapshots(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBClusterSnapshots",
        input_schema = types.DescribeDBClusterSnapshotsInput,
        output_schema = types.DescribeDBClusterSnapshotsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDBEngineVersions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBEngineVersions",
        input_schema = types.DescribeDBEngineVersionsInput,
        output_schema = types.DescribeDBEngineVersionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDBInstanceAutomatedBackups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBInstanceAutomatedBackups",
        input_schema = types.DescribeDBInstanceAutomatedBackupsInput,
        output_schema = types.DescribeDBInstanceAutomatedBackupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDBInstances(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBInstances",
        input_schema = types.DescribeDBInstancesInput,
        output_schema = types.DescribeDBInstancesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDBLogFiles(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBLogFiles",
        input_schema = types.DescribeDBLogFilesInput,
        output_schema = types.DescribeDBLogFilesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDBMajorEngineVersions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBMajorEngineVersions",
        input_schema = types.DescribeDBMajorEngineVersionsInput,
        output_schema = types.DescribeDBMajorEngineVersionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDBParameterGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBParameterGroups",
        input_schema = types.DescribeDBParameterGroupsInput,
        output_schema = types.DescribeDBParameterGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDBParameters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBParameters",
        input_schema = types.DescribeDBParametersInput,
        output_schema = types.DescribeDBParametersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDBProxies(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBProxies",
        input_schema = types.DescribeDBProxiesInput,
        output_schema = types.DescribeDBProxiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDBProxyEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBProxyEndpoints",
        input_schema = types.DescribeDBProxyEndpointsInput,
        output_schema = types.DescribeDBProxyEndpointsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDBProxyTargetGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBProxyTargetGroups",
        input_schema = types.DescribeDBProxyTargetGroupsInput,
        output_schema = types.DescribeDBProxyTargetGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDBProxyTargets(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBProxyTargets",
        input_schema = types.DescribeDBProxyTargetsInput,
        output_schema = types.DescribeDBProxyTargetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDBRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBRecommendations",
        input_schema = types.DescribeDBRecommendationsInput,
        output_schema = types.DescribeDBRecommendationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDBSecurityGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBSecurityGroups",
        input_schema = types.DescribeDBSecurityGroupsInput,
        output_schema = types.DescribeDBSecurityGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDBShardGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBShardGroups",
        input_schema = types.DescribeDBShardGroupsInput,
        output_schema = types.DescribeDBShardGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDBSnapshotAttributes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBSnapshotAttributes",
        input_schema = types.DescribeDBSnapshotAttributesInput,
        output_schema = types.DescribeDBSnapshotAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDBSnapshots(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBSnapshots",
        input_schema = types.DescribeDBSnapshotsInput,
        output_schema = types.DescribeDBSnapshotsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDBSnapshotTenantDatabases(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBSnapshotTenantDatabases",
        input_schema = types.DescribeDBSnapshotTenantDatabasesInput,
        output_schema = types.DescribeDBSnapshotTenantDatabasesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDBSubnetGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBSubnetGroups",
        input_schema = types.DescribeDBSubnetGroupsInput,
        output_schema = types.DescribeDBSubnetGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeEngineDefaultClusterParameters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEngineDefaultClusterParameters",
        input_schema = types.DescribeEngineDefaultClusterParametersInput,
        output_schema = types.DescribeEngineDefaultClusterParametersOutput,
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

function Client:describeEventCategories(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEventCategories",
        input_schema = types.DescribeEventCategoriesInput,
        output_schema = types.DescribeEventCategoriesOutput,
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

function Client:describeEventSubscriptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEventSubscriptions",
        input_schema = types.DescribeEventSubscriptionsInput,
        output_schema = types.DescribeEventSubscriptionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeExportTasks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeExportTasks",
        input_schema = types.DescribeExportTasksInput,
        output_schema = types.DescribeExportTasksOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeGlobalClusters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGlobalClusters",
        input_schema = types.DescribeGlobalClustersInput,
        output_schema = types.DescribeGlobalClustersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeIntegrations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIntegrations",
        input_schema = types.DescribeIntegrationsInput,
        output_schema = types.DescribeIntegrationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeOptionGroupOptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOptionGroupOptions",
        input_schema = types.DescribeOptionGroupOptionsInput,
        output_schema = types.DescribeOptionGroupOptionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeOptionGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOptionGroups",
        input_schema = types.DescribeOptionGroupsInput,
        output_schema = types.DescribeOptionGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeOrderableDBInstanceOptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOrderableDBInstanceOptions",
        input_schema = types.DescribeOrderableDBInstanceOptionsInput,
        output_schema = types.DescribeOrderableDBInstanceOptionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describePendingMaintenanceActions(input, options)
    return self:invokeOperation(input, {
        name = "DescribePendingMaintenanceActions",
        input_schema = types.DescribePendingMaintenanceActionsInput,
        output_schema = types.DescribePendingMaintenanceActionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeReservedDBInstances(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReservedDBInstances",
        input_schema = types.DescribeReservedDBInstancesInput,
        output_schema = types.DescribeReservedDBInstancesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeReservedDBInstancesOfferings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReservedDBInstancesOfferings",
        input_schema = types.DescribeReservedDBInstancesOfferingsInput,
        output_schema = types.DescribeReservedDBInstancesOfferingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeServerlessV2PlatformVersions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeServerlessV2PlatformVersions",
        input_schema = types.DescribeServerlessV2PlatformVersionsInput,
        output_schema = types.DescribeServerlessV2PlatformVersionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeSourceRegions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSourceRegions",
        input_schema = types.DescribeSourceRegionsInput,
        output_schema = types.DescribeSourceRegionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTenantDatabases(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTenantDatabases",
        input_schema = types.DescribeTenantDatabasesInput,
        output_schema = types.DescribeTenantDatabasesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeValidDBInstanceModifications(input, options)
    return self:invokeOperation(input, {
        name = "DescribeValidDBInstanceModifications",
        input_schema = types.DescribeValidDBInstanceModificationsInput,
        output_schema = types.DescribeValidDBInstanceModificationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disableHttpEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DisableHttpEndpoint",
        input_schema = types.DisableHttpEndpointInput,
        output_schema = types.DisableHttpEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:downloadDBLogFilePortion(input, options)
    return self:invokeOperation(input, {
        name = "DownloadDBLogFilePortion",
        input_schema = types.DownloadDBLogFilePortionInput,
        output_schema = types.DownloadDBLogFilePortionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:enableHttpEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "EnableHttpEndpoint",
        input_schema = types.EnableHttpEndpointInput,
        output_schema = types.EnableHttpEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:failoverDBCluster(input, options)
    return self:invokeOperation(input, {
        name = "FailoverDBCluster",
        input_schema = types.FailoverDBClusterInput,
        output_schema = types.FailoverDBClusterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:failoverGlobalCluster(input, options)
    return self:invokeOperation(input, {
        name = "FailoverGlobalCluster",
        input_schema = types.FailoverGlobalClusterInput,
        output_schema = types.FailoverGlobalClusterOutput,
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

function Client:modifyActivityStream(input, options)
    return self:invokeOperation(input, {
        name = "ModifyActivityStream",
        input_schema = types.ModifyActivityStreamInput,
        output_schema = types.ModifyActivityStreamOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyCertificates(input, options)
    return self:invokeOperation(input, {
        name = "ModifyCertificates",
        input_schema = types.ModifyCertificatesInput,
        output_schema = types.ModifyCertificatesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyCurrentDBClusterCapacity(input, options)
    return self:invokeOperation(input, {
        name = "ModifyCurrentDBClusterCapacity",
        input_schema = types.ModifyCurrentDBClusterCapacityInput,
        output_schema = types.ModifyCurrentDBClusterCapacityOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyCustomDBEngineVersion(input, options)
    return self:invokeOperation(input, {
        name = "ModifyCustomDBEngineVersion",
        input_schema = types.ModifyCustomDBEngineVersionInput,
        output_schema = types.ModifyCustomDBEngineVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyDBCluster(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDBCluster",
        input_schema = types.ModifyDBClusterInput,
        output_schema = types.ModifyDBClusterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyDBClusterEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDBClusterEndpoint",
        input_schema = types.ModifyDBClusterEndpointInput,
        output_schema = types.ModifyDBClusterEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyDBClusterParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDBClusterParameterGroup",
        input_schema = types.ModifyDBClusterParameterGroupInput,
        output_schema = types.ModifyDBClusterParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyDBClusterSnapshotAttribute(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDBClusterSnapshotAttribute",
        input_schema = types.ModifyDBClusterSnapshotAttributeInput,
        output_schema = types.ModifyDBClusterSnapshotAttributeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyDBInstance(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDBInstance",
        input_schema = types.ModifyDBInstanceInput,
        output_schema = types.ModifyDBInstanceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyDBParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDBParameterGroup",
        input_schema = types.ModifyDBParameterGroupInput,
        output_schema = types.ModifyDBParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyDBProxy(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDBProxy",
        input_schema = types.ModifyDBProxyInput,
        output_schema = types.ModifyDBProxyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyDBProxyEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDBProxyEndpoint",
        input_schema = types.ModifyDBProxyEndpointInput,
        output_schema = types.ModifyDBProxyEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyDBProxyTargetGroup(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDBProxyTargetGroup",
        input_schema = types.ModifyDBProxyTargetGroupInput,
        output_schema = types.ModifyDBProxyTargetGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyDBRecommendation(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDBRecommendation",
        input_schema = types.ModifyDBRecommendationInput,
        output_schema = types.ModifyDBRecommendationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyDBShardGroup(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDBShardGroup",
        input_schema = types.ModifyDBShardGroupInput,
        output_schema = types.ModifyDBShardGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyDBSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDBSnapshot",
        input_schema = types.ModifyDBSnapshotInput,
        output_schema = types.ModifyDBSnapshotOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyDBSnapshotAttribute(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDBSnapshotAttribute",
        input_schema = types.ModifyDBSnapshotAttributeInput,
        output_schema = types.ModifyDBSnapshotAttributeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyDBSubnetGroup(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDBSubnetGroup",
        input_schema = types.ModifyDBSubnetGroupInput,
        output_schema = types.ModifyDBSubnetGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyEventSubscription(input, options)
    return self:invokeOperation(input, {
        name = "ModifyEventSubscription",
        input_schema = types.ModifyEventSubscriptionInput,
        output_schema = types.ModifyEventSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyGlobalCluster(input, options)
    return self:invokeOperation(input, {
        name = "ModifyGlobalCluster",
        input_schema = types.ModifyGlobalClusterInput,
        output_schema = types.ModifyGlobalClusterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyIntegration(input, options)
    return self:invokeOperation(input, {
        name = "ModifyIntegration",
        input_schema = types.ModifyIntegrationInput,
        output_schema = types.ModifyIntegrationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyOptionGroup(input, options)
    return self:invokeOperation(input, {
        name = "ModifyOptionGroup",
        input_schema = types.ModifyOptionGroupInput,
        output_schema = types.ModifyOptionGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyTenantDatabase(input, options)
    return self:invokeOperation(input, {
        name = "ModifyTenantDatabase",
        input_schema = types.ModifyTenantDatabaseInput,
        output_schema = types.ModifyTenantDatabaseOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:promoteReadReplica(input, options)
    return self:invokeOperation(input, {
        name = "PromoteReadReplica",
        input_schema = types.PromoteReadReplicaInput,
        output_schema = types.PromoteReadReplicaOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:promoteReadReplicaDBCluster(input, options)
    return self:invokeOperation(input, {
        name = "PromoteReadReplicaDBCluster",
        input_schema = types.PromoteReadReplicaDBClusterInput,
        output_schema = types.PromoteReadReplicaDBClusterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:purchaseReservedDBInstancesOffering(input, options)
    return self:invokeOperation(input, {
        name = "PurchaseReservedDBInstancesOffering",
        input_schema = types.PurchaseReservedDBInstancesOfferingInput,
        output_schema = types.PurchaseReservedDBInstancesOfferingOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:rebootDBCluster(input, options)
    return self:invokeOperation(input, {
        name = "RebootDBCluster",
        input_schema = types.RebootDBClusterInput,
        output_schema = types.RebootDBClusterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:rebootDBInstance(input, options)
    return self:invokeOperation(input, {
        name = "RebootDBInstance",
        input_schema = types.RebootDBInstanceInput,
        output_schema = types.RebootDBInstanceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:rebootDBShardGroup(input, options)
    return self:invokeOperation(input, {
        name = "RebootDBShardGroup",
        input_schema = types.RebootDBShardGroupInput,
        output_schema = types.RebootDBShardGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:registerDBProxyTargets(input, options)
    return self:invokeOperation(input, {
        name = "RegisterDBProxyTargets",
        input_schema = types.RegisterDBProxyTargetsInput,
        output_schema = types.RegisterDBProxyTargetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:removeFromGlobalCluster(input, options)
    return self:invokeOperation(input, {
        name = "RemoveFromGlobalCluster",
        input_schema = types.RemoveFromGlobalClusterInput,
        output_schema = types.RemoveFromGlobalClusterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:removeRoleFromDBCluster(input, options)
    return self:invokeOperation(input, {
        name = "RemoveRoleFromDBCluster",
        input_schema = types.RemoveRoleFromDBClusterInput,
        output_schema = types.RemoveRoleFromDBClusterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:removeRoleFromDBInstance(input, options)
    return self:invokeOperation(input, {
        name = "RemoveRoleFromDBInstance",
        input_schema = types.RemoveRoleFromDBInstanceInput,
        output_schema = types.RemoveRoleFromDBInstanceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:removeSourceIdentifierFromSubscription(input, options)
    return self:invokeOperation(input, {
        name = "RemoveSourceIdentifierFromSubscription",
        input_schema = types.RemoveSourceIdentifierFromSubscriptionInput,
        output_schema = types.RemoveSourceIdentifierFromSubscriptionOutput,
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

function Client:resetDBClusterParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "ResetDBClusterParameterGroup",
        input_schema = types.ResetDBClusterParameterGroupInput,
        output_schema = types.ResetDBClusterParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:resetDBParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "ResetDBParameterGroup",
        input_schema = types.ResetDBParameterGroupInput,
        output_schema = types.ResetDBParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:restoreDBClusterFromS3(input, options)
    return self:invokeOperation(input, {
        name = "RestoreDBClusterFromS3",
        input_schema = types.RestoreDBClusterFromS3Input,
        output_schema = types.RestoreDBClusterFromS3Output,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:restoreDBClusterFromSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "RestoreDBClusterFromSnapshot",
        input_schema = types.RestoreDBClusterFromSnapshotInput,
        output_schema = types.RestoreDBClusterFromSnapshotOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:restoreDBClusterToPointInTime(input, options)
    return self:invokeOperation(input, {
        name = "RestoreDBClusterToPointInTime",
        input_schema = types.RestoreDBClusterToPointInTimeInput,
        output_schema = types.RestoreDBClusterToPointInTimeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:restoreDBInstanceFromDBSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "RestoreDBInstanceFromDBSnapshot",
        input_schema = types.RestoreDBInstanceFromDBSnapshotInput,
        output_schema = types.RestoreDBInstanceFromDBSnapshotOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:restoreDBInstanceFromS3(input, options)
    return self:invokeOperation(input, {
        name = "RestoreDBInstanceFromS3",
        input_schema = types.RestoreDBInstanceFromS3Input,
        output_schema = types.RestoreDBInstanceFromS3Output,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:restoreDBInstanceToPointInTime(input, options)
    return self:invokeOperation(input, {
        name = "RestoreDBInstanceToPointInTime",
        input_schema = types.RestoreDBInstanceToPointInTimeInput,
        output_schema = types.RestoreDBInstanceToPointInTimeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:revokeDBSecurityGroupIngress(input, options)
    return self:invokeOperation(input, {
        name = "RevokeDBSecurityGroupIngress",
        input_schema = types.RevokeDBSecurityGroupIngressInput,
        output_schema = types.RevokeDBSecurityGroupIngressOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startActivityStream(input, options)
    return self:invokeOperation(input, {
        name = "StartActivityStream",
        input_schema = types.StartActivityStreamInput,
        output_schema = types.StartActivityStreamOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startDBCluster(input, options)
    return self:invokeOperation(input, {
        name = "StartDBCluster",
        input_schema = types.StartDBClusterInput,
        output_schema = types.StartDBClusterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startDBInstance(input, options)
    return self:invokeOperation(input, {
        name = "StartDBInstance",
        input_schema = types.StartDBInstanceInput,
        output_schema = types.StartDBInstanceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startDBInstanceAutomatedBackupsReplication(input, options)
    return self:invokeOperation(input, {
        name = "StartDBInstanceAutomatedBackupsReplication",
        input_schema = types.StartDBInstanceAutomatedBackupsReplicationInput,
        output_schema = types.StartDBInstanceAutomatedBackupsReplicationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startExportTask(input, options)
    return self:invokeOperation(input, {
        name = "StartExportTask",
        input_schema = types.StartExportTaskInput,
        output_schema = types.StartExportTaskOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopActivityStream(input, options)
    return self:invokeOperation(input, {
        name = "StopActivityStream",
        input_schema = types.StopActivityStreamInput,
        output_schema = types.StopActivityStreamOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopDBCluster(input, options)
    return self:invokeOperation(input, {
        name = "StopDBCluster",
        input_schema = types.StopDBClusterInput,
        output_schema = types.StopDBClusterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopDBInstance(input, options)
    return self:invokeOperation(input, {
        name = "StopDBInstance",
        input_schema = types.StopDBInstanceInput,
        output_schema = types.StopDBInstanceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopDBInstanceAutomatedBackupsReplication(input, options)
    return self:invokeOperation(input, {
        name = "StopDBInstanceAutomatedBackupsReplication",
        input_schema = types.StopDBInstanceAutomatedBackupsReplicationInput,
        output_schema = types.StopDBInstanceAutomatedBackupsReplicationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:switchoverBlueGreenDeployment(input, options)
    return self:invokeOperation(input, {
        name = "SwitchoverBlueGreenDeployment",
        input_schema = types.SwitchoverBlueGreenDeploymentInput,
        output_schema = types.SwitchoverBlueGreenDeploymentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:switchoverGlobalCluster(input, options)
    return self:invokeOperation(input, {
        name = "SwitchoverGlobalCluster",
        input_schema = types.SwitchoverGlobalClusterInput,
        output_schema = types.SwitchoverGlobalClusterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:switchoverReadReplica(input, options)
    return self:invokeOperation(input, {
        name = "SwitchoverReadReplica",
        input_schema = types.SwitchoverReadReplicaInput,
        output_schema = types.SwitchoverReadReplicaOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
