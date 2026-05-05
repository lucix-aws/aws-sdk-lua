local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("rds.endpoint_rules")
local query_protocol = require("smithy.protocol.query")
local schemas = require("rds.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonRDSv19"
    if not cfg.protocol then
        cfg.protocol = query_protocol.new("awsQuery")
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    if not cfg.auth_scheme_resolver then
        cfg.auth_scheme_resolver = function(operation)
            local options = {}
            for _, scheme_id in ipairs(operation.effective_auth_schemes) do
                if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "rds", signing_region = cfg.region } }
                else
                    options[#options + 1] = { scheme_id = scheme_id }
                end
            end
            return options
        end
    end
    defaults.resolve_auth_schemes(cfg)
    defaults.resolve_identity_resolvers(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:addRoleToDBCluster(input, options)
    return self:invokeOperation(input, {
        name = "AddRoleToDBCluster",
        input_schema = schemas.AddRoleToDBClusterInput,
        output_schema = schemas.AddRoleToDBClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addRoleToDBInstance(input, options)
    return self:invokeOperation(input, {
        name = "AddRoleToDBInstance",
        input_schema = schemas.AddRoleToDBInstanceInput,
        output_schema = schemas.AddRoleToDBInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addSourceIdentifierToSubscription(input, options)
    return self:invokeOperation(input, {
        name = "AddSourceIdentifierToSubscription",
        input_schema = schemas.AddSourceIdentifierToSubscriptionInput,
        output_schema = schemas.AddSourceIdentifierToSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addTagsToResource(input, options)
    return self:invokeOperation(input, {
        name = "AddTagsToResource",
        input_schema = schemas.AddTagsToResourceInput,
        output_schema = schemas.AddTagsToResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:applyPendingMaintenanceAction(input, options)
    return self:invokeOperation(input, {
        name = "ApplyPendingMaintenanceAction",
        input_schema = schemas.ApplyPendingMaintenanceActionInput,
        output_schema = schemas.ApplyPendingMaintenanceActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:authorizeDBSecurityGroupIngress(input, options)
    return self:invokeOperation(input, {
        name = "AuthorizeDBSecurityGroupIngress",
        input_schema = schemas.AuthorizeDBSecurityGroupIngressInput,
        output_schema = schemas.AuthorizeDBSecurityGroupIngressOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:backtrackDBCluster(input, options)
    return self:invokeOperation(input, {
        name = "BacktrackDBCluster",
        input_schema = schemas.BacktrackDBClusterInput,
        output_schema = schemas.BacktrackDBClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelExportTask(input, options)
    return self:invokeOperation(input, {
        name = "CancelExportTask",
        input_schema = schemas.CancelExportTaskInput,
        output_schema = schemas.CancelExportTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:copyDBClusterParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "CopyDBClusterParameterGroup",
        input_schema = schemas.CopyDBClusterParameterGroupInput,
        output_schema = schemas.CopyDBClusterParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:copyDBClusterSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CopyDBClusterSnapshot",
        input_schema = schemas.CopyDBClusterSnapshotInput,
        output_schema = schemas.CopyDBClusterSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:copyDBParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "CopyDBParameterGroup",
        input_schema = schemas.CopyDBParameterGroupInput,
        output_schema = schemas.CopyDBParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:copyDBSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CopyDBSnapshot",
        input_schema = schemas.CopyDBSnapshotInput,
        output_schema = schemas.CopyDBSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:copyOptionGroup(input, options)
    return self:invokeOperation(input, {
        name = "CopyOptionGroup",
        input_schema = schemas.CopyOptionGroupInput,
        output_schema = schemas.CopyOptionGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBlueGreenDeployment(input, options)
    return self:invokeOperation(input, {
        name = "CreateBlueGreenDeployment",
        input_schema = schemas.CreateBlueGreenDeploymentInput,
        output_schema = schemas.CreateBlueGreenDeploymentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCustomDBEngineVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateCustomDBEngineVersion",
        input_schema = schemas.CreateCustomDBEngineVersionInput,
        output_schema = schemas.CreateCustomDBEngineVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDBCluster(input, options)
    return self:invokeOperation(input, {
        name = "CreateDBCluster",
        input_schema = schemas.CreateDBClusterInput,
        output_schema = schemas.CreateDBClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDBClusterEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateDBClusterEndpoint",
        input_schema = schemas.CreateDBClusterEndpointInput,
        output_schema = schemas.CreateDBClusterEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDBClusterParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateDBClusterParameterGroup",
        input_schema = schemas.CreateDBClusterParameterGroupInput,
        output_schema = schemas.CreateDBClusterParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDBClusterSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CreateDBClusterSnapshot",
        input_schema = schemas.CreateDBClusterSnapshotInput,
        output_schema = schemas.CreateDBClusterSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDBInstance(input, options)
    return self:invokeOperation(input, {
        name = "CreateDBInstance",
        input_schema = schemas.CreateDBInstanceInput,
        output_schema = schemas.CreateDBInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDBInstanceReadReplica(input, options)
    return self:invokeOperation(input, {
        name = "CreateDBInstanceReadReplica",
        input_schema = schemas.CreateDBInstanceReadReplicaInput,
        output_schema = schemas.CreateDBInstanceReadReplicaOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDBParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateDBParameterGroup",
        input_schema = schemas.CreateDBParameterGroupInput,
        output_schema = schemas.CreateDBParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDBProxy(input, options)
    return self:invokeOperation(input, {
        name = "CreateDBProxy",
        input_schema = schemas.CreateDBProxyInput,
        output_schema = schemas.CreateDBProxyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDBProxyEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateDBProxyEndpoint",
        input_schema = schemas.CreateDBProxyEndpointInput,
        output_schema = schemas.CreateDBProxyEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDBSecurityGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateDBSecurityGroup",
        input_schema = schemas.CreateDBSecurityGroupInput,
        output_schema = schemas.CreateDBSecurityGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDBShardGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateDBShardGroup",
        input_schema = schemas.CreateDBShardGroupInput,
        output_schema = schemas.CreateDBShardGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDBSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CreateDBSnapshot",
        input_schema = schemas.CreateDBSnapshotInput,
        output_schema = schemas.CreateDBSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDBSubnetGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateDBSubnetGroup",
        input_schema = schemas.CreateDBSubnetGroupInput,
        output_schema = schemas.CreateDBSubnetGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEventSubscription(input, options)
    return self:invokeOperation(input, {
        name = "CreateEventSubscription",
        input_schema = schemas.CreateEventSubscriptionInput,
        output_schema = schemas.CreateEventSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGlobalCluster(input, options)
    return self:invokeOperation(input, {
        name = "CreateGlobalCluster",
        input_schema = schemas.CreateGlobalClusterInput,
        output_schema = schemas.CreateGlobalClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIntegration(input, options)
    return self:invokeOperation(input, {
        name = "CreateIntegration",
        input_schema = schemas.CreateIntegrationInput,
        output_schema = schemas.CreateIntegrationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createOptionGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateOptionGroup",
        input_schema = schemas.CreateOptionGroupInput,
        output_schema = schemas.CreateOptionGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTenantDatabase(input, options)
    return self:invokeOperation(input, {
        name = "CreateTenantDatabase",
        input_schema = schemas.CreateTenantDatabaseInput,
        output_schema = schemas.CreateTenantDatabaseOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBlueGreenDeployment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBlueGreenDeployment",
        input_schema = schemas.DeleteBlueGreenDeploymentInput,
        output_schema = schemas.DeleteBlueGreenDeploymentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCustomDBEngineVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCustomDBEngineVersion",
        input_schema = schemas.DeleteCustomDBEngineVersionInput,
        output_schema = schemas.DeleteCustomDBEngineVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDBCluster(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDBCluster",
        input_schema = schemas.DeleteDBClusterInput,
        output_schema = schemas.DeleteDBClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDBClusterAutomatedBackup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDBClusterAutomatedBackup",
        input_schema = schemas.DeleteDBClusterAutomatedBackupInput,
        output_schema = schemas.DeleteDBClusterAutomatedBackupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDBClusterEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDBClusterEndpoint",
        input_schema = schemas.DeleteDBClusterEndpointInput,
        output_schema = schemas.DeleteDBClusterEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDBClusterParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDBClusterParameterGroup",
        input_schema = schemas.DeleteDBClusterParameterGroupInput,
        output_schema = schemas.DeleteDBClusterParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDBClusterSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDBClusterSnapshot",
        input_schema = schemas.DeleteDBClusterSnapshotInput,
        output_schema = schemas.DeleteDBClusterSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDBInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDBInstance",
        input_schema = schemas.DeleteDBInstanceInput,
        output_schema = schemas.DeleteDBInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDBInstanceAutomatedBackup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDBInstanceAutomatedBackup",
        input_schema = schemas.DeleteDBInstanceAutomatedBackupInput,
        output_schema = schemas.DeleteDBInstanceAutomatedBackupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDBParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDBParameterGroup",
        input_schema = schemas.DeleteDBParameterGroupInput,
        output_schema = schemas.DeleteDBParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDBProxy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDBProxy",
        input_schema = schemas.DeleteDBProxyInput,
        output_schema = schemas.DeleteDBProxyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDBProxyEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDBProxyEndpoint",
        input_schema = schemas.DeleteDBProxyEndpointInput,
        output_schema = schemas.DeleteDBProxyEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDBSecurityGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDBSecurityGroup",
        input_schema = schemas.DeleteDBSecurityGroupInput,
        output_schema = schemas.DeleteDBSecurityGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDBShardGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDBShardGroup",
        input_schema = schemas.DeleteDBShardGroupInput,
        output_schema = schemas.DeleteDBShardGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDBSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDBSnapshot",
        input_schema = schemas.DeleteDBSnapshotInput,
        output_schema = schemas.DeleteDBSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDBSubnetGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDBSubnetGroup",
        input_schema = schemas.DeleteDBSubnetGroupInput,
        output_schema = schemas.DeleteDBSubnetGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEventSubscription(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventSubscription",
        input_schema = schemas.DeleteEventSubscriptionInput,
        output_schema = schemas.DeleteEventSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGlobalCluster(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGlobalCluster",
        input_schema = schemas.DeleteGlobalClusterInput,
        output_schema = schemas.DeleteGlobalClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIntegration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIntegration",
        input_schema = schemas.DeleteIntegrationInput,
        output_schema = schemas.DeleteIntegrationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteOptionGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOptionGroup",
        input_schema = schemas.DeleteOptionGroupInput,
        output_schema = schemas.DeleteOptionGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTenantDatabase(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTenantDatabase",
        input_schema = schemas.DeleteTenantDatabaseInput,
        output_schema = schemas.DeleteTenantDatabaseOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterDBProxyTargets(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterDBProxyTargets",
        input_schema = schemas.DeregisterDBProxyTargetsInput,
        output_schema = schemas.DeregisterDBProxyTargetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAccountAttributes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountAttributes",
        input_schema = schemas.DescribeAccountAttributesInput,
        output_schema = schemas.DescribeAccountAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBlueGreenDeployments(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBlueGreenDeployments",
        input_schema = schemas.DescribeBlueGreenDeploymentsInput,
        output_schema = schemas.DescribeBlueGreenDeploymentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCertificates(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCertificates",
        input_schema = schemas.DescribeCertificatesInput,
        output_schema = schemas.DescribeCertificatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDBClusterAutomatedBackups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBClusterAutomatedBackups",
        input_schema = schemas.DescribeDBClusterAutomatedBackupsInput,
        output_schema = schemas.DescribeDBClusterAutomatedBackupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDBClusterBacktracks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBClusterBacktracks",
        input_schema = schemas.DescribeDBClusterBacktracksInput,
        output_schema = schemas.DescribeDBClusterBacktracksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDBClusterEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBClusterEndpoints",
        input_schema = schemas.DescribeDBClusterEndpointsInput,
        output_schema = schemas.DescribeDBClusterEndpointsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDBClusterParameterGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBClusterParameterGroups",
        input_schema = schemas.DescribeDBClusterParameterGroupsInput,
        output_schema = schemas.DescribeDBClusterParameterGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDBClusterParameters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBClusterParameters",
        input_schema = schemas.DescribeDBClusterParametersInput,
        output_schema = schemas.DescribeDBClusterParametersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDBClusters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBClusters",
        input_schema = schemas.DescribeDBClustersInput,
        output_schema = schemas.DescribeDBClustersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDBClusterSnapshotAttributes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBClusterSnapshotAttributes",
        input_schema = schemas.DescribeDBClusterSnapshotAttributesInput,
        output_schema = schemas.DescribeDBClusterSnapshotAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDBClusterSnapshots(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBClusterSnapshots",
        input_schema = schemas.DescribeDBClusterSnapshotsInput,
        output_schema = schemas.DescribeDBClusterSnapshotsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDBEngineVersions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBEngineVersions",
        input_schema = schemas.DescribeDBEngineVersionsInput,
        output_schema = schemas.DescribeDBEngineVersionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDBInstanceAutomatedBackups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBInstanceAutomatedBackups",
        input_schema = schemas.DescribeDBInstanceAutomatedBackupsInput,
        output_schema = schemas.DescribeDBInstanceAutomatedBackupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDBInstances(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBInstances",
        input_schema = schemas.DescribeDBInstancesInput,
        output_schema = schemas.DescribeDBInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDBLogFiles(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBLogFiles",
        input_schema = schemas.DescribeDBLogFilesInput,
        output_schema = schemas.DescribeDBLogFilesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDBMajorEngineVersions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBMajorEngineVersions",
        input_schema = schemas.DescribeDBMajorEngineVersionsInput,
        output_schema = schemas.DescribeDBMajorEngineVersionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDBParameterGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBParameterGroups",
        input_schema = schemas.DescribeDBParameterGroupsInput,
        output_schema = schemas.DescribeDBParameterGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDBParameters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBParameters",
        input_schema = schemas.DescribeDBParametersInput,
        output_schema = schemas.DescribeDBParametersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDBProxies(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBProxies",
        input_schema = schemas.DescribeDBProxiesInput,
        output_schema = schemas.DescribeDBProxiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDBProxyEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBProxyEndpoints",
        input_schema = schemas.DescribeDBProxyEndpointsInput,
        output_schema = schemas.DescribeDBProxyEndpointsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDBProxyTargetGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBProxyTargetGroups",
        input_schema = schemas.DescribeDBProxyTargetGroupsInput,
        output_schema = schemas.DescribeDBProxyTargetGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDBProxyTargets(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBProxyTargets",
        input_schema = schemas.DescribeDBProxyTargetsInput,
        output_schema = schemas.DescribeDBProxyTargetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDBRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBRecommendations",
        input_schema = schemas.DescribeDBRecommendationsInput,
        output_schema = schemas.DescribeDBRecommendationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDBSecurityGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBSecurityGroups",
        input_schema = schemas.DescribeDBSecurityGroupsInput,
        output_schema = schemas.DescribeDBSecurityGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDBShardGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBShardGroups",
        input_schema = schemas.DescribeDBShardGroupsInput,
        output_schema = schemas.DescribeDBShardGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDBSnapshotAttributes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBSnapshotAttributes",
        input_schema = schemas.DescribeDBSnapshotAttributesInput,
        output_schema = schemas.DescribeDBSnapshotAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDBSnapshots(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBSnapshots",
        input_schema = schemas.DescribeDBSnapshotsInput,
        output_schema = schemas.DescribeDBSnapshotsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDBSnapshotTenantDatabases(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBSnapshotTenantDatabases",
        input_schema = schemas.DescribeDBSnapshotTenantDatabasesInput,
        output_schema = schemas.DescribeDBSnapshotTenantDatabasesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDBSubnetGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDBSubnetGroups",
        input_schema = schemas.DescribeDBSubnetGroupsInput,
        output_schema = schemas.DescribeDBSubnetGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEngineDefaultClusterParameters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEngineDefaultClusterParameters",
        input_schema = schemas.DescribeEngineDefaultClusterParametersInput,
        output_schema = schemas.DescribeEngineDefaultClusterParametersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEngineDefaultParameters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEngineDefaultParameters",
        input_schema = schemas.DescribeEngineDefaultParametersInput,
        output_schema = schemas.DescribeEngineDefaultParametersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEventCategories(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEventCategories",
        input_schema = schemas.DescribeEventCategoriesInput,
        output_schema = schemas.DescribeEventCategoriesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEvents(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEvents",
        input_schema = schemas.DescribeEventsInput,
        output_schema = schemas.DescribeEventsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEventSubscriptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEventSubscriptions",
        input_schema = schemas.DescribeEventSubscriptionsInput,
        output_schema = schemas.DescribeEventSubscriptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeExportTasks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeExportTasks",
        input_schema = schemas.DescribeExportTasksInput,
        output_schema = schemas.DescribeExportTasksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeGlobalClusters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGlobalClusters",
        input_schema = schemas.DescribeGlobalClustersInput,
        output_schema = schemas.DescribeGlobalClustersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeIntegrations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIntegrations",
        input_schema = schemas.DescribeIntegrationsInput,
        output_schema = schemas.DescribeIntegrationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeOptionGroupOptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOptionGroupOptions",
        input_schema = schemas.DescribeOptionGroupOptionsInput,
        output_schema = schemas.DescribeOptionGroupOptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeOptionGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOptionGroups",
        input_schema = schemas.DescribeOptionGroupsInput,
        output_schema = schemas.DescribeOptionGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeOrderableDBInstanceOptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOrderableDBInstanceOptions",
        input_schema = schemas.DescribeOrderableDBInstanceOptionsInput,
        output_schema = schemas.DescribeOrderableDBInstanceOptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePendingMaintenanceActions(input, options)
    return self:invokeOperation(input, {
        name = "DescribePendingMaintenanceActions",
        input_schema = schemas.DescribePendingMaintenanceActionsInput,
        output_schema = schemas.DescribePendingMaintenanceActionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReservedDBInstances(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReservedDBInstances",
        input_schema = schemas.DescribeReservedDBInstancesInput,
        output_schema = schemas.DescribeReservedDBInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReservedDBInstancesOfferings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReservedDBInstancesOfferings",
        input_schema = schemas.DescribeReservedDBInstancesOfferingsInput,
        output_schema = schemas.DescribeReservedDBInstancesOfferingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeServerlessV2PlatformVersions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeServerlessV2PlatformVersions",
        input_schema = schemas.DescribeServerlessV2PlatformVersionsInput,
        output_schema = schemas.DescribeServerlessV2PlatformVersionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSourceRegions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSourceRegions",
        input_schema = schemas.DescribeSourceRegionsInput,
        output_schema = schemas.DescribeSourceRegionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTenantDatabases(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTenantDatabases",
        input_schema = schemas.DescribeTenantDatabasesInput,
        output_schema = schemas.DescribeTenantDatabasesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeValidDBInstanceModifications(input, options)
    return self:invokeOperation(input, {
        name = "DescribeValidDBInstanceModifications",
        input_schema = schemas.DescribeValidDBInstanceModificationsInput,
        output_schema = schemas.DescribeValidDBInstanceModificationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableHttpEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DisableHttpEndpoint",
        input_schema = schemas.DisableHttpEndpointInput,
        output_schema = schemas.DisableHttpEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:downloadDBLogFilePortion(input, options)
    return self:invokeOperation(input, {
        name = "DownloadDBLogFilePortion",
        input_schema = schemas.DownloadDBLogFilePortionInput,
        output_schema = schemas.DownloadDBLogFilePortionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableHttpEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "EnableHttpEndpoint",
        input_schema = schemas.EnableHttpEndpointInput,
        output_schema = schemas.EnableHttpEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:failoverDBCluster(input, options)
    return self:invokeOperation(input, {
        name = "FailoverDBCluster",
        input_schema = schemas.FailoverDBClusterInput,
        output_schema = schemas.FailoverDBClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:failoverGlobalCluster(input, options)
    return self:invokeOperation(input, {
        name = "FailoverGlobalCluster",
        input_schema = schemas.FailoverGlobalClusterInput,
        output_schema = schemas.FailoverGlobalClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyActivityStream(input, options)
    return self:invokeOperation(input, {
        name = "ModifyActivityStream",
        input_schema = schemas.ModifyActivityStreamInput,
        output_schema = schemas.ModifyActivityStreamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyCertificates(input, options)
    return self:invokeOperation(input, {
        name = "ModifyCertificates",
        input_schema = schemas.ModifyCertificatesInput,
        output_schema = schemas.ModifyCertificatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyCurrentDBClusterCapacity(input, options)
    return self:invokeOperation(input, {
        name = "ModifyCurrentDBClusterCapacity",
        input_schema = schemas.ModifyCurrentDBClusterCapacityInput,
        output_schema = schemas.ModifyCurrentDBClusterCapacityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyCustomDBEngineVersion(input, options)
    return self:invokeOperation(input, {
        name = "ModifyCustomDBEngineVersion",
        input_schema = schemas.ModifyCustomDBEngineVersionInput,
        output_schema = schemas.ModifyCustomDBEngineVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyDBCluster(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDBCluster",
        input_schema = schemas.ModifyDBClusterInput,
        output_schema = schemas.ModifyDBClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyDBClusterEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDBClusterEndpoint",
        input_schema = schemas.ModifyDBClusterEndpointInput,
        output_schema = schemas.ModifyDBClusterEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyDBClusterParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDBClusterParameterGroup",
        input_schema = schemas.ModifyDBClusterParameterGroupInput,
        output_schema = schemas.ModifyDBClusterParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyDBClusterSnapshotAttribute(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDBClusterSnapshotAttribute",
        input_schema = schemas.ModifyDBClusterSnapshotAttributeInput,
        output_schema = schemas.ModifyDBClusterSnapshotAttributeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyDBInstance(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDBInstance",
        input_schema = schemas.ModifyDBInstanceInput,
        output_schema = schemas.ModifyDBInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyDBParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDBParameterGroup",
        input_schema = schemas.ModifyDBParameterGroupInput,
        output_schema = schemas.ModifyDBParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyDBProxy(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDBProxy",
        input_schema = schemas.ModifyDBProxyInput,
        output_schema = schemas.ModifyDBProxyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyDBProxyEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDBProxyEndpoint",
        input_schema = schemas.ModifyDBProxyEndpointInput,
        output_schema = schemas.ModifyDBProxyEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyDBProxyTargetGroup(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDBProxyTargetGroup",
        input_schema = schemas.ModifyDBProxyTargetGroupInput,
        output_schema = schemas.ModifyDBProxyTargetGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyDBRecommendation(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDBRecommendation",
        input_schema = schemas.ModifyDBRecommendationInput,
        output_schema = schemas.ModifyDBRecommendationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyDBShardGroup(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDBShardGroup",
        input_schema = schemas.ModifyDBShardGroupInput,
        output_schema = schemas.ModifyDBShardGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyDBSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDBSnapshot",
        input_schema = schemas.ModifyDBSnapshotInput,
        output_schema = schemas.ModifyDBSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyDBSnapshotAttribute(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDBSnapshotAttribute",
        input_schema = schemas.ModifyDBSnapshotAttributeInput,
        output_schema = schemas.ModifyDBSnapshotAttributeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyDBSubnetGroup(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDBSubnetGroup",
        input_schema = schemas.ModifyDBSubnetGroupInput,
        output_schema = schemas.ModifyDBSubnetGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyEventSubscription(input, options)
    return self:invokeOperation(input, {
        name = "ModifyEventSubscription",
        input_schema = schemas.ModifyEventSubscriptionInput,
        output_schema = schemas.ModifyEventSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyGlobalCluster(input, options)
    return self:invokeOperation(input, {
        name = "ModifyGlobalCluster",
        input_schema = schemas.ModifyGlobalClusterInput,
        output_schema = schemas.ModifyGlobalClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyIntegration(input, options)
    return self:invokeOperation(input, {
        name = "ModifyIntegration",
        input_schema = schemas.ModifyIntegrationInput,
        output_schema = schemas.ModifyIntegrationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyOptionGroup(input, options)
    return self:invokeOperation(input, {
        name = "ModifyOptionGroup",
        input_schema = schemas.ModifyOptionGroupInput,
        output_schema = schemas.ModifyOptionGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyTenantDatabase(input, options)
    return self:invokeOperation(input, {
        name = "ModifyTenantDatabase",
        input_schema = schemas.ModifyTenantDatabaseInput,
        output_schema = schemas.ModifyTenantDatabaseOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:promoteReadReplica(input, options)
    return self:invokeOperation(input, {
        name = "PromoteReadReplica",
        input_schema = schemas.PromoteReadReplicaInput,
        output_schema = schemas.PromoteReadReplicaOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:promoteReadReplicaDBCluster(input, options)
    return self:invokeOperation(input, {
        name = "PromoteReadReplicaDBCluster",
        input_schema = schemas.PromoteReadReplicaDBClusterInput,
        output_schema = schemas.PromoteReadReplicaDBClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:purchaseReservedDBInstancesOffering(input, options)
    return self:invokeOperation(input, {
        name = "PurchaseReservedDBInstancesOffering",
        input_schema = schemas.PurchaseReservedDBInstancesOfferingInput,
        output_schema = schemas.PurchaseReservedDBInstancesOfferingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rebootDBCluster(input, options)
    return self:invokeOperation(input, {
        name = "RebootDBCluster",
        input_schema = schemas.RebootDBClusterInput,
        output_schema = schemas.RebootDBClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rebootDBInstance(input, options)
    return self:invokeOperation(input, {
        name = "RebootDBInstance",
        input_schema = schemas.RebootDBInstanceInput,
        output_schema = schemas.RebootDBInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rebootDBShardGroup(input, options)
    return self:invokeOperation(input, {
        name = "RebootDBShardGroup",
        input_schema = schemas.RebootDBShardGroupInput,
        output_schema = schemas.RebootDBShardGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerDBProxyTargets(input, options)
    return self:invokeOperation(input, {
        name = "RegisterDBProxyTargets",
        input_schema = schemas.RegisterDBProxyTargetsInput,
        output_schema = schemas.RegisterDBProxyTargetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeFromGlobalCluster(input, options)
    return self:invokeOperation(input, {
        name = "RemoveFromGlobalCluster",
        input_schema = schemas.RemoveFromGlobalClusterInput,
        output_schema = schemas.RemoveFromGlobalClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeRoleFromDBCluster(input, options)
    return self:invokeOperation(input, {
        name = "RemoveRoleFromDBCluster",
        input_schema = schemas.RemoveRoleFromDBClusterInput,
        output_schema = schemas.RemoveRoleFromDBClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeRoleFromDBInstance(input, options)
    return self:invokeOperation(input, {
        name = "RemoveRoleFromDBInstance",
        input_schema = schemas.RemoveRoleFromDBInstanceInput,
        output_schema = schemas.RemoveRoleFromDBInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeSourceIdentifierFromSubscription(input, options)
    return self:invokeOperation(input, {
        name = "RemoveSourceIdentifierFromSubscription",
        input_schema = schemas.RemoveSourceIdentifierFromSubscriptionInput,
        output_schema = schemas.RemoveSourceIdentifierFromSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeTagsFromResource(input, options)
    return self:invokeOperation(input, {
        name = "RemoveTagsFromResource",
        input_schema = schemas.RemoveTagsFromResourceInput,
        output_schema = schemas.RemoveTagsFromResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resetDBClusterParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "ResetDBClusterParameterGroup",
        input_schema = schemas.ResetDBClusterParameterGroupInput,
        output_schema = schemas.ResetDBClusterParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resetDBParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "ResetDBParameterGroup",
        input_schema = schemas.ResetDBParameterGroupInput,
        output_schema = schemas.ResetDBParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restoreDBClusterFromS3(input, options)
    return self:invokeOperation(input, {
        name = "RestoreDBClusterFromS3",
        input_schema = schemas.RestoreDBClusterFromS3Input,
        output_schema = schemas.RestoreDBClusterFromS3Output,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restoreDBClusterFromSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "RestoreDBClusterFromSnapshot",
        input_schema = schemas.RestoreDBClusterFromSnapshotInput,
        output_schema = schemas.RestoreDBClusterFromSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restoreDBClusterToPointInTime(input, options)
    return self:invokeOperation(input, {
        name = "RestoreDBClusterToPointInTime",
        input_schema = schemas.RestoreDBClusterToPointInTimeInput,
        output_schema = schemas.RestoreDBClusterToPointInTimeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restoreDBInstanceFromDBSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "RestoreDBInstanceFromDBSnapshot",
        input_schema = schemas.RestoreDBInstanceFromDBSnapshotInput,
        output_schema = schemas.RestoreDBInstanceFromDBSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restoreDBInstanceFromS3(input, options)
    return self:invokeOperation(input, {
        name = "RestoreDBInstanceFromS3",
        input_schema = schemas.RestoreDBInstanceFromS3Input,
        output_schema = schemas.RestoreDBInstanceFromS3Output,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restoreDBInstanceToPointInTime(input, options)
    return self:invokeOperation(input, {
        name = "RestoreDBInstanceToPointInTime",
        input_schema = schemas.RestoreDBInstanceToPointInTimeInput,
        output_schema = schemas.RestoreDBInstanceToPointInTimeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:revokeDBSecurityGroupIngress(input, options)
    return self:invokeOperation(input, {
        name = "RevokeDBSecurityGroupIngress",
        input_schema = schemas.RevokeDBSecurityGroupIngressInput,
        output_schema = schemas.RevokeDBSecurityGroupIngressOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startActivityStream(input, options)
    return self:invokeOperation(input, {
        name = "StartActivityStream",
        input_schema = schemas.StartActivityStreamInput,
        output_schema = schemas.StartActivityStreamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startDBCluster(input, options)
    return self:invokeOperation(input, {
        name = "StartDBCluster",
        input_schema = schemas.StartDBClusterInput,
        output_schema = schemas.StartDBClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startDBInstance(input, options)
    return self:invokeOperation(input, {
        name = "StartDBInstance",
        input_schema = schemas.StartDBInstanceInput,
        output_schema = schemas.StartDBInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startDBInstanceAutomatedBackupsReplication(input, options)
    return self:invokeOperation(input, {
        name = "StartDBInstanceAutomatedBackupsReplication",
        input_schema = schemas.StartDBInstanceAutomatedBackupsReplicationInput,
        output_schema = schemas.StartDBInstanceAutomatedBackupsReplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startExportTask(input, options)
    return self:invokeOperation(input, {
        name = "StartExportTask",
        input_schema = schemas.StartExportTaskInput,
        output_schema = schemas.StartExportTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopActivityStream(input, options)
    return self:invokeOperation(input, {
        name = "StopActivityStream",
        input_schema = schemas.StopActivityStreamInput,
        output_schema = schemas.StopActivityStreamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopDBCluster(input, options)
    return self:invokeOperation(input, {
        name = "StopDBCluster",
        input_schema = schemas.StopDBClusterInput,
        output_schema = schemas.StopDBClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopDBInstance(input, options)
    return self:invokeOperation(input, {
        name = "StopDBInstance",
        input_schema = schemas.StopDBInstanceInput,
        output_schema = schemas.StopDBInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopDBInstanceAutomatedBackupsReplication(input, options)
    return self:invokeOperation(input, {
        name = "StopDBInstanceAutomatedBackupsReplication",
        input_schema = schemas.StopDBInstanceAutomatedBackupsReplicationInput,
        output_schema = schemas.StopDBInstanceAutomatedBackupsReplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:switchoverBlueGreenDeployment(input, options)
    return self:invokeOperation(input, {
        name = "SwitchoverBlueGreenDeployment",
        input_schema = schemas.SwitchoverBlueGreenDeploymentInput,
        output_schema = schemas.SwitchoverBlueGreenDeploymentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:switchoverGlobalCluster(input, options)
    return self:invokeOperation(input, {
        name = "SwitchoverGlobalCluster",
        input_schema = schemas.SwitchoverGlobalClusterInput,
        output_schema = schemas.SwitchoverGlobalClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:switchoverReadReplica(input, options)
    return self:invokeOperation(input, {
        name = "SwitchoverReadReplica",
        input_schema = schemas.SwitchoverReadReplicaInput,
        output_schema = schemas.SwitchoverReadReplicaOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
