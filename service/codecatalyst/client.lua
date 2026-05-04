local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("codecatalyst.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("codecatalyst.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "CodeCatalyst"
    cfg.signing_name = "codecatalyst"
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

function Client:createAccessToken(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccessToken",
        input_schema = types.CreateAccessTokenInput,
        output_schema = types.CreateAccessTokenOutput,
        http_method = "PUT",
        http_path = "/v1/accessTokens",
    }, options)
end

function Client:createDevEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "CreateDevEnvironment",
        input_schema = types.CreateDevEnvironmentInput,
        output_schema = types.CreateDevEnvironmentOutput,
        http_method = "PUT",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments",
    }, options)
end

function Client:createProject(input, options)
    return self:invokeOperation(input, {
        name = "CreateProject",
        input_schema = types.CreateProjectInput,
        output_schema = types.CreateProjectOutput,
        http_method = "PUT",
        http_path = "/v1/spaces/{spaceName}/projects",
    }, options)
end

function Client:createSourceRepository(input, options)
    return self:invokeOperation(input, {
        name = "CreateSourceRepository",
        input_schema = types.CreateSourceRepositoryInput,
        output_schema = types.CreateSourceRepositoryOutput,
        http_method = "PUT",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{name}",
    }, options)
end

function Client:createSourceRepositoryBranch(input, options)
    return self:invokeOperation(input, {
        name = "CreateSourceRepositoryBranch",
        input_schema = types.CreateSourceRepositoryBranchInput,
        output_schema = types.CreateSourceRepositoryBranchOutput,
        http_method = "PUT",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{sourceRepositoryName}/branches/{name}",
    }, options)
end

function Client:deleteAccessToken(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessToken",
        input_schema = types.DeleteAccessTokenInput,
        output_schema = types.DeleteAccessTokenOutput,
        http_method = "DELETE",
        http_path = "/v1/accessTokens/{id}",
    }, options)
end

function Client:deleteDevEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDevEnvironment",
        input_schema = types.DeleteDevEnvironmentInput,
        output_schema = types.DeleteDevEnvironmentOutput,
        http_method = "DELETE",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}",
    }, options)
end

function Client:deleteProject(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProject",
        input_schema = types.DeleteProjectInput,
        output_schema = types.DeleteProjectOutput,
        http_method = "DELETE",
        http_path = "/v1/spaces/{spaceName}/projects/{name}",
    }, options)
end

function Client:deleteSourceRepository(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSourceRepository",
        input_schema = types.DeleteSourceRepositoryInput,
        output_schema = types.DeleteSourceRepositoryOutput,
        http_method = "DELETE",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{name}",
    }, options)
end

function Client:deleteSpace(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSpace",
        input_schema = types.DeleteSpaceInput,
        output_schema = types.DeleteSpaceOutput,
        http_method = "DELETE",
        http_path = "/v1/spaces/{name}",
    }, options)
end

function Client:getDevEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "GetDevEnvironment",
        input_schema = types.GetDevEnvironmentInput,
        output_schema = types.GetDevEnvironmentOutput,
        http_method = "GET",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}",
    }, options)
end

function Client:getProject(input, options)
    return self:invokeOperation(input, {
        name = "GetProject",
        input_schema = types.GetProjectInput,
        output_schema = types.GetProjectOutput,
        http_method = "GET",
        http_path = "/v1/spaces/{spaceName}/projects/{name}",
    }, options)
end

function Client:getSourceRepository(input, options)
    return self:invokeOperation(input, {
        name = "GetSourceRepository",
        input_schema = types.GetSourceRepositoryInput,
        output_schema = types.GetSourceRepositoryOutput,
        http_method = "GET",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{name}",
    }, options)
end

function Client:getSourceRepositoryCloneUrls(input, options)
    return self:invokeOperation(input, {
        name = "GetSourceRepositoryCloneUrls",
        input_schema = types.GetSourceRepositoryCloneUrlsInput,
        output_schema = types.GetSourceRepositoryCloneUrlsOutput,
        http_method = "GET",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{sourceRepositoryName}/cloneUrls",
    }, options)
end

function Client:getSpace(input, options)
    return self:invokeOperation(input, {
        name = "GetSpace",
        input_schema = types.GetSpaceInput,
        output_schema = types.GetSpaceOutput,
        http_method = "GET",
        http_path = "/v1/spaces/{name}",
    }, options)
end

function Client:getSubscription(input, options)
    return self:invokeOperation(input, {
        name = "GetSubscription",
        input_schema = types.GetSubscriptionInput,
        output_schema = types.GetSubscriptionOutput,
        http_method = "GET",
        http_path = "/v1/spaces/{spaceName}/subscription",
    }, options)
end

function Client:getUserDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetUserDetails",
        input_schema = types.GetUserDetailsInput,
        output_schema = types.GetUserDetailsOutput,
        http_method = "GET",
        http_path = "/userDetails",
    }, options)
end

function Client:getWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkflow",
        input_schema = types.GetWorkflowInput,
        output_schema = types.GetWorkflowOutput,
        http_method = "GET",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/workflows/{id}",
    }, options)
end

function Client:getWorkflowRun(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkflowRun",
        input_schema = types.GetWorkflowRunInput,
        output_schema = types.GetWorkflowRunOutput,
        http_method = "GET",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/workflowRuns/{id}",
    }, options)
end

function Client:listAccessTokens(input, options)
    return self:invokeOperation(input, {
        name = "ListAccessTokens",
        input_schema = types.ListAccessTokensInput,
        output_schema = types.ListAccessTokensOutput,
        http_method = "POST",
        http_path = "/v1/accessTokens",
    }, options)
end

function Client:listDevEnvironments(input, options)
    return self:invokeOperation(input, {
        name = "ListDevEnvironments",
        input_schema = types.ListDevEnvironmentsInput,
        output_schema = types.ListDevEnvironmentsOutput,
        http_method = "POST",
        http_path = "/v1/spaces/{spaceName}/devEnvironments",
    }, options)
end

function Client:listDevEnvironmentSessions(input, options)
    return self:invokeOperation(input, {
        name = "ListDevEnvironmentSessions",
        input_schema = types.ListDevEnvironmentSessionsInput,
        output_schema = types.ListDevEnvironmentSessionsOutput,
        http_method = "POST",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{devEnvironmentId}/sessions",
    }, options)
end

function Client:listEventLogs(input, options)
    return self:invokeOperation(input, {
        name = "ListEventLogs",
        input_schema = types.ListEventLogsInput,
        output_schema = types.ListEventLogsOutput,
        http_method = "POST",
        http_path = "/v1/spaces/{spaceName}/eventLogs",
    }, options)
end

function Client:listProjects(input, options)
    return self:invokeOperation(input, {
        name = "ListProjects",
        input_schema = types.ListProjectsInput,
        output_schema = types.ListProjectsOutput,
        http_method = "POST",
        http_path = "/v1/spaces/{spaceName}/projects",
    }, options)
end

function Client:listSourceRepositories(input, options)
    return self:invokeOperation(input, {
        name = "ListSourceRepositories",
        input_schema = types.ListSourceRepositoriesInput,
        output_schema = types.ListSourceRepositoriesOutput,
        http_method = "POST",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories",
    }, options)
end

function Client:listSourceRepositoryBranches(input, options)
    return self:invokeOperation(input, {
        name = "ListSourceRepositoryBranches",
        input_schema = types.ListSourceRepositoryBranchesInput,
        output_schema = types.ListSourceRepositoryBranchesOutput,
        http_method = "POST",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{sourceRepositoryName}/branches",
    }, options)
end

function Client:listSpaces(input, options)
    return self:invokeOperation(input, {
        name = "ListSpaces",
        input_schema = types.ListSpacesInput,
        output_schema = types.ListSpacesOutput,
        http_method = "POST",
        http_path = "/v1/spaces",
    }, options)
end

function Client:listWorkflowRuns(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkflowRuns",
        input_schema = types.ListWorkflowRunsInput,
        output_schema = types.ListWorkflowRunsOutput,
        http_method = "POST",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/workflowRuns",
    }, options)
end

function Client:listWorkflows(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkflows",
        input_schema = types.ListWorkflowsInput,
        output_schema = types.ListWorkflowsOutput,
        http_method = "POST",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/workflows",
    }, options)
end

function Client:startDevEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "StartDevEnvironment",
        input_schema = types.StartDevEnvironmentInput,
        output_schema = types.StartDevEnvironmentOutput,
        http_method = "PUT",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}/start",
    }, options)
end

function Client:startDevEnvironmentSession(input, options)
    return self:invokeOperation(input, {
        name = "StartDevEnvironmentSession",
        input_schema = types.StartDevEnvironmentSessionInput,
        output_schema = types.StartDevEnvironmentSessionOutput,
        http_method = "PUT",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}/session",
    }, options)
end

function Client:startWorkflowRun(input, options)
    return self:invokeOperation(input, {
        name = "StartWorkflowRun",
        input_schema = types.StartWorkflowRunInput,
        output_schema = types.StartWorkflowRunOutput,
        http_method = "PUT",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/workflowRuns",
    }, options)
end

function Client:stopDevEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "StopDevEnvironment",
        input_schema = types.StopDevEnvironmentInput,
        output_schema = types.StopDevEnvironmentOutput,
        http_method = "PUT",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}/stop",
    }, options)
end

function Client:stopDevEnvironmentSession(input, options)
    return self:invokeOperation(input, {
        name = "StopDevEnvironmentSession",
        input_schema = types.StopDevEnvironmentSessionInput,
        output_schema = types.StopDevEnvironmentSessionOutput,
        http_method = "DELETE",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}/session/{sessionId}",
    }, options)
end

function Client:updateDevEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDevEnvironment",
        input_schema = types.UpdateDevEnvironmentInput,
        output_schema = types.UpdateDevEnvironmentOutput,
        http_method = "PATCH",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}",
    }, options)
end

function Client:updateProject(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProject",
        input_schema = types.UpdateProjectInput,
        output_schema = types.UpdateProjectOutput,
        http_method = "PATCH",
        http_path = "/v1/spaces/{spaceName}/projects/{name}",
    }, options)
end

function Client:updateSpace(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSpace",
        input_schema = types.UpdateSpaceInput,
        output_schema = types.UpdateSpaceOutput,
        http_method = "PATCH",
        http_path = "/v1/spaces/{name}",
    }, options)
end

function Client:verifySession(input, options)
    return self:invokeOperation(input, {
        name = "VerifySession",
        input_schema = types.VerifySessionInput,
        output_schema = types.VerifySessionOutput,
        http_method = "GET",
        http_path = "/session",
    }, options)
end

return M
