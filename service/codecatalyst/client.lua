local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("codecatalyst.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("codecatalyst.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "CodeCatalyst"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "codecatalyst", signing_region = cfg.region } }
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

function Client:createAccessToken(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccessToken",
        input_schema = schemas.CreateAccessTokenInput,
        output_schema = schemas.CreateAccessTokenOutput,
        http_method = "PUT",
        http_path = "/v1/accessTokens",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:createDevEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "CreateDevEnvironment",
        input_schema = schemas.CreateDevEnvironmentInput,
        output_schema = schemas.CreateDevEnvironmentOutput,
        http_method = "PUT",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:createProject(input, options)
    return self:invokeOperation(input, {
        name = "CreateProject",
        input_schema = schemas.CreateProjectInput,
        output_schema = schemas.CreateProjectOutput,
        http_method = "PUT",
        http_path = "/v1/spaces/{spaceName}/projects",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:createSourceRepository(input, options)
    return self:invokeOperation(input, {
        name = "CreateSourceRepository",
        input_schema = schemas.CreateSourceRepositoryInput,
        output_schema = schemas.CreateSourceRepositoryOutput,
        http_method = "PUT",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{name}",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:createSourceRepositoryBranch(input, options)
    return self:invokeOperation(input, {
        name = "CreateSourceRepositoryBranch",
        input_schema = schemas.CreateSourceRepositoryBranchInput,
        output_schema = schemas.CreateSourceRepositoryBranchOutput,
        http_method = "PUT",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{sourceRepositoryName}/branches/{name}",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:deleteAccessToken(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessToken",
        input_schema = schemas.DeleteAccessTokenInput,
        output_schema = schemas.DeleteAccessTokenOutput,
        http_method = "DELETE",
        http_path = "/v1/accessTokens/{id}",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:deleteDevEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDevEnvironment",
        input_schema = schemas.DeleteDevEnvironmentInput,
        output_schema = schemas.DeleteDevEnvironmentOutput,
        http_method = "DELETE",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:deleteProject(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProject",
        input_schema = schemas.DeleteProjectInput,
        output_schema = schemas.DeleteProjectOutput,
        http_method = "DELETE",
        http_path = "/v1/spaces/{spaceName}/projects/{name}",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:deleteSourceRepository(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSourceRepository",
        input_schema = schemas.DeleteSourceRepositoryInput,
        output_schema = schemas.DeleteSourceRepositoryOutput,
        http_method = "DELETE",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{name}",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:deleteSpace(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSpace",
        input_schema = schemas.DeleteSpaceInput,
        output_schema = schemas.DeleteSpaceOutput,
        http_method = "DELETE",
        http_path = "/v1/spaces/{name}",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getDevEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "GetDevEnvironment",
        input_schema = schemas.GetDevEnvironmentInput,
        output_schema = schemas.GetDevEnvironmentOutput,
        http_method = "GET",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getProject(input, options)
    return self:invokeOperation(input, {
        name = "GetProject",
        input_schema = schemas.GetProjectInput,
        output_schema = schemas.GetProjectOutput,
        http_method = "GET",
        http_path = "/v1/spaces/{spaceName}/projects/{name}",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getSourceRepository(input, options)
    return self:invokeOperation(input, {
        name = "GetSourceRepository",
        input_schema = schemas.GetSourceRepositoryInput,
        output_schema = schemas.GetSourceRepositoryOutput,
        http_method = "GET",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{name}",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getSourceRepositoryCloneUrls(input, options)
    return self:invokeOperation(input, {
        name = "GetSourceRepositoryCloneUrls",
        input_schema = schemas.GetSourceRepositoryCloneUrlsInput,
        output_schema = schemas.GetSourceRepositoryCloneUrlsOutput,
        http_method = "GET",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{sourceRepositoryName}/cloneUrls",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getSpace(input, options)
    return self:invokeOperation(input, {
        name = "GetSpace",
        input_schema = schemas.GetSpaceInput,
        output_schema = schemas.GetSpaceOutput,
        http_method = "GET",
        http_path = "/v1/spaces/{name}",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getSubscription(input, options)
    return self:invokeOperation(input, {
        name = "GetSubscription",
        input_schema = schemas.GetSubscriptionInput,
        output_schema = schemas.GetSubscriptionOutput,
        http_method = "GET",
        http_path = "/v1/spaces/{spaceName}/subscription",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getUserDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetUserDetails",
        input_schema = schemas.GetUserDetailsInput,
        output_schema = schemas.GetUserDetailsOutput,
        http_method = "GET",
        http_path = "/userDetails",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkflow",
        input_schema = schemas.GetWorkflowInput,
        output_schema = schemas.GetWorkflowOutput,
        http_method = "GET",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/workflows/{id}",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:getWorkflowRun(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkflowRun",
        input_schema = schemas.GetWorkflowRunInput,
        output_schema = schemas.GetWorkflowRunOutput,
        http_method = "GET",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/workflowRuns/{id}",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listAccessTokens(input, options)
    return self:invokeOperation(input, {
        name = "ListAccessTokens",
        input_schema = schemas.ListAccessTokensInput,
        output_schema = schemas.ListAccessTokensOutput,
        http_method = "POST",
        http_path = "/v1/accessTokens",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listDevEnvironments(input, options)
    return self:invokeOperation(input, {
        name = "ListDevEnvironments",
        input_schema = schemas.ListDevEnvironmentsInput,
        output_schema = schemas.ListDevEnvironmentsOutput,
        http_method = "POST",
        http_path = "/v1/spaces/{spaceName}/devEnvironments",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listDevEnvironmentSessions(input, options)
    return self:invokeOperation(input, {
        name = "ListDevEnvironmentSessions",
        input_schema = schemas.ListDevEnvironmentSessionsInput,
        output_schema = schemas.ListDevEnvironmentSessionsOutput,
        http_method = "POST",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{devEnvironmentId}/sessions",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listEventLogs(input, options)
    return self:invokeOperation(input, {
        name = "ListEventLogs",
        input_schema = schemas.ListEventLogsInput,
        output_schema = schemas.ListEventLogsOutput,
        http_method = "POST",
        http_path = "/v1/spaces/{spaceName}/eventLogs",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listProjects(input, options)
    return self:invokeOperation(input, {
        name = "ListProjects",
        input_schema = schemas.ListProjectsInput,
        output_schema = schemas.ListProjectsOutput,
        http_method = "POST",
        http_path = "/v1/spaces/{spaceName}/projects",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listSourceRepositories(input, options)
    return self:invokeOperation(input, {
        name = "ListSourceRepositories",
        input_schema = schemas.ListSourceRepositoriesInput,
        output_schema = schemas.ListSourceRepositoriesOutput,
        http_method = "POST",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listSourceRepositoryBranches(input, options)
    return self:invokeOperation(input, {
        name = "ListSourceRepositoryBranches",
        input_schema = schemas.ListSourceRepositoryBranchesInput,
        output_schema = schemas.ListSourceRepositoryBranchesOutput,
        http_method = "POST",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{sourceRepositoryName}/branches",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listSpaces(input, options)
    return self:invokeOperation(input, {
        name = "ListSpaces",
        input_schema = schemas.ListSpacesInput,
        output_schema = schemas.ListSpacesOutput,
        http_method = "POST",
        http_path = "/v1/spaces",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listWorkflowRuns(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkflowRuns",
        input_schema = schemas.ListWorkflowRunsInput,
        output_schema = schemas.ListWorkflowRunsOutput,
        http_method = "POST",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/workflowRuns",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:listWorkflows(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkflows",
        input_schema = schemas.ListWorkflowsInput,
        output_schema = schemas.ListWorkflowsOutput,
        http_method = "POST",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/workflows",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:startDevEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "StartDevEnvironment",
        input_schema = schemas.StartDevEnvironmentInput,
        output_schema = schemas.StartDevEnvironmentOutput,
        http_method = "PUT",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}/start",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:startDevEnvironmentSession(input, options)
    return self:invokeOperation(input, {
        name = "StartDevEnvironmentSession",
        input_schema = schemas.StartDevEnvironmentSessionInput,
        output_schema = schemas.StartDevEnvironmentSessionOutput,
        http_method = "PUT",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}/session",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:startWorkflowRun(input, options)
    return self:invokeOperation(input, {
        name = "StartWorkflowRun",
        input_schema = schemas.StartWorkflowRunInput,
        output_schema = schemas.StartWorkflowRunOutput,
        http_method = "PUT",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/workflowRuns",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:stopDevEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "StopDevEnvironment",
        input_schema = schemas.StopDevEnvironmentInput,
        output_schema = schemas.StopDevEnvironmentOutput,
        http_method = "PUT",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}/stop",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:stopDevEnvironmentSession(input, options)
    return self:invokeOperation(input, {
        name = "StopDevEnvironmentSession",
        input_schema = schemas.StopDevEnvironmentSessionInput,
        output_schema = schemas.StopDevEnvironmentSessionOutput,
        http_method = "DELETE",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}/session/{sessionId}",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:updateDevEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDevEnvironment",
        input_schema = schemas.UpdateDevEnvironmentInput,
        output_schema = schemas.UpdateDevEnvironmentOutput,
        http_method = "PATCH",
        http_path = "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:updateProject(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProject",
        input_schema = schemas.UpdateProjectInput,
        output_schema = schemas.UpdateProjectOutput,
        http_method = "PATCH",
        http_path = "/v1/spaces/{spaceName}/projects/{name}",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:updateSpace(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSpace",
        input_schema = schemas.UpdateSpaceInput,
        output_schema = schemas.UpdateSpaceOutput,
        http_method = "PATCH",
        http_path = "/v1/spaces/{name}",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

function Client:verifySession(input, options)
    return self:invokeOperation(input, {
        name = "VerifySession",
        input_schema = schemas.VerifySessionInput,
        output_schema = schemas.VerifySessionOutput,
        http_method = "GET",
        http_path = "/session",
        effective_auth_schemes = {
            "smithy.api#httpBearerAuth",
        },
    }, options)
end

return M
