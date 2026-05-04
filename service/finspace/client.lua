local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("finspace.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("finspace.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSHabaneroManagementService"
    cfg.signing_name = "awshabaneromanagementservice"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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

function Client:createEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "CreateEnvironment",
        input_schema = types.CreateEnvironmentInput,
        output_schema = types.CreateEnvironmentOutput,
        http_method = "POST",
        http_path = "/environment",
    }, options)
end

function Client:createKxChangeset(input, options)
    return self:invokeOperation(input, {
        name = "CreateKxChangeset",
        input_schema = types.CreateKxChangesetInput,
        output_schema = types.CreateKxChangesetOutput,
        http_method = "POST",
        http_path = "/kx/environments/{environmentId}/databases/{databaseName}/changesets",
    }, options)
end

function Client:createKxCluster(input, options)
    return self:invokeOperation(input, {
        name = "CreateKxCluster",
        input_schema = types.CreateKxClusterInput,
        output_schema = types.CreateKxClusterOutput,
        http_method = "POST",
        http_path = "/kx/environments/{environmentId}/clusters",
    }, options)
end

function Client:createKxDatabase(input, options)
    return self:invokeOperation(input, {
        name = "CreateKxDatabase",
        input_schema = types.CreateKxDatabaseInput,
        output_schema = types.CreateKxDatabaseOutput,
        http_method = "POST",
        http_path = "/kx/environments/{environmentId}/databases",
    }, options)
end

function Client:createKxDataview(input, options)
    return self:invokeOperation(input, {
        name = "CreateKxDataview",
        input_schema = types.CreateKxDataviewInput,
        output_schema = types.CreateKxDataviewOutput,
        http_method = "POST",
        http_path = "/kx/environments/{environmentId}/databases/{databaseName}/dataviews",
    }, options)
end

function Client:createKxEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "CreateKxEnvironment",
        input_schema = types.CreateKxEnvironmentInput,
        output_schema = types.CreateKxEnvironmentOutput,
        http_method = "POST",
        http_path = "/kx/environments",
    }, options)
end

function Client:createKxScalingGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateKxScalingGroup",
        input_schema = types.CreateKxScalingGroupInput,
        output_schema = types.CreateKxScalingGroupOutput,
        http_method = "POST",
        http_path = "/kx/environments/{environmentId}/scalingGroups",
    }, options)
end

function Client:createKxUser(input, options)
    return self:invokeOperation(input, {
        name = "CreateKxUser",
        input_schema = types.CreateKxUserInput,
        output_schema = types.CreateKxUserOutput,
        http_method = "POST",
        http_path = "/kx/environments/{environmentId}/users",
    }, options)
end

function Client:createKxVolume(input, options)
    return self:invokeOperation(input, {
        name = "CreateKxVolume",
        input_schema = types.CreateKxVolumeInput,
        output_schema = types.CreateKxVolumeOutput,
        http_method = "POST",
        http_path = "/kx/environments/{environmentId}/kxvolumes",
    }, options)
end

function Client:deleteEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEnvironment",
        input_schema = types.DeleteEnvironmentInput,
        output_schema = types.DeleteEnvironmentOutput,
        http_method = "DELETE",
        http_path = "/environment/{environmentId}",
    }, options)
end

function Client:deleteKxCluster(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKxCluster",
        input_schema = types.DeleteKxClusterInput,
        output_schema = types.DeleteKxClusterOutput,
        http_method = "DELETE",
        http_path = "/kx/environments/{environmentId}/clusters/{clusterName}",
    }, options)
end

function Client:deleteKxClusterNode(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKxClusterNode",
        input_schema = types.DeleteKxClusterNodeInput,
        output_schema = types.DeleteKxClusterNodeOutput,
        http_method = "DELETE",
        http_path = "/kx/environments/{environmentId}/clusters/{clusterName}/nodes/{nodeId}",
    }, options)
end

function Client:deleteKxDatabase(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKxDatabase",
        input_schema = types.DeleteKxDatabaseInput,
        output_schema = types.DeleteKxDatabaseOutput,
        http_method = "DELETE",
        http_path = "/kx/environments/{environmentId}/databases/{databaseName}",
    }, options)
end

function Client:deleteKxDataview(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKxDataview",
        input_schema = types.DeleteKxDataviewInput,
        output_schema = types.DeleteKxDataviewOutput,
        http_method = "DELETE",
        http_path = "/kx/environments/{environmentId}/databases/{databaseName}/dataviews/{dataviewName}",
    }, options)
end

function Client:deleteKxEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKxEnvironment",
        input_schema = types.DeleteKxEnvironmentInput,
        output_schema = types.DeleteKxEnvironmentOutput,
        http_method = "DELETE",
        http_path = "/kx/environments/{environmentId}",
    }, options)
end

function Client:deleteKxScalingGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKxScalingGroup",
        input_schema = types.DeleteKxScalingGroupInput,
        output_schema = types.DeleteKxScalingGroupOutput,
        http_method = "DELETE",
        http_path = "/kx/environments/{environmentId}/scalingGroups/{scalingGroupName}",
    }, options)
end

function Client:deleteKxUser(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKxUser",
        input_schema = types.DeleteKxUserInput,
        output_schema = types.DeleteKxUserOutput,
        http_method = "DELETE",
        http_path = "/kx/environments/{environmentId}/users/{userName}",
    }, options)
end

function Client:deleteKxVolume(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKxVolume",
        input_schema = types.DeleteKxVolumeInput,
        output_schema = types.DeleteKxVolumeOutput,
        http_method = "DELETE",
        http_path = "/kx/environments/{environmentId}/kxvolumes/{volumeName}",
    }, options)
end

function Client:getEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "GetEnvironment",
        input_schema = types.GetEnvironmentInput,
        output_schema = types.GetEnvironmentOutput,
        http_method = "GET",
        http_path = "/environment/{environmentId}",
    }, options)
end

function Client:getKxChangeset(input, options)
    return self:invokeOperation(input, {
        name = "GetKxChangeset",
        input_schema = types.GetKxChangesetInput,
        output_schema = types.GetKxChangesetOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/databases/{databaseName}/changesets/{changesetId}",
    }, options)
end

function Client:getKxCluster(input, options)
    return self:invokeOperation(input, {
        name = "GetKxCluster",
        input_schema = types.GetKxClusterInput,
        output_schema = types.GetKxClusterOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/clusters/{clusterName}",
    }, options)
end

function Client:getKxConnectionString(input, options)
    return self:invokeOperation(input, {
        name = "GetKxConnectionString",
        input_schema = types.GetKxConnectionStringInput,
        output_schema = types.GetKxConnectionStringOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/connectionString",
    }, options)
end

function Client:getKxDatabase(input, options)
    return self:invokeOperation(input, {
        name = "GetKxDatabase",
        input_schema = types.GetKxDatabaseInput,
        output_schema = types.GetKxDatabaseOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/databases/{databaseName}",
    }, options)
end

function Client:getKxDataview(input, options)
    return self:invokeOperation(input, {
        name = "GetKxDataview",
        input_schema = types.GetKxDataviewInput,
        output_schema = types.GetKxDataviewOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/databases/{databaseName}/dataviews/{dataviewName}",
    }, options)
end

function Client:getKxEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "GetKxEnvironment",
        input_schema = types.GetKxEnvironmentInput,
        output_schema = types.GetKxEnvironmentOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}",
    }, options)
end

function Client:getKxScalingGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetKxScalingGroup",
        input_schema = types.GetKxScalingGroupInput,
        output_schema = types.GetKxScalingGroupOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/scalingGroups/{scalingGroupName}",
    }, options)
end

function Client:getKxUser(input, options)
    return self:invokeOperation(input, {
        name = "GetKxUser",
        input_schema = types.GetKxUserInput,
        output_schema = types.GetKxUserOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/users/{userName}",
    }, options)
end

function Client:getKxVolume(input, options)
    return self:invokeOperation(input, {
        name = "GetKxVolume",
        input_schema = types.GetKxVolumeInput,
        output_schema = types.GetKxVolumeOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/kxvolumes/{volumeName}",
    }, options)
end

function Client:listEnvironments(input, options)
    return self:invokeOperation(input, {
        name = "ListEnvironments",
        input_schema = types.ListEnvironmentsInput,
        output_schema = types.ListEnvironmentsOutput,
        http_method = "GET",
        http_path = "/environment",
    }, options)
end

function Client:listKxChangesets(input, options)
    return self:invokeOperation(input, {
        name = "ListKxChangesets",
        input_schema = types.ListKxChangesetsInput,
        output_schema = types.ListKxChangesetsOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/databases/{databaseName}/changesets",
    }, options)
end

function Client:listKxClusterNodes(input, options)
    return self:invokeOperation(input, {
        name = "ListKxClusterNodes",
        input_schema = types.ListKxClusterNodesInput,
        output_schema = types.ListKxClusterNodesOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/clusters/{clusterName}/nodes",
    }, options)
end

function Client:listKxClusters(input, options)
    return self:invokeOperation(input, {
        name = "ListKxClusters",
        input_schema = types.ListKxClustersInput,
        output_schema = types.ListKxClustersOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/clusters",
    }, options)
end

function Client:listKxDatabases(input, options)
    return self:invokeOperation(input, {
        name = "ListKxDatabases",
        input_schema = types.ListKxDatabasesInput,
        output_schema = types.ListKxDatabasesOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/databases",
    }, options)
end

function Client:listKxDataviews(input, options)
    return self:invokeOperation(input, {
        name = "ListKxDataviews",
        input_schema = types.ListKxDataviewsInput,
        output_schema = types.ListKxDataviewsOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/databases/{databaseName}/dataviews",
    }, options)
end

function Client:listKxEnvironments(input, options)
    return self:invokeOperation(input, {
        name = "ListKxEnvironments",
        input_schema = types.ListKxEnvironmentsInput,
        output_schema = types.ListKxEnvironmentsOutput,
        http_method = "GET",
        http_path = "/kx/environments",
    }, options)
end

function Client:listKxScalingGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListKxScalingGroups",
        input_schema = types.ListKxScalingGroupsInput,
        output_schema = types.ListKxScalingGroupsOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/scalingGroups",
    }, options)
end

function Client:listKxUsers(input, options)
    return self:invokeOperation(input, {
        name = "ListKxUsers",
        input_schema = types.ListKxUsersInput,
        output_schema = types.ListKxUsersOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/users",
    }, options)
end

function Client:listKxVolumes(input, options)
    return self:invokeOperation(input, {
        name = "ListKxVolumes",
        input_schema = types.ListKxVolumesInput,
        output_schema = types.ListKxVolumesOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/kxvolumes",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:updateEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEnvironment",
        input_schema = types.UpdateEnvironmentInput,
        output_schema = types.UpdateEnvironmentOutput,
        http_method = "PUT",
        http_path = "/environment/{environmentId}",
    }, options)
end

function Client:updateKxClusterCodeConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateKxClusterCodeConfiguration",
        input_schema = types.UpdateKxClusterCodeConfigurationInput,
        output_schema = types.UpdateKxClusterCodeConfigurationOutput,
        http_method = "PUT",
        http_path = "/kx/environments/{environmentId}/clusters/{clusterName}/configuration/code",
    }, options)
end

function Client:updateKxClusterDatabases(input, options)
    return self:invokeOperation(input, {
        name = "UpdateKxClusterDatabases",
        input_schema = types.UpdateKxClusterDatabasesInput,
        output_schema = types.UpdateKxClusterDatabasesOutput,
        http_method = "PUT",
        http_path = "/kx/environments/{environmentId}/clusters/{clusterName}/configuration/databases",
    }, options)
end

function Client:updateKxDatabase(input, options)
    return self:invokeOperation(input, {
        name = "UpdateKxDatabase",
        input_schema = types.UpdateKxDatabaseInput,
        output_schema = types.UpdateKxDatabaseOutput,
        http_method = "PUT",
        http_path = "/kx/environments/{environmentId}/databases/{databaseName}",
    }, options)
end

function Client:updateKxDataview(input, options)
    return self:invokeOperation(input, {
        name = "UpdateKxDataview",
        input_schema = types.UpdateKxDataviewInput,
        output_schema = types.UpdateKxDataviewOutput,
        http_method = "PUT",
        http_path = "/kx/environments/{environmentId}/databases/{databaseName}/dataviews/{dataviewName}",
    }, options)
end

function Client:updateKxEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateKxEnvironment",
        input_schema = types.UpdateKxEnvironmentInput,
        output_schema = types.UpdateKxEnvironmentOutput,
        http_method = "PUT",
        http_path = "/kx/environments/{environmentId}",
    }, options)
end

function Client:updateKxEnvironmentNetwork(input, options)
    return self:invokeOperation(input, {
        name = "UpdateKxEnvironmentNetwork",
        input_schema = types.UpdateKxEnvironmentNetworkInput,
        output_schema = types.UpdateKxEnvironmentNetworkOutput,
        http_method = "PUT",
        http_path = "/kx/environments/{environmentId}/network",
    }, options)
end

function Client:updateKxUser(input, options)
    return self:invokeOperation(input, {
        name = "UpdateKxUser",
        input_schema = types.UpdateKxUserInput,
        output_schema = types.UpdateKxUserOutput,
        http_method = "PUT",
        http_path = "/kx/environments/{environmentId}/users/{userName}",
    }, options)
end

function Client:updateKxVolume(input, options)
    return self:invokeOperation(input, {
        name = "UpdateKxVolume",
        input_schema = types.UpdateKxVolumeInput,
        output_schema = types.UpdateKxVolumeOutput,
        http_method = "PATCH",
        http_path = "/kx/environments/{environmentId}/kxvolumes/{volumeName}",
    }, options)
end

return M
