local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("docdbelastic.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("docdbelastic.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ChimeraDbLionfishServiceLambda"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "docdb-elastic", signing_region = cfg.region } }
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

function Client:applyPendingMaintenanceAction(input, options)
    return self:invokeOperation(input, {
        name = "ApplyPendingMaintenanceAction",
        input_schema = types.ApplyPendingMaintenanceActionInput,
        output_schema = types.ApplyPendingMaintenanceActionOutput,
        http_method = "POST",
        http_path = "/pending-action",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:copyClusterSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CopyClusterSnapshot",
        input_schema = types.CopyClusterSnapshotInput,
        output_schema = types.CopyClusterSnapshotOutput,
        http_method = "POST",
        http_path = "/cluster-snapshot/{snapshotArn}/copy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCluster(input, options)
    return self:invokeOperation(input, {
        name = "CreateCluster",
        input_schema = types.CreateClusterInput,
        output_schema = types.CreateClusterOutput,
        http_method = "POST",
        http_path = "/cluster",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createClusterSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CreateClusterSnapshot",
        input_schema = types.CreateClusterSnapshotInput,
        output_schema = types.CreateClusterSnapshotOutput,
        http_method = "POST",
        http_path = "/cluster-snapshot",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCluster(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCluster",
        input_schema = types.DeleteClusterInput,
        output_schema = types.DeleteClusterOutput,
        http_method = "DELETE",
        http_path = "/cluster/{clusterArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteClusterSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteClusterSnapshot",
        input_schema = types.DeleteClusterSnapshotInput,
        output_schema = types.DeleteClusterSnapshotOutput,
        http_method = "DELETE",
        http_path = "/cluster-snapshot/{snapshotArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCluster(input, options)
    return self:invokeOperation(input, {
        name = "GetCluster",
        input_schema = types.GetClusterInput,
        output_schema = types.GetClusterOutput,
        http_method = "GET",
        http_path = "/cluster/{clusterArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getClusterSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "GetClusterSnapshot",
        input_schema = types.GetClusterSnapshotInput,
        output_schema = types.GetClusterSnapshotOutput,
        http_method = "GET",
        http_path = "/cluster-snapshot/{snapshotArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPendingMaintenanceAction(input, options)
    return self:invokeOperation(input, {
        name = "GetPendingMaintenanceAction",
        input_schema = types.GetPendingMaintenanceActionInput,
        output_schema = types.GetPendingMaintenanceActionOutput,
        http_method = "GET",
        http_path = "/pending-action/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listClusters(input, options)
    return self:invokeOperation(input, {
        name = "ListClusters",
        input_schema = types.ListClustersInput,
        output_schema = types.ListClustersOutput,
        http_method = "GET",
        http_path = "/clusters",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listClusterSnapshots(input, options)
    return self:invokeOperation(input, {
        name = "ListClusterSnapshots",
        input_schema = types.ListClusterSnapshotsInput,
        output_schema = types.ListClusterSnapshotsOutput,
        http_method = "GET",
        http_path = "/cluster-snapshots",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPendingMaintenanceActions(input, options)
    return self:invokeOperation(input, {
        name = "ListPendingMaintenanceActions",
        input_schema = types.ListPendingMaintenanceActionsInput,
        output_schema = types.ListPendingMaintenanceActionsOutput,
        http_method = "GET",
        http_path = "/pending-actions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restoreClusterFromSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "RestoreClusterFromSnapshot",
        input_schema = types.RestoreClusterFromSnapshotInput,
        output_schema = types.RestoreClusterFromSnapshotOutput,
        http_method = "POST",
        http_path = "/cluster-snapshot/{snapshotArn}/restore",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startCluster(input, options)
    return self:invokeOperation(input, {
        name = "StartCluster",
        input_schema = types.StartClusterInput,
        output_schema = types.StartClusterOutput,
        http_method = "POST",
        http_path = "/cluster/{clusterArn}/start",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopCluster(input, options)
    return self:invokeOperation(input, {
        name = "StopCluster",
        input_schema = types.StopClusterInput,
        output_schema = types.StopClusterOutput,
        http_method = "POST",
        http_path = "/cluster/{clusterArn}/stop",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
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
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCluster(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCluster",
        input_schema = types.UpdateClusterInput,
        output_schema = types.UpdateClusterOutput,
        http_method = "PUT",
        http_path = "/cluster/{clusterArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
