local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("finspace.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("finspace.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSHabaneroManagementService"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "finspace", signing_region = cfg.region } }
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

function Client:createEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "CreateEnvironment",
        input_schema = schemas.CreateEnvironmentInput,
        output_schema = schemas.CreateEnvironmentOutput,
        http_method = "POST",
        http_path = "/environment",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createKxChangeset(input, options)
    return self:invokeOperation(input, {
        name = "CreateKxChangeset",
        input_schema = schemas.CreateKxChangesetInput,
        output_schema = schemas.CreateKxChangesetOutput,
        http_method = "POST",
        http_path = "/kx/environments/{environmentId}/databases/{databaseName}/changesets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createKxCluster(input, options)
    return self:invokeOperation(input, {
        name = "CreateKxCluster",
        input_schema = schemas.CreateKxClusterInput,
        output_schema = schemas.CreateKxClusterOutput,
        http_method = "POST",
        http_path = "/kx/environments/{environmentId}/clusters",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createKxDatabase(input, options)
    return self:invokeOperation(input, {
        name = "CreateKxDatabase",
        input_schema = schemas.CreateKxDatabaseInput,
        output_schema = schemas.CreateKxDatabaseOutput,
        http_method = "POST",
        http_path = "/kx/environments/{environmentId}/databases",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createKxDataview(input, options)
    return self:invokeOperation(input, {
        name = "CreateKxDataview",
        input_schema = schemas.CreateKxDataviewInput,
        output_schema = schemas.CreateKxDataviewOutput,
        http_method = "POST",
        http_path = "/kx/environments/{environmentId}/databases/{databaseName}/dataviews",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createKxEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "CreateKxEnvironment",
        input_schema = schemas.CreateKxEnvironmentInput,
        output_schema = schemas.CreateKxEnvironmentOutput,
        http_method = "POST",
        http_path = "/kx/environments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createKxScalingGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateKxScalingGroup",
        input_schema = schemas.CreateKxScalingGroupInput,
        output_schema = schemas.CreateKxScalingGroupOutput,
        http_method = "POST",
        http_path = "/kx/environments/{environmentId}/scalingGroups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createKxUser(input, options)
    return self:invokeOperation(input, {
        name = "CreateKxUser",
        input_schema = schemas.CreateKxUserInput,
        output_schema = schemas.CreateKxUserOutput,
        http_method = "POST",
        http_path = "/kx/environments/{environmentId}/users",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createKxVolume(input, options)
    return self:invokeOperation(input, {
        name = "CreateKxVolume",
        input_schema = schemas.CreateKxVolumeInput,
        output_schema = schemas.CreateKxVolumeOutput,
        http_method = "POST",
        http_path = "/kx/environments/{environmentId}/kxvolumes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEnvironment",
        input_schema = schemas.DeleteEnvironmentInput,
        output_schema = schemas.DeleteEnvironmentOutput,
        http_method = "DELETE",
        http_path = "/environment/{environmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteKxCluster(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKxCluster",
        input_schema = schemas.DeleteKxClusterInput,
        output_schema = schemas.DeleteKxClusterOutput,
        http_method = "DELETE",
        http_path = "/kx/environments/{environmentId}/clusters/{clusterName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteKxClusterNode(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKxClusterNode",
        input_schema = schemas.DeleteKxClusterNodeInput,
        output_schema = schemas.DeleteKxClusterNodeOutput,
        http_method = "DELETE",
        http_path = "/kx/environments/{environmentId}/clusters/{clusterName}/nodes/{nodeId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteKxDatabase(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKxDatabase",
        input_schema = schemas.DeleteKxDatabaseInput,
        output_schema = schemas.DeleteKxDatabaseOutput,
        http_method = "DELETE",
        http_path = "/kx/environments/{environmentId}/databases/{databaseName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteKxDataview(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKxDataview",
        input_schema = schemas.DeleteKxDataviewInput,
        output_schema = schemas.DeleteKxDataviewOutput,
        http_method = "DELETE",
        http_path = "/kx/environments/{environmentId}/databases/{databaseName}/dataviews/{dataviewName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteKxEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKxEnvironment",
        input_schema = schemas.DeleteKxEnvironmentInput,
        output_schema = schemas.DeleteKxEnvironmentOutput,
        http_method = "DELETE",
        http_path = "/kx/environments/{environmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteKxScalingGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKxScalingGroup",
        input_schema = schemas.DeleteKxScalingGroupInput,
        output_schema = schemas.DeleteKxScalingGroupOutput,
        http_method = "DELETE",
        http_path = "/kx/environments/{environmentId}/scalingGroups/{scalingGroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteKxUser(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKxUser",
        input_schema = schemas.DeleteKxUserInput,
        output_schema = schemas.DeleteKxUserOutput,
        http_method = "DELETE",
        http_path = "/kx/environments/{environmentId}/users/{userName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteKxVolume(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKxVolume",
        input_schema = schemas.DeleteKxVolumeInput,
        output_schema = schemas.DeleteKxVolumeOutput,
        http_method = "DELETE",
        http_path = "/kx/environments/{environmentId}/kxvolumes/{volumeName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "GetEnvironment",
        input_schema = schemas.GetEnvironmentInput,
        output_schema = schemas.GetEnvironmentOutput,
        http_method = "GET",
        http_path = "/environment/{environmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getKxChangeset(input, options)
    return self:invokeOperation(input, {
        name = "GetKxChangeset",
        input_schema = schemas.GetKxChangesetInput,
        output_schema = schemas.GetKxChangesetOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/databases/{databaseName}/changesets/{changesetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getKxCluster(input, options)
    return self:invokeOperation(input, {
        name = "GetKxCluster",
        input_schema = schemas.GetKxClusterInput,
        output_schema = schemas.GetKxClusterOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/clusters/{clusterName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getKxConnectionString(input, options)
    return self:invokeOperation(input, {
        name = "GetKxConnectionString",
        input_schema = schemas.GetKxConnectionStringInput,
        output_schema = schemas.GetKxConnectionStringOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/connectionString",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getKxDatabase(input, options)
    return self:invokeOperation(input, {
        name = "GetKxDatabase",
        input_schema = schemas.GetKxDatabaseInput,
        output_schema = schemas.GetKxDatabaseOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/databases/{databaseName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getKxDataview(input, options)
    return self:invokeOperation(input, {
        name = "GetKxDataview",
        input_schema = schemas.GetKxDataviewInput,
        output_schema = schemas.GetKxDataviewOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/databases/{databaseName}/dataviews/{dataviewName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getKxEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "GetKxEnvironment",
        input_schema = schemas.GetKxEnvironmentInput,
        output_schema = schemas.GetKxEnvironmentOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getKxScalingGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetKxScalingGroup",
        input_schema = schemas.GetKxScalingGroupInput,
        output_schema = schemas.GetKxScalingGroupOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/scalingGroups/{scalingGroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getKxUser(input, options)
    return self:invokeOperation(input, {
        name = "GetKxUser",
        input_schema = schemas.GetKxUserInput,
        output_schema = schemas.GetKxUserOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/users/{userName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getKxVolume(input, options)
    return self:invokeOperation(input, {
        name = "GetKxVolume",
        input_schema = schemas.GetKxVolumeInput,
        output_schema = schemas.GetKxVolumeOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/kxvolumes/{volumeName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEnvironments(input, options)
    return self:invokeOperation(input, {
        name = "ListEnvironments",
        input_schema = schemas.ListEnvironmentsInput,
        output_schema = schemas.ListEnvironmentsOutput,
        http_method = "GET",
        http_path = "/environment",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listKxChangesets(input, options)
    return self:invokeOperation(input, {
        name = "ListKxChangesets",
        input_schema = schemas.ListKxChangesetsInput,
        output_schema = schemas.ListKxChangesetsOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/databases/{databaseName}/changesets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listKxClusterNodes(input, options)
    return self:invokeOperation(input, {
        name = "ListKxClusterNodes",
        input_schema = schemas.ListKxClusterNodesInput,
        output_schema = schemas.ListKxClusterNodesOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/clusters/{clusterName}/nodes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listKxClusters(input, options)
    return self:invokeOperation(input, {
        name = "ListKxClusters",
        input_schema = schemas.ListKxClustersInput,
        output_schema = schemas.ListKxClustersOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/clusters",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listKxDatabases(input, options)
    return self:invokeOperation(input, {
        name = "ListKxDatabases",
        input_schema = schemas.ListKxDatabasesInput,
        output_schema = schemas.ListKxDatabasesOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/databases",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listKxDataviews(input, options)
    return self:invokeOperation(input, {
        name = "ListKxDataviews",
        input_schema = schemas.ListKxDataviewsInput,
        output_schema = schemas.ListKxDataviewsOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/databases/{databaseName}/dataviews",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listKxEnvironments(input, options)
    return self:invokeOperation(input, {
        name = "ListKxEnvironments",
        input_schema = schemas.ListKxEnvironmentsInput,
        output_schema = schemas.ListKxEnvironmentsOutput,
        http_method = "GET",
        http_path = "/kx/environments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listKxScalingGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListKxScalingGroups",
        input_schema = schemas.ListKxScalingGroupsInput,
        output_schema = schemas.ListKxScalingGroupsOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/scalingGroups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listKxUsers(input, options)
    return self:invokeOperation(input, {
        name = "ListKxUsers",
        input_schema = schemas.ListKxUsersInput,
        output_schema = schemas.ListKxUsersOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/users",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listKxVolumes(input, options)
    return self:invokeOperation(input, {
        name = "ListKxVolumes",
        input_schema = schemas.ListKxVolumesInput,
        output_schema = schemas.ListKxVolumesOutput,
        http_method = "GET",
        http_path = "/kx/environments/{environmentId}/kxvolumes",
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
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEnvironment",
        input_schema = schemas.UpdateEnvironmentInput,
        output_schema = schemas.UpdateEnvironmentOutput,
        http_method = "PUT",
        http_path = "/environment/{environmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateKxClusterCodeConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateKxClusterCodeConfiguration",
        input_schema = schemas.UpdateKxClusterCodeConfigurationInput,
        output_schema = schemas.UpdateKxClusterCodeConfigurationOutput,
        http_method = "PUT",
        http_path = "/kx/environments/{environmentId}/clusters/{clusterName}/configuration/code",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateKxClusterDatabases(input, options)
    return self:invokeOperation(input, {
        name = "UpdateKxClusterDatabases",
        input_schema = schemas.UpdateKxClusterDatabasesInput,
        output_schema = schemas.UpdateKxClusterDatabasesOutput,
        http_method = "PUT",
        http_path = "/kx/environments/{environmentId}/clusters/{clusterName}/configuration/databases",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateKxDatabase(input, options)
    return self:invokeOperation(input, {
        name = "UpdateKxDatabase",
        input_schema = schemas.UpdateKxDatabaseInput,
        output_schema = schemas.UpdateKxDatabaseOutput,
        http_method = "PUT",
        http_path = "/kx/environments/{environmentId}/databases/{databaseName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateKxDataview(input, options)
    return self:invokeOperation(input, {
        name = "UpdateKxDataview",
        input_schema = schemas.UpdateKxDataviewInput,
        output_schema = schemas.UpdateKxDataviewOutput,
        http_method = "PUT",
        http_path = "/kx/environments/{environmentId}/databases/{databaseName}/dataviews/{dataviewName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateKxEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateKxEnvironment",
        input_schema = schemas.UpdateKxEnvironmentInput,
        output_schema = schemas.UpdateKxEnvironmentOutput,
        http_method = "PUT",
        http_path = "/kx/environments/{environmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateKxEnvironmentNetwork(input, options)
    return self:invokeOperation(input, {
        name = "UpdateKxEnvironmentNetwork",
        input_schema = schemas.UpdateKxEnvironmentNetworkInput,
        output_schema = schemas.UpdateKxEnvironmentNetworkOutput,
        http_method = "PUT",
        http_path = "/kx/environments/{environmentId}/network",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateKxUser(input, options)
    return self:invokeOperation(input, {
        name = "UpdateKxUser",
        input_schema = schemas.UpdateKxUserInput,
        output_schema = schemas.UpdateKxUserOutput,
        http_method = "PUT",
        http_path = "/kx/environments/{environmentId}/users/{userName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateKxVolume(input, options)
    return self:invokeOperation(input, {
        name = "UpdateKxVolume",
        input_schema = schemas.UpdateKxVolumeInput,
        output_schema = schemas.UpdateKxVolumeOutput,
        http_method = "PATCH",
        http_path = "/kx/environments/{environmentId}/kxvolumes/{volumeName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
