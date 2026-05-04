local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("neptunegraph.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("neptunegraph.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonNeptuneGraph"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "neptune-graph", signing_region = cfg.region } }
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

function Client:cancelExportTask(input, options)
    return self:invokeOperation(input, {
        name = "CancelExportTask",
        input_schema = types.CancelExportTaskInput,
        output_schema = types.CancelExportTaskOutput,
        http_method = "DELETE",
        http_path = "/exporttasks/{taskIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelImportTask(input, options)
    return self:invokeOperation(input, {
        name = "CancelImportTask",
        input_schema = types.CancelImportTaskInput,
        output_schema = types.CancelImportTaskOutput,
        http_method = "DELETE",
        http_path = "/importtasks/{taskIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelQuery(input, options)
    return self:invokeOperation(input, {
        name = "CancelQuery",
        input_schema = types.CancelQueryInput,
        output_schema = types.CancelQueryOutput,
        http_method = "DELETE",
        http_path = "/queries/{queryId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGraph(input, options)
    return self:invokeOperation(input, {
        name = "CreateGraph",
        input_schema = types.CreateGraphInput,
        output_schema = types.CreateGraphOutput,
        http_method = "POST",
        http_path = "/graphs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGraphSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CreateGraphSnapshot",
        input_schema = types.CreateGraphSnapshotInput,
        output_schema = types.CreateGraphSnapshotOutput,
        http_method = "POST",
        http_path = "/snapshots",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGraphUsingImportTask(input, options)
    return self:invokeOperation(input, {
        name = "CreateGraphUsingImportTask",
        input_schema = types.CreateGraphUsingImportTaskInput,
        output_schema = types.CreateGraphUsingImportTaskOutput,
        http_method = "POST",
        http_path = "/importtasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPrivateGraphEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreatePrivateGraphEndpoint",
        input_schema = types.CreatePrivateGraphEndpointInput,
        output_schema = types.CreatePrivateGraphEndpointOutput,
        http_method = "POST",
        http_path = "/graphs/{graphIdentifier}/endpoints/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGraph(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGraph",
        input_schema = types.DeleteGraphInput,
        output_schema = types.DeleteGraphOutput,
        http_method = "DELETE",
        http_path = "/graphs/{graphIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGraphSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGraphSnapshot",
        input_schema = types.DeleteGraphSnapshotInput,
        output_schema = types.DeleteGraphSnapshotOutput,
        http_method = "DELETE",
        http_path = "/snapshots/{snapshotIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePrivateGraphEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeletePrivateGraphEndpoint",
        input_schema = types.DeletePrivateGraphEndpointInput,
        output_schema = types.DeletePrivateGraphEndpointOutput,
        http_method = "DELETE",
        http_path = "/graphs/{graphIdentifier}/endpoints/{vpcId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:executeQuery(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteQuery",
        input_schema = types.ExecuteQueryInput,
        output_schema = types.ExecuteQueryOutput,
        http_method = "POST",
        http_path = "/queries",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getExportTask(input, options)
    return self:invokeOperation(input, {
        name = "GetExportTask",
        input_schema = types.GetExportTaskInput,
        output_schema = types.GetExportTaskOutput,
        http_method = "GET",
        http_path = "/exporttasks/{taskIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGraph(input, options)
    return self:invokeOperation(input, {
        name = "GetGraph",
        input_schema = types.GetGraphInput,
        output_schema = types.GetGraphOutput,
        http_method = "GET",
        http_path = "/graphs/{graphIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGraphSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "GetGraphSnapshot",
        input_schema = types.GetGraphSnapshotInput,
        output_schema = types.GetGraphSnapshotOutput,
        http_method = "GET",
        http_path = "/snapshots/{snapshotIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGraphSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetGraphSummary",
        input_schema = types.GetGraphSummaryInput,
        output_schema = types.GetGraphSummaryOutput,
        http_method = "GET",
        http_path = "/summary",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getImportTask(input, options)
    return self:invokeOperation(input, {
        name = "GetImportTask",
        input_schema = types.GetImportTaskInput,
        output_schema = types.GetImportTaskOutput,
        http_method = "GET",
        http_path = "/importtasks/{taskIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPrivateGraphEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "GetPrivateGraphEndpoint",
        input_schema = types.GetPrivateGraphEndpointInput,
        output_schema = types.GetPrivateGraphEndpointOutput,
        http_method = "GET",
        http_path = "/graphs/{graphIdentifier}/endpoints/{vpcId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getQuery(input, options)
    return self:invokeOperation(input, {
        name = "GetQuery",
        input_schema = types.GetQueryInput,
        output_schema = types.GetQueryOutput,
        http_method = "GET",
        http_path = "/queries/{queryId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listExportTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListExportTasks",
        input_schema = types.ListExportTasksInput,
        output_schema = types.ListExportTasksOutput,
        http_method = "GET",
        http_path = "/exporttasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGraphs(input, options)
    return self:invokeOperation(input, {
        name = "ListGraphs",
        input_schema = types.ListGraphsInput,
        output_schema = types.ListGraphsOutput,
        http_method = "GET",
        http_path = "/graphs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGraphSnapshots(input, options)
    return self:invokeOperation(input, {
        name = "ListGraphSnapshots",
        input_schema = types.ListGraphSnapshotsInput,
        output_schema = types.ListGraphSnapshotsOutput,
        http_method = "GET",
        http_path = "/snapshots",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listImportTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListImportTasks",
        input_schema = types.ListImportTasksInput,
        output_schema = types.ListImportTasksOutput,
        http_method = "GET",
        http_path = "/importtasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPrivateGraphEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListPrivateGraphEndpoints",
        input_schema = types.ListPrivateGraphEndpointsInput,
        output_schema = types.ListPrivateGraphEndpointsOutput,
        http_method = "GET",
        http_path = "/graphs/{graphIdentifier}/endpoints/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listQueries(input, options)
    return self:invokeOperation(input, {
        name = "ListQueries",
        input_schema = types.ListQueriesInput,
        output_schema = types.ListQueriesOutput,
        http_method = "GET",
        http_path = "/queries",
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

function Client:resetGraph(input, options)
    return self:invokeOperation(input, {
        name = "ResetGraph",
        input_schema = types.ResetGraphInput,
        output_schema = types.ResetGraphOutput,
        http_method = "PUT",
        http_path = "/graphs/{graphIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restoreGraphFromSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "RestoreGraphFromSnapshot",
        input_schema = types.RestoreGraphFromSnapshotInput,
        output_schema = types.RestoreGraphFromSnapshotOutput,
        http_method = "POST",
        http_path = "/snapshots/{snapshotIdentifier}/restore",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startExportTask(input, options)
    return self:invokeOperation(input, {
        name = "StartExportTask",
        input_schema = types.StartExportTaskInput,
        output_schema = types.StartExportTaskOutput,
        http_method = "POST",
        http_path = "/exporttasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startGraph(input, options)
    return self:invokeOperation(input, {
        name = "StartGraph",
        input_schema = types.StartGraphInput,
        output_schema = types.StartGraphOutput,
        http_method = "POST",
        http_path = "/graphs/{graphIdentifier}/start",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startImportTask(input, options)
    return self:invokeOperation(input, {
        name = "StartImportTask",
        input_schema = types.StartImportTaskInput,
        output_schema = types.StartImportTaskOutput,
        http_method = "POST",
        http_path = "/graphs/{graphIdentifier}/importtasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopGraph(input, options)
    return self:invokeOperation(input, {
        name = "StopGraph",
        input_schema = types.StopGraphInput,
        output_schema = types.StopGraphOutput,
        http_method = "POST",
        http_path = "/graphs/{graphIdentifier}/stop",
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

function Client:updateGraph(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGraph",
        input_schema = types.UpdateGraphInput,
        output_schema = types.UpdateGraphOutput,
        http_method = "PATCH",
        http_path = "/graphs/{graphIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
