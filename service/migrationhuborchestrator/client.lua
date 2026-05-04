local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("migrationhuborchestrator.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("migrationhuborchestrator.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSMigrationHubOrchestrator"
    cfg.signing_name = "migrationhub-orchestrator"
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

function Client:createTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateTemplate",
        input_schema = types.CreateTemplateInput,
        output_schema = types.CreateTemplateOutput,
        http_method = "POST",
        http_path = "/template",
    }, options)
end

function Client:createWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkflow",
        input_schema = types.CreateWorkflowInput,
        output_schema = types.CreateWorkflowOutput,
        http_method = "POST",
        http_path = "/migrationworkflow/",
    }, options)
end

function Client:createWorkflowStep(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkflowStep",
        input_schema = types.CreateWorkflowStepInput,
        output_schema = types.CreateWorkflowStepOutput,
        http_method = "POST",
        http_path = "/workflowstep",
    }, options)
end

function Client:createWorkflowStepGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkflowStepGroup",
        input_schema = types.CreateWorkflowStepGroupInput,
        output_schema = types.CreateWorkflowStepGroupOutput,
        http_method = "POST",
        http_path = "/workflowstepgroups",
    }, options)
end

function Client:deleteTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTemplate",
        input_schema = types.DeleteTemplateInput,
        output_schema = types.DeleteTemplateOutput,
        http_method = "DELETE",
        http_path = "/template/{id}",
    }, options)
end

function Client:deleteWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkflow",
        input_schema = types.DeleteWorkflowInput,
        output_schema = types.DeleteWorkflowOutput,
        http_method = "DELETE",
        http_path = "/migrationworkflow/{id}",
    }, options)
end

function Client:deleteWorkflowStep(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkflowStep",
        input_schema = types.DeleteWorkflowStepInput,
        output_schema = types.DeleteWorkflowStepOutput,
        http_method = "DELETE",
        http_path = "/workflowstep/{id}",
    }, options)
end

function Client:deleteWorkflowStepGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkflowStepGroup",
        input_schema = types.DeleteWorkflowStepGroupInput,
        output_schema = types.DeleteWorkflowStepGroupOutput,
        http_method = "DELETE",
        http_path = "/workflowstepgroup/{id}",
    }, options)
end

function Client:getTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetTemplate",
        input_schema = types.GetTemplateInput,
        output_schema = types.GetTemplateOutput,
        http_method = "GET",
        http_path = "/migrationworkflowtemplate/{id}",
    }, options)
end

function Client:getTemplateStep(input, options)
    return self:invokeOperation(input, {
        name = "GetTemplateStep",
        input_schema = types.GetTemplateStepInput,
        output_schema = types.GetTemplateStepOutput,
        http_method = "GET",
        http_path = "/templatestep/{id}",
    }, options)
end

function Client:getTemplateStepGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetTemplateStepGroup",
        input_schema = types.GetTemplateStepGroupInput,
        output_schema = types.GetTemplateStepGroupOutput,
        http_method = "GET",
        http_path = "/templates/{templateId}/stepgroups/{id}",
    }, options)
end

function Client:getWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkflow",
        input_schema = types.GetWorkflowInput,
        output_schema = types.GetWorkflowOutput,
        http_method = "GET",
        http_path = "/migrationworkflow/{id}",
    }, options)
end

function Client:getWorkflowStep(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkflowStep",
        input_schema = types.GetWorkflowStepInput,
        output_schema = types.GetWorkflowStepOutput,
        http_method = "GET",
        http_path = "/workflowstep/{id}",
    }, options)
end

function Client:getWorkflowStepGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkflowStepGroup",
        input_schema = types.GetWorkflowStepGroupInput,
        output_schema = types.GetWorkflowStepGroupOutput,
        http_method = "GET",
        http_path = "/workflowstepgroup/{id}",
    }, options)
end

function Client:listPlugins(input, options)
    return self:invokeOperation(input, {
        name = "ListPlugins",
        input_schema = types.ListPluginsInput,
        output_schema = types.ListPluginsOutput,
        http_method = "GET",
        http_path = "/plugins",
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

function Client:listTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListTemplates",
        input_schema = types.ListTemplatesInput,
        output_schema = types.ListTemplatesOutput,
        http_method = "GET",
        http_path = "/migrationworkflowtemplates",
    }, options)
end

function Client:listTemplateStepGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListTemplateStepGroups",
        input_schema = types.ListTemplateStepGroupsInput,
        output_schema = types.ListTemplateStepGroupsOutput,
        http_method = "GET",
        http_path = "/templatestepgroups/{templateId}",
    }, options)
end

function Client:listTemplateSteps(input, options)
    return self:invokeOperation(input, {
        name = "ListTemplateSteps",
        input_schema = types.ListTemplateStepsInput,
        output_schema = types.ListTemplateStepsOutput,
        http_method = "GET",
        http_path = "/templatesteps",
    }, options)
end

function Client:listWorkflows(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkflows",
        input_schema = types.ListWorkflowsInput,
        output_schema = types.ListWorkflowsOutput,
        http_method = "GET",
        http_path = "/migrationworkflows",
    }, options)
end

function Client:listWorkflowStepGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkflowStepGroups",
        input_schema = types.ListWorkflowStepGroupsInput,
        output_schema = types.ListWorkflowStepGroupsOutput,
        http_method = "GET",
        http_path = "/workflowstepgroups",
    }, options)
end

function Client:listWorkflowSteps(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkflowSteps",
        input_schema = types.ListWorkflowStepsInput,
        output_schema = types.ListWorkflowStepsOutput,
        http_method = "GET",
        http_path = "/workflow/{workflowId}/workflowstepgroups/{stepGroupId}/workflowsteps",
    }, options)
end

function Client:retryWorkflowStep(input, options)
    return self:invokeOperation(input, {
        name = "RetryWorkflowStep",
        input_schema = types.RetryWorkflowStepInput,
        output_schema = types.RetryWorkflowStepOutput,
        http_method = "POST",
        http_path = "/retryworkflowstep/{id}",
    }, options)
end

function Client:startWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "StartWorkflow",
        input_schema = types.StartWorkflowInput,
        output_schema = types.StartWorkflowOutput,
        http_method = "POST",
        http_path = "/migrationworkflow/{id}/start",
    }, options)
end

function Client:stopWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "StopWorkflow",
        input_schema = types.StopWorkflowInput,
        output_schema = types.StopWorkflowOutput,
        http_method = "POST",
        http_path = "/migrationworkflow/{id}/stop",
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

function Client:updateTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTemplate",
        input_schema = types.UpdateTemplateInput,
        output_schema = types.UpdateTemplateOutput,
        http_method = "POST",
        http_path = "/template/{id}",
    }, options)
end

function Client:updateWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkflow",
        input_schema = types.UpdateWorkflowInput,
        output_schema = types.UpdateWorkflowOutput,
        http_method = "POST",
        http_path = "/migrationworkflow/{id}",
    }, options)
end

function Client:updateWorkflowStep(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkflowStep",
        input_schema = types.UpdateWorkflowStepInput,
        output_schema = types.UpdateWorkflowStepOutput,
        http_method = "POST",
        http_path = "/workflowstep/{id}",
    }, options)
end

function Client:updateWorkflowStepGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkflowStepGroup",
        input_schema = types.UpdateWorkflowStepGroupInput,
        output_schema = types.UpdateWorkflowStepGroupOutput,
        http_method = "POST",
        http_path = "/workflowstepgroup/{id}",
    }, options)
end

return M
