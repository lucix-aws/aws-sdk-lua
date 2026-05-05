local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("emrserverless.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("emrserverless.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AwsToledoWebService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "emr-serverless", signing_region = cfg.region } }
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

function Client:cancelJobRun(input, options)
    return self:invokeOperation(input, {
        name = "CancelJobRun",
        input_schema = schemas.CancelJobRunInput,
        output_schema = schemas.CancelJobRunOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/jobruns/{jobRunId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createApplication(input, options)
    return self:invokeOperation(input, {
        name = "CreateApplication",
        input_schema = schemas.CreateApplicationInput,
        output_schema = schemas.CreateApplicationOutput,
        http_method = "POST",
        http_path = "/applications",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplication",
        input_schema = schemas.DeleteApplicationInput,
        output_schema = schemas.DeleteApplicationOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApplication(input, options)
    return self:invokeOperation(input, {
        name = "GetApplication",
        input_schema = schemas.GetApplicationInput,
        output_schema = schemas.GetApplicationOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDashboardForJobRun(input, options)
    return self:invokeOperation(input, {
        name = "GetDashboardForJobRun",
        input_schema = schemas.GetDashboardForJobRunInput,
        output_schema = schemas.GetDashboardForJobRunOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/jobruns/{jobRunId}/dashboard",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getJobRun(input, options)
    return self:invokeOperation(input, {
        name = "GetJobRun",
        input_schema = schemas.GetJobRunInput,
        output_schema = schemas.GetJobRunOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/jobruns/{jobRunId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourceDashboard(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceDashboard",
        input_schema = schemas.GetResourceDashboardInput,
        output_schema = schemas.GetResourceDashboardOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/dashboard",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSession(input, options)
    return self:invokeOperation(input, {
        name = "GetSession",
        input_schema = schemas.GetSessionInput,
        output_schema = schemas.GetSessionOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/sessions/{sessionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSessionEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "GetSessionEndpoint",
        input_schema = schemas.GetSessionEndpointInput,
        output_schema = schemas.GetSessionEndpointOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/sessions/{sessionId}/endpoint",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApplications(input, options)
    return self:invokeOperation(input, {
        name = "ListApplications",
        input_schema = schemas.ListApplicationsInput,
        output_schema = schemas.ListApplicationsOutput,
        http_method = "GET",
        http_path = "/applications",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listJobRunAttempts(input, options)
    return self:invokeOperation(input, {
        name = "ListJobRunAttempts",
        input_schema = schemas.ListJobRunAttemptsInput,
        output_schema = schemas.ListJobRunAttemptsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/jobruns/{jobRunId}/attempts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listJobRuns(input, options)
    return self:invokeOperation(input, {
        name = "ListJobRuns",
        input_schema = schemas.ListJobRunsInput,
        output_schema = schemas.ListJobRunsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/jobruns",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSessions(input, options)
    return self:invokeOperation(input, {
        name = "ListSessions",
        input_schema = schemas.ListSessionsInput,
        output_schema = schemas.ListSessionsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/sessions",
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

function Client:startApplication(input, options)
    return self:invokeOperation(input, {
        name = "StartApplication",
        input_schema = schemas.StartApplicationInput,
        output_schema = schemas.StartApplicationOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/start",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startJobRun(input, options)
    return self:invokeOperation(input, {
        name = "StartJobRun",
        input_schema = schemas.StartJobRunInput,
        output_schema = schemas.StartJobRunOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/jobruns",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startSession(input, options)
    return self:invokeOperation(input, {
        name = "StartSession",
        input_schema = schemas.StartSessionInput,
        output_schema = schemas.StartSessionOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/sessions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopApplication(input, options)
    return self:invokeOperation(input, {
        name = "StopApplication",
        input_schema = schemas.StopApplicationInput,
        output_schema = schemas.StopApplicationOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/stop",
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

function Client:terminateSession(input, options)
    return self:invokeOperation(input, {
        name = "TerminateSession",
        input_schema = schemas.TerminateSessionInput,
        output_schema = schemas.TerminateSessionOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/sessions/{sessionId}",
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

function Client:updateApplication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplication",
        input_schema = schemas.UpdateApplicationInput,
        output_schema = schemas.UpdateApplicationOutput,
        http_method = "PATCH",
        http_path = "/applications/{applicationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
