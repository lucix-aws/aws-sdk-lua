local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("mwaaserverless.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("mwaaserverless.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonMWAAServerless"
    cfg.signing_name = "amazonmwaaserverless"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.0")
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

function Client:createWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkflow",
        input_schema = types.CreateWorkflowInput,
        output_schema = types.CreateWorkflowOutput,
        http_method = "POST",
        http_path = "/workflows",
    }, options)
end

function Client:deleteWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkflow",
        input_schema = types.DeleteWorkflowInput,
        output_schema = types.DeleteWorkflowOutput,
        http_method = "DELETE",
        http_path = "/workflows/{WorkflowArn}",
    }, options)
end

function Client:getTaskInstance(input, options)
    return self:invokeOperation(input, {
        name = "GetTaskInstance",
        input_schema = types.GetTaskInstanceInput,
        output_schema = types.GetTaskInstanceOutput,
        http_method = "GET",
        http_path = "/workflows/{WorkflowArn}/runs/{RunId}/tasks/{TaskInstanceId}",
    }, options)
end

function Client:getWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkflow",
        input_schema = types.GetWorkflowInput,
        output_schema = types.GetWorkflowOutput,
        http_method = "GET",
        http_path = "/workflows/{WorkflowArn}",
    }, options)
end

function Client:getWorkflowRun(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkflowRun",
        input_schema = types.GetWorkflowRunInput,
        output_schema = types.GetWorkflowRunOutput,
        http_method = "GET",
        http_path = "/workflows/{WorkflowArn}/runs/{RunId}",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:listTaskInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListTaskInstances",
        input_schema = types.ListTaskInstancesInput,
        output_schema = types.ListTaskInstancesOutput,
        http_method = "GET",
        http_path = "/workflows/{WorkflowArn}/runs/{RunId}/tasks",
    }, options)
end

function Client:listWorkflowRuns(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkflowRuns",
        input_schema = types.ListWorkflowRunsInput,
        output_schema = types.ListWorkflowRunsOutput,
        http_method = "GET",
        http_path = "/workflows/{WorkflowArn}/runs",
    }, options)
end

function Client:listWorkflows(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkflows",
        input_schema = types.ListWorkflowsInput,
        output_schema = types.ListWorkflowsOutput,
        http_method = "GET",
        http_path = "/workflows",
    }, options)
end

function Client:listWorkflowVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkflowVersions",
        input_schema = types.ListWorkflowVersionsInput,
        output_schema = types.ListWorkflowVersionsOutput,
        http_method = "GET",
        http_path = "/workflows/{WorkflowArn}/versions",
    }, options)
end

function Client:startWorkflowRun(input, options)
    return self:invokeOperation(input, {
        name = "StartWorkflowRun",
        input_schema = types.StartWorkflowRunInput,
        output_schema = types.StartWorkflowRunOutput,
        http_method = "POST",
        http_path = "/workflows/{WorkflowArn}/runs",
    }, options)
end

function Client:stopWorkflowRun(input, options)
    return self:invokeOperation(input, {
        name = "StopWorkflowRun",
        input_schema = types.StopWorkflowRunInput,
        output_schema = types.StopWorkflowRunOutput,
        http_method = "DELETE",
        http_path = "/workflows/{WorkflowArn}/runs/{RunId}",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:updateWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkflow",
        input_schema = types.UpdateWorkflowInput,
        output_schema = types.UpdateWorkflowOutput,
        http_method = "PUT",
        http_path = "/workflows/{WorkflowArn}",
    }, options)
end

return M
