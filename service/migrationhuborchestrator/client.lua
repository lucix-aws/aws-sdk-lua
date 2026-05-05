local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("migrationhuborchestrator.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("migrationhuborchestrator.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSMigrationHubOrchestrator"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "migrationhub-orchestrator", signing_region = cfg.region } }
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

function Client:createTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateTemplate",
        input_schema = schemas.CreateTemplateInput,
        output_schema = schemas.CreateTemplateOutput,
        http_method = "POST",
        http_path = "/template",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkflow",
        input_schema = schemas.CreateWorkflowInput,
        output_schema = schemas.CreateWorkflowOutput,
        http_method = "POST",
        http_path = "/migrationworkflow/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWorkflowStep(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkflowStep",
        input_schema = schemas.CreateWorkflowStepInput,
        output_schema = schemas.CreateWorkflowStepOutput,
        http_method = "POST",
        http_path = "/workflowstep",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWorkflowStepGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkflowStepGroup",
        input_schema = schemas.CreateWorkflowStepGroupInput,
        output_schema = schemas.CreateWorkflowStepGroupOutput,
        http_method = "POST",
        http_path = "/workflowstepgroups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTemplate",
        input_schema = schemas.DeleteTemplateInput,
        output_schema = schemas.DeleteTemplateOutput,
        http_method = "DELETE",
        http_path = "/template/{id}",
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
        http_path = "/migrationworkflow/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWorkflowStep(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkflowStep",
        input_schema = schemas.DeleteWorkflowStepInput,
        output_schema = schemas.DeleteWorkflowStepOutput,
        http_method = "DELETE",
        http_path = "/workflowstep/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWorkflowStepGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkflowStepGroup",
        input_schema = schemas.DeleteWorkflowStepGroupInput,
        output_schema = schemas.DeleteWorkflowStepGroupOutput,
        http_method = "DELETE",
        http_path = "/workflowstepgroup/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetTemplate",
        input_schema = schemas.GetTemplateInput,
        output_schema = schemas.GetTemplateOutput,
        http_method = "GET",
        http_path = "/migrationworkflowtemplate/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTemplateStep(input, options)
    return self:invokeOperation(input, {
        name = "GetTemplateStep",
        input_schema = schemas.GetTemplateStepInput,
        output_schema = schemas.GetTemplateStepOutput,
        http_method = "GET",
        http_path = "/templatestep/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTemplateStepGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetTemplateStepGroup",
        input_schema = schemas.GetTemplateStepGroupInput,
        output_schema = schemas.GetTemplateStepGroupOutput,
        http_method = "GET",
        http_path = "/templates/{templateId}/stepgroups/{id}",
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
        http_path = "/migrationworkflow/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWorkflowStep(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkflowStep",
        input_schema = schemas.GetWorkflowStepInput,
        output_schema = schemas.GetWorkflowStepOutput,
        http_method = "GET",
        http_path = "/workflowstep/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWorkflowStepGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkflowStepGroup",
        input_schema = schemas.GetWorkflowStepGroupInput,
        output_schema = schemas.GetWorkflowStepGroupOutput,
        http_method = "GET",
        http_path = "/workflowstepgroup/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPlugins(input, options)
    return self:invokeOperation(input, {
        name = "ListPlugins",
        input_schema = schemas.ListPluginsInput,
        output_schema = schemas.ListPluginsOutput,
        http_method = "GET",
        http_path = "/plugins",
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

function Client:listTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListTemplates",
        input_schema = schemas.ListTemplatesInput,
        output_schema = schemas.ListTemplatesOutput,
        http_method = "GET",
        http_path = "/migrationworkflowtemplates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTemplateStepGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListTemplateStepGroups",
        input_schema = schemas.ListTemplateStepGroupsInput,
        output_schema = schemas.ListTemplateStepGroupsOutput,
        http_method = "GET",
        http_path = "/templatestepgroups/{templateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTemplateSteps(input, options)
    return self:invokeOperation(input, {
        name = "ListTemplateSteps",
        input_schema = schemas.ListTemplateStepsInput,
        output_schema = schemas.ListTemplateStepsOutput,
        http_method = "GET",
        http_path = "/templatesteps",
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
        http_path = "/migrationworkflows",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkflowStepGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkflowStepGroups",
        input_schema = schemas.ListWorkflowStepGroupsInput,
        output_schema = schemas.ListWorkflowStepGroupsOutput,
        http_method = "GET",
        http_path = "/workflowstepgroups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkflowSteps(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkflowSteps",
        input_schema = schemas.ListWorkflowStepsInput,
        output_schema = schemas.ListWorkflowStepsOutput,
        http_method = "GET",
        http_path = "/workflow/{workflowId}/workflowstepgroups/{stepGroupId}/workflowsteps",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:retryWorkflowStep(input, options)
    return self:invokeOperation(input, {
        name = "RetryWorkflowStep",
        input_schema = schemas.RetryWorkflowStepInput,
        output_schema = schemas.RetryWorkflowStepOutput,
        http_method = "POST",
        http_path = "/retryworkflowstep/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "StartWorkflow",
        input_schema = schemas.StartWorkflowInput,
        output_schema = schemas.StartWorkflowOutput,
        http_method = "POST",
        http_path = "/migrationworkflow/{id}/start",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "StopWorkflow",
        input_schema = schemas.StopWorkflowInput,
        output_schema = schemas.StopWorkflowOutput,
        http_method = "POST",
        http_path = "/migrationworkflow/{id}/stop",
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

function Client:updateTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTemplate",
        input_schema = schemas.UpdateTemplateInput,
        output_schema = schemas.UpdateTemplateOutput,
        http_method = "POST",
        http_path = "/template/{id}",
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
        http_method = "POST",
        http_path = "/migrationworkflow/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWorkflowStep(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkflowStep",
        input_schema = schemas.UpdateWorkflowStepInput,
        output_schema = schemas.UpdateWorkflowStepOutput,
        http_method = "POST",
        http_path = "/workflowstep/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWorkflowStepGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkflowStepGroup",
        input_schema = schemas.UpdateWorkflowStepGroupInput,
        output_schema = schemas.UpdateWorkflowStepGroupOutput,
        http_method = "POST",
        http_path = "/workflowstepgroup/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
