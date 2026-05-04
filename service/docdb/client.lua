local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("docdb.endpoint_rules")
local query_protocol = require("protocol.query")
local sdk_defaults = require("sdk_defaults")
local types = require("docdb.types")

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

function Client:addSourceIdentifierToSubscription(input, options)
    return self:invokeOperation(input, {
        name = "AddSourceIdentifierToSubscription",
        input_schema = types.AddSourceIdentifierToSubscriptionInput,
        output_schema = types.AddSourceIdentifierToSubscriptionOutput,
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
        input_schema = types.AddTagsToResourceInput,
        output_schema = types.AddTagsToResourceOutput,
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
        input_schema = types.ApplyPendingMaintenanceActionInput,
        output_schema = types.ApplyPendingMaintenanceActionOutput,
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
        input_schema = types.CopyDBClusterParameterGroupInput,
        output_schema = types.CopyDBClusterParameterGroupOutput,
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
        input_schema = types.CopyDBClusterSnapshotInput,
        output_schema = types.CopyDBClusterSnapshotOutput,
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
        input_schema = types.CreateDBClusterInput,
        output_schema = types.CreateDBClusterOutput,
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
        input_schema = types.CreateDBClusterParameterGroupInput,
        output_schema = types.CreateDBClusterParameterGroupOutput,
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
        input_schema = types.CreateDBClusterSnapshotInput,
        output_schema = types.CreateDBClusterSnapshotOutput,
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
        input_schema = types.CreateDBInstanceInput,
        output_schema = types.CreateDBInstanceOutput,
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
        input_schema = types.CreateDBSubnetGroupInput,
        output_schema = types.CreateDBSubnetGroupOutput,
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
        input_schema = types.CreateEventSubscriptionInput,
        output_schema = types.CreateEventSubscriptionOutput,
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
        input_schema = types.CreateGlobalClusterInput,
        output_schema = types.CreateGlobalClusterOutput,
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
        input_schema = types.DeleteDBClusterInput,
        output_schema = types.DeleteDBClusterOutput,
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
        input_schema = types.DeleteDBClusterParameterGroupInput,
        output_schema = types.DeleteDBClusterParameterGroupOutput,
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
        input_schema = types.DeleteDBClusterSnapshotInput,
        output_schema = types.DeleteDBClusterSnapshotOutput,
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
        input_schema = types.DeleteDBInstanceInput,
        output_schema = types.DeleteDBInstanceOutput,
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
        input_schema = types.DeleteDBSubnetGroupInput,
        output_schema = types.DeleteDBSubnetGroupOutput,
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
        input_schema = types.DeleteEventSubscriptionInput,
        output_schema = types.DeleteEventSubscriptionOutput,
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
        input_schema = types.DeleteGlobalClusterInput,
        output_schema = types.DeleteGlobalClusterOutput,
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
        input_schema = types.DescribeCertificatesInput,
        output_schema = types.DescribeCertificatesOutput,
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
        input_schema = types.DescribeDBClusterParameterGroupsInput,
        output_schema = types.DescribeDBClusterParameterGroupsOutput,
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
        input_schema = types.DescribeDBClusterParametersInput,
        output_schema = types.DescribeDBClusterParametersOutput,
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
        input_schema = types.DescribeDBClustersInput,
        output_schema = types.DescribeDBClustersOutput,
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
        input_schema = types.DescribeDBClusterSnapshotAttributesInput,
        output_schema = types.DescribeDBClusterSnapshotAttributesOutput,
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
        input_schema = types.DescribeDBClusterSnapshotsInput,
        output_schema = types.DescribeDBClusterSnapshotsOutput,
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
        input_schema = types.DescribeDBEngineVersionsInput,
        output_schema = types.DescribeDBEngineVersionsOutput,
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
        input_schema = types.DescribeDBInstancesInput,
        output_schema = types.DescribeDBInstancesOutput,
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
        input_schema = types.DescribeDBSubnetGroupsInput,
        output_schema = types.DescribeDBSubnetGroupsOutput,
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
        input_schema = types.DescribeEngineDefaultClusterParametersInput,
        output_schema = types.DescribeEngineDefaultClusterParametersOutput,
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
        input_schema = types.DescribeEventCategoriesInput,
        output_schema = types.DescribeEventCategoriesOutput,
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

function Client:describeEventSubscriptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEventSubscriptions",
        input_schema = types.DescribeEventSubscriptionsInput,
        output_schema = types.DescribeEventSubscriptionsOutput,
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
        input_schema = types.DescribeGlobalClustersInput,
        output_schema = types.DescribeGlobalClustersOutput,
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
        input_schema = types.DescribeOrderableDBInstanceOptionsInput,
        output_schema = types.DescribeOrderableDBInstanceOptionsOutput,
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
        input_schema = types.DescribePendingMaintenanceActionsInput,
        output_schema = types.DescribePendingMaintenanceActionsOutput,
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
        input_schema = types.FailoverDBClusterInput,
        output_schema = types.FailoverDBClusterOutput,
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
        input_schema = types.FailoverGlobalClusterInput,
        output_schema = types.FailoverGlobalClusterOutput,
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
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
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
        input_schema = types.ModifyDBClusterInput,
        output_schema = types.ModifyDBClusterOutput,
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
        input_schema = types.ModifyDBClusterParameterGroupInput,
        output_schema = types.ModifyDBClusterParameterGroupOutput,
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
        input_schema = types.ModifyDBClusterSnapshotAttributeInput,
        output_schema = types.ModifyDBClusterSnapshotAttributeOutput,
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
        input_schema = types.ModifyDBInstanceInput,
        output_schema = types.ModifyDBInstanceOutput,
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
        input_schema = types.ModifyDBSubnetGroupInput,
        output_schema = types.ModifyDBSubnetGroupOutput,
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
        input_schema = types.ModifyEventSubscriptionInput,
        output_schema = types.ModifyEventSubscriptionOutput,
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
        input_schema = types.ModifyGlobalClusterInput,
        output_schema = types.ModifyGlobalClusterOutput,
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
        input_schema = types.RebootDBInstanceInput,
        output_schema = types.RebootDBInstanceOutput,
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
        input_schema = types.RemoveFromGlobalClusterInput,
        output_schema = types.RemoveFromGlobalClusterOutput,
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
        input_schema = types.RemoveSourceIdentifierFromSubscriptionInput,
        output_schema = types.RemoveSourceIdentifierFromSubscriptionOutput,
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
        input_schema = types.RemoveTagsFromResourceInput,
        output_schema = types.RemoveTagsFromResourceOutput,
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
        input_schema = types.ResetDBClusterParameterGroupInput,
        output_schema = types.ResetDBClusterParameterGroupOutput,
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
        input_schema = types.RestoreDBClusterFromSnapshotInput,
        output_schema = types.RestoreDBClusterFromSnapshotOutput,
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
        input_schema = types.RestoreDBClusterToPointInTimeInput,
        output_schema = types.RestoreDBClusterToPointInTimeOutput,
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
        input_schema = types.StartDBClusterInput,
        output_schema = types.StartDBClusterOutput,
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
        input_schema = types.StopDBClusterInput,
        output_schema = types.StopDBClusterOutput,
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
        input_schema = types.SwitchoverGlobalClusterInput,
        output_schema = types.SwitchoverGlobalClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
