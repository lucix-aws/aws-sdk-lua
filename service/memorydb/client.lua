local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("memorydb.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("memorydb.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonMemoryDB"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "memorydb", signing_region = cfg.region } }
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

function Client:batchUpdateCluster(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateCluster",
        input_schema = types.BatchUpdateClusterInput,
        output_schema = types.BatchUpdateClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:copySnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CopySnapshot",
        input_schema = types.CopySnapshotInput,
        output_schema = types.CopySnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createACL(input, options)
    return self:invokeOperation(input, {
        name = "CreateACL",
        input_schema = types.CreateACLInput,
        output_schema = types.CreateACLOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMultiRegionCluster(input, options)
    return self:invokeOperation(input, {
        name = "CreateMultiRegionCluster",
        input_schema = types.CreateMultiRegionClusterInput,
        output_schema = types.CreateMultiRegionClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateParameterGroup",
        input_schema = types.CreateParameterGroupInput,
        output_schema = types.CreateParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CreateSnapshot",
        input_schema = types.CreateSnapshotInput,
        output_schema = types.CreateSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSubnetGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateSubnetGroup",
        input_schema = types.CreateSubnetGroupInput,
        output_schema = types.CreateSubnetGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createUser(input, options)
    return self:invokeOperation(input, {
        name = "CreateUser",
        input_schema = types.CreateUserInput,
        output_schema = types.CreateUserOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteACL(input, options)
    return self:invokeOperation(input, {
        name = "DeleteACL",
        input_schema = types.DeleteACLInput,
        output_schema = types.DeleteACLOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMultiRegionCluster(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMultiRegionCluster",
        input_schema = types.DeleteMultiRegionClusterInput,
        output_schema = types.DeleteMultiRegionClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteParameterGroup",
        input_schema = types.DeleteParameterGroupInput,
        output_schema = types.DeleteParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSnapshot",
        input_schema = types.DeleteSnapshotInput,
        output_schema = types.DeleteSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSubnetGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSubnetGroup",
        input_schema = types.DeleteSubnetGroupInput,
        output_schema = types.DeleteSubnetGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteUser(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUser",
        input_schema = types.DeleteUserInput,
        output_schema = types.DeleteUserOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeACLs(input, options)
    return self:invokeOperation(input, {
        name = "DescribeACLs",
        input_schema = types.DescribeACLsInput,
        output_schema = types.DescribeACLsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeClusters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeClusters",
        input_schema = types.DescribeClustersInput,
        output_schema = types.DescribeClustersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEngineVersions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEngineVersions",
        input_schema = types.DescribeEngineVersionsInput,
        output_schema = types.DescribeEngineVersionsOutput,
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
        input_schema = types.DescribeEventsInput,
        output_schema = types.DescribeEventsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMultiRegionClusters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMultiRegionClusters",
        input_schema = types.DescribeMultiRegionClustersInput,
        output_schema = types.DescribeMultiRegionClustersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMultiRegionParameterGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMultiRegionParameterGroups",
        input_schema = types.DescribeMultiRegionParameterGroupsInput,
        output_schema = types.DescribeMultiRegionParameterGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMultiRegionParameters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMultiRegionParameters",
        input_schema = types.DescribeMultiRegionParametersInput,
        output_schema = types.DescribeMultiRegionParametersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeParameterGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeParameterGroups",
        input_schema = types.DescribeParameterGroupsInput,
        output_schema = types.DescribeParameterGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeParameters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeParameters",
        input_schema = types.DescribeParametersInput,
        output_schema = types.DescribeParametersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReservedNodes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReservedNodes",
        input_schema = types.DescribeReservedNodesInput,
        output_schema = types.DescribeReservedNodesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReservedNodesOfferings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReservedNodesOfferings",
        input_schema = types.DescribeReservedNodesOfferingsInput,
        output_schema = types.DescribeReservedNodesOfferingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeServiceUpdates(input, options)
    return self:invokeOperation(input, {
        name = "DescribeServiceUpdates",
        input_schema = types.DescribeServiceUpdatesInput,
        output_schema = types.DescribeServiceUpdatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSnapshots(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSnapshots",
        input_schema = types.DescribeSnapshotsInput,
        output_schema = types.DescribeSnapshotsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSubnetGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSubnetGroups",
        input_schema = types.DescribeSubnetGroupsInput,
        output_schema = types.DescribeSubnetGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeUsers(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUsers",
        input_schema = types.DescribeUsersInput,
        output_schema = types.DescribeUsersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:failoverShard(input, options)
    return self:invokeOperation(input, {
        name = "FailoverShard",
        input_schema = types.FailoverShardInput,
        output_schema = types.FailoverShardOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAllowedMultiRegionClusterUpdates(input, options)
    return self:invokeOperation(input, {
        name = "ListAllowedMultiRegionClusterUpdates",
        input_schema = types.ListAllowedMultiRegionClusterUpdatesInput,
        output_schema = types.ListAllowedMultiRegionClusterUpdatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAllowedNodeTypeUpdates(input, options)
    return self:invokeOperation(input, {
        name = "ListAllowedNodeTypeUpdates",
        input_schema = types.ListAllowedNodeTypeUpdatesInput,
        output_schema = types.ListAllowedNodeTypeUpdatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTags(input, options)
    return self:invokeOperation(input, {
        name = "ListTags",
        input_schema = types.ListTagsInput,
        output_schema = types.ListTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:purchaseReservedNodesOffering(input, options)
    return self:invokeOperation(input, {
        name = "PurchaseReservedNodesOffering",
        input_schema = types.PurchaseReservedNodesOfferingInput,
        output_schema = types.PurchaseReservedNodesOfferingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resetParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "ResetParameterGroup",
        input_schema = types.ResetParameterGroupInput,
        output_schema = types.ResetParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateACL(input, options)
    return self:invokeOperation(input, {
        name = "UpdateACL",
        input_schema = types.UpdateACLInput,
        output_schema = types.UpdateACLOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMultiRegionCluster(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMultiRegionCluster",
        input_schema = types.UpdateMultiRegionClusterInput,
        output_schema = types.UpdateMultiRegionClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateParameterGroup",
        input_schema = types.UpdateParameterGroupInput,
        output_schema = types.UpdateParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSubnetGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSubnetGroup",
        input_schema = types.UpdateSubnetGroupInput,
        output_schema = types.UpdateSubnetGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUser(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUser",
        input_schema = types.UpdateUserInput,
        output_schema = types.UpdateUserOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
