local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("memorydb.endpoint_rules")
local schemas = require("memorydb.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonMemoryDB"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
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
        input_schema = schemas.BatchUpdateClusterInput,
        output_schema = schemas.BatchUpdateClusterOutput,
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
        input_schema = schemas.CopySnapshotInput,
        output_schema = schemas.CopySnapshotOutput,
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
        input_schema = schemas.CreateACLInput,
        output_schema = schemas.CreateACLOutput,
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
        input_schema = schemas.CreateClusterInput,
        output_schema = schemas.CreateClusterOutput,
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
        input_schema = schemas.CreateMultiRegionClusterInput,
        output_schema = schemas.CreateMultiRegionClusterOutput,
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
        input_schema = schemas.CreateParameterGroupInput,
        output_schema = schemas.CreateParameterGroupOutput,
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
        input_schema = schemas.CreateSnapshotInput,
        output_schema = schemas.CreateSnapshotOutput,
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
        input_schema = schemas.CreateSubnetGroupInput,
        output_schema = schemas.CreateSubnetGroupOutput,
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
        input_schema = schemas.CreateUserInput,
        output_schema = schemas.CreateUserOutput,
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
        input_schema = schemas.DeleteACLInput,
        output_schema = schemas.DeleteACLOutput,
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
        input_schema = schemas.DeleteClusterInput,
        output_schema = schemas.DeleteClusterOutput,
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
        input_schema = schemas.DeleteMultiRegionClusterInput,
        output_schema = schemas.DeleteMultiRegionClusterOutput,
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
        input_schema = schemas.DeleteParameterGroupInput,
        output_schema = schemas.DeleteParameterGroupOutput,
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
        input_schema = schemas.DeleteSnapshotInput,
        output_schema = schemas.DeleteSnapshotOutput,
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
        input_schema = schemas.DeleteSubnetGroupInput,
        output_schema = schemas.DeleteSubnetGroupOutput,
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
        input_schema = schemas.DeleteUserInput,
        output_schema = schemas.DeleteUserOutput,
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
        input_schema = schemas.DescribeACLsInput,
        output_schema = schemas.DescribeACLsOutput,
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
        input_schema = schemas.DescribeClustersInput,
        output_schema = schemas.DescribeClustersOutput,
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
        input_schema = schemas.DescribeEngineVersionsInput,
        output_schema = schemas.DescribeEngineVersionsOutput,
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

function Client:describeMultiRegionClusters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMultiRegionClusters",
        input_schema = schemas.DescribeMultiRegionClustersInput,
        output_schema = schemas.DescribeMultiRegionClustersOutput,
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
        input_schema = schemas.DescribeMultiRegionParameterGroupsInput,
        output_schema = schemas.DescribeMultiRegionParameterGroupsOutput,
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
        input_schema = schemas.DescribeMultiRegionParametersInput,
        output_schema = schemas.DescribeMultiRegionParametersOutput,
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
        input_schema = schemas.DescribeParameterGroupsInput,
        output_schema = schemas.DescribeParameterGroupsOutput,
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
        input_schema = schemas.DescribeParametersInput,
        output_schema = schemas.DescribeParametersOutput,
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
        input_schema = schemas.DescribeReservedNodesInput,
        output_schema = schemas.DescribeReservedNodesOutput,
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
        input_schema = schemas.DescribeReservedNodesOfferingsInput,
        output_schema = schemas.DescribeReservedNodesOfferingsOutput,
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
        input_schema = schemas.DescribeServiceUpdatesInput,
        output_schema = schemas.DescribeServiceUpdatesOutput,
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
        input_schema = schemas.DescribeSnapshotsInput,
        output_schema = schemas.DescribeSnapshotsOutput,
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
        input_schema = schemas.DescribeSubnetGroupsInput,
        output_schema = schemas.DescribeSubnetGroupsOutput,
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
        input_schema = schemas.DescribeUsersInput,
        output_schema = schemas.DescribeUsersOutput,
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
        input_schema = schemas.FailoverShardInput,
        output_schema = schemas.FailoverShardOutput,
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
        input_schema = schemas.ListAllowedMultiRegionClusterUpdatesInput,
        output_schema = schemas.ListAllowedMultiRegionClusterUpdatesOutput,
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
        input_schema = schemas.ListAllowedNodeTypeUpdatesInput,
        output_schema = schemas.ListAllowedNodeTypeUpdatesOutput,
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
        input_schema = schemas.ListTagsInput,
        output_schema = schemas.ListTagsOutput,
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
        input_schema = schemas.PurchaseReservedNodesOfferingInput,
        output_schema = schemas.PurchaseReservedNodesOfferingOutput,
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
        input_schema = schemas.ResetParameterGroupInput,
        output_schema = schemas.ResetParameterGroupOutput,
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
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
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
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
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
        input_schema = schemas.UpdateACLInput,
        output_schema = schemas.UpdateACLOutput,
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
        input_schema = schemas.UpdateClusterInput,
        output_schema = schemas.UpdateClusterOutput,
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
        input_schema = schemas.UpdateMultiRegionClusterInput,
        output_schema = schemas.UpdateMultiRegionClusterOutput,
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
        input_schema = schemas.UpdateParameterGroupInput,
        output_schema = schemas.UpdateParameterGroupOutput,
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
        input_schema = schemas.UpdateSubnetGroupInput,
        output_schema = schemas.UpdateSubnetGroupOutput,
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
        input_schema = schemas.UpdateUserInput,
        output_schema = schemas.UpdateUserOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
