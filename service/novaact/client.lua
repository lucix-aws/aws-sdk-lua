local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("novaact.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("novaact.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonNovaAgentsDataPlane"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "nova-act", signing_region = cfg.region } }
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

function Client:createAct(input, options)
    return self:invokeOperation(input, {
        name = "CreateAct",
        input_schema = types.CreateActInput,
        output_schema = types.CreateActOutput,
        http_method = "PUT",
        http_path = "/workflow-definitions/{workflowDefinitionName}/workflow-runs/{workflowRunId}/sessions/{sessionId}/acts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSession(input, options)
    return self:invokeOperation(input, {
        name = "CreateSession",
        input_schema = types.CreateSessionInput,
        output_schema = types.CreateSessionOutput,
        http_method = "PUT",
        http_path = "/workflow-definitions/{workflowDefinitionName}/workflow-runs/{workflowRunId}/sessions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWorkflowDefinition(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkflowDefinition",
        input_schema = types.CreateWorkflowDefinitionInput,
        output_schema = types.CreateWorkflowDefinitionOutput,
        http_method = "PUT",
        http_path = "/workflow-definitions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWorkflowRun(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkflowRun",
        input_schema = types.CreateWorkflowRunInput,
        output_schema = types.CreateWorkflowRunOutput,
        http_method = "PUT",
        http_path = "/workflow-definitions/{workflowDefinitionName}/workflow-runs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWorkflowDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkflowDefinition",
        input_schema = types.DeleteWorkflowDefinitionInput,
        output_schema = types.DeleteWorkflowDefinitionOutput,
        http_method = "DELETE",
        http_path = "/workflow-definitions/{workflowDefinitionName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWorkflowRun(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkflowRun",
        input_schema = types.DeleteWorkflowRunInput,
        output_schema = types.DeleteWorkflowRunOutput,
        http_method = "DELETE",
        http_path = "/workflow-definitions/{workflowDefinitionName}/workflow-runs/{workflowRunId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWorkflowDefinition(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkflowDefinition",
        input_schema = types.GetWorkflowDefinitionInput,
        output_schema = types.GetWorkflowDefinitionOutput,
        http_method = "GET",
        http_path = "/workflow-definitions/{workflowDefinitionName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWorkflowRun(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkflowRun",
        input_schema = types.GetWorkflowRunInput,
        output_schema = types.GetWorkflowRunOutput,
        http_method = "GET",
        http_path = "/workflow-definitions/{workflowDefinitionName}/workflow-runs/{workflowRunId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:invokeActStep(input, options)
    return self:invokeOperation(input, {
        name = "InvokeActStep",
        input_schema = types.InvokeActStepInput,
        output_schema = types.InvokeActStepOutput,
        http_method = "PUT",
        http_path = "/workflow-definitions/{workflowDefinitionName}/workflow-runs/{workflowRunId}/sessions/{sessionId}/acts/{actId}/invoke-step/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listActs(input, options)
    return self:invokeOperation(input, {
        name = "ListActs",
        input_schema = types.ListActsInput,
        output_schema = types.ListActsOutput,
        http_method = "POST",
        http_path = "/workflow-definitions/{workflowDefinitionName}/acts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listModels(input, options)
    return self:invokeOperation(input, {
        name = "ListModels",
        input_schema = types.ListModelsInput,
        output_schema = types.ListModelsOutput,
        http_method = "POST",
        http_path = "/models",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSessions(input, options)
    return self:invokeOperation(input, {
        name = "ListSessions",
        input_schema = types.ListSessionsInput,
        output_schema = types.ListSessionsOutput,
        http_method = "POST",
        http_path = "/workflow-definitions/{workflowDefinitionName}/workflow-runs/{workflowRunId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkflowDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkflowDefinitions",
        input_schema = types.ListWorkflowDefinitionsInput,
        output_schema = types.ListWorkflowDefinitionsOutput,
        http_method = "POST",
        http_path = "/workflow-definitions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkflowRuns(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkflowRuns",
        input_schema = types.ListWorkflowRunsInput,
        output_schema = types.ListWorkflowRunsOutput,
        http_method = "POST",
        http_path = "/workflow-definitions/{workflowDefinitionName}/workflow-runs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAct(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAct",
        input_schema = types.UpdateActInput,
        output_schema = types.UpdateActOutput,
        http_method = "PUT",
        http_path = "/workflow-definitions/{workflowDefinitionName}/workflow-runs/{workflowRunId}/sessions/{sessionId}/acts/{actId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWorkflowRun(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkflowRun",
        input_schema = types.UpdateWorkflowRunInput,
        output_schema = types.UpdateWorkflowRunOutput,
        http_method = "PUT",
        http_path = "/workflow-definitions/{workflowDefinitionName}/workflow-runs/{workflowRunId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
