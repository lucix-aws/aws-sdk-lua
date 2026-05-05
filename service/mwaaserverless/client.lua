local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("mwaaserverless.endpoint_rules")
local schemas = require("mwaaserverless.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonMWAAServerless"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "airflow-serverless", signing_region = cfg.region } }
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

function Client:createWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkflow",
        input_schema = schemas.CreateWorkflowInput,
        output_schema = schemas.CreateWorkflowOutput,
        http_method = "POST",
        http_path = "/workflows",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkflow",
        input_schema = schemas.DeleteWorkflowInput,
        output_schema = schemas.DeleteWorkflowOutput,
        http_method = "DELETE",
        http_path = "/workflows/{WorkflowArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTaskInstance(input, options)
    return self:invokeOperation(input, {
        name = "GetTaskInstance",
        input_schema = schemas.GetTaskInstanceInput,
        output_schema = schemas.GetTaskInstanceOutput,
        http_method = "GET",
        http_path = "/workflows/{WorkflowArn}/runs/{RunId}/tasks/{TaskInstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkflow",
        input_schema = schemas.GetWorkflowInput,
        output_schema = schemas.GetWorkflowOutput,
        http_method = "GET",
        http_path = "/workflows/{WorkflowArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWorkflowRun(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkflowRun",
        input_schema = schemas.GetWorkflowRunInput,
        output_schema = schemas.GetWorkflowRunOutput,
        http_method = "GET",
        http_path = "/workflows/{WorkflowArn}/runs/{RunId}",
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
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTaskInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListTaskInstances",
        input_schema = schemas.ListTaskInstancesInput,
        output_schema = schemas.ListTaskInstancesOutput,
        http_method = "GET",
        http_path = "/workflows/{WorkflowArn}/runs/{RunId}/tasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkflowRuns(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkflowRuns",
        input_schema = schemas.ListWorkflowRunsInput,
        output_schema = schemas.ListWorkflowRunsOutput,
        http_method = "GET",
        http_path = "/workflows/{WorkflowArn}/runs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkflows(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkflows",
        input_schema = schemas.ListWorkflowsInput,
        output_schema = schemas.ListWorkflowsOutput,
        http_method = "GET",
        http_path = "/workflows",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkflowVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkflowVersions",
        input_schema = schemas.ListWorkflowVersionsInput,
        output_schema = schemas.ListWorkflowVersionsOutput,
        http_method = "GET",
        http_path = "/workflows/{WorkflowArn}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startWorkflowRun(input, options)
    return self:invokeOperation(input, {
        name = "StartWorkflowRun",
        input_schema = schemas.StartWorkflowRunInput,
        output_schema = schemas.StartWorkflowRunOutput,
        http_method = "POST",
        http_path = "/workflows/{WorkflowArn}/runs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopWorkflowRun(input, options)
    return self:invokeOperation(input, {
        name = "StopWorkflowRun",
        input_schema = schemas.StopWorkflowRunInput,
        output_schema = schemas.StopWorkflowRunOutput,
        http_method = "DELETE",
        http_path = "/workflows/{WorkflowArn}/runs/{RunId}",
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
        http_path = "/tags/{ResourceArn}",
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
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkflow",
        input_schema = schemas.UpdateWorkflowInput,
        output_schema = schemas.UpdateWorkflowOutput,
        http_method = "PUT",
        http_path = "/workflows/{WorkflowArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
