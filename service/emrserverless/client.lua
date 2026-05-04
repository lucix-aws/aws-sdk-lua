local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("emrserverless.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("emrserverless.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AwsToledoWebService"
    cfg.signing_name = "awstoledowebservice"
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

function Client:cancelJobRun(input, options)
    return self:invokeOperation(input, {
        name = "CancelJobRun",
        input_schema = types.CancelJobRunInput,
        output_schema = types.CancelJobRunOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/jobruns/{jobRunId}",
    }, options)
end

function Client:createApplication(input, options)
    return self:invokeOperation(input, {
        name = "CreateApplication",
        input_schema = types.CreateApplicationInput,
        output_schema = types.CreateApplicationOutput,
        http_method = "POST",
        http_path = "/applications",
    }, options)
end

function Client:deleteApplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplication",
        input_schema = types.DeleteApplicationInput,
        output_schema = types.DeleteApplicationOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}",
    }, options)
end

function Client:getApplication(input, options)
    return self:invokeOperation(input, {
        name = "GetApplication",
        input_schema = types.GetApplicationInput,
        output_schema = types.GetApplicationOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}",
    }, options)
end

function Client:getDashboardForJobRun(input, options)
    return self:invokeOperation(input, {
        name = "GetDashboardForJobRun",
        input_schema = types.GetDashboardForJobRunInput,
        output_schema = types.GetDashboardForJobRunOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/jobruns/{jobRunId}/dashboard",
    }, options)
end

function Client:getJobRun(input, options)
    return self:invokeOperation(input, {
        name = "GetJobRun",
        input_schema = types.GetJobRunInput,
        output_schema = types.GetJobRunOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/jobruns/{jobRunId}",
    }, options)
end

function Client:getResourceDashboard(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceDashboard",
        input_schema = types.GetResourceDashboardInput,
        output_schema = types.GetResourceDashboardOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/dashboard",
    }, options)
end

function Client:getSession(input, options)
    return self:invokeOperation(input, {
        name = "GetSession",
        input_schema = types.GetSessionInput,
        output_schema = types.GetSessionOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/sessions/{sessionId}",
    }, options)
end

function Client:getSessionEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "GetSessionEndpoint",
        input_schema = types.GetSessionEndpointInput,
        output_schema = types.GetSessionEndpointOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/sessions/{sessionId}/endpoint",
    }, options)
end

function Client:listApplications(input, options)
    return self:invokeOperation(input, {
        name = "ListApplications",
        input_schema = types.ListApplicationsInput,
        output_schema = types.ListApplicationsOutput,
        http_method = "GET",
        http_path = "/applications",
    }, options)
end

function Client:listJobRunAttempts(input, options)
    return self:invokeOperation(input, {
        name = "ListJobRunAttempts",
        input_schema = types.ListJobRunAttemptsInput,
        output_schema = types.ListJobRunAttemptsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/jobruns/{jobRunId}/attempts",
    }, options)
end

function Client:listJobRuns(input, options)
    return self:invokeOperation(input, {
        name = "ListJobRuns",
        input_schema = types.ListJobRunsInput,
        output_schema = types.ListJobRunsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/jobruns",
    }, options)
end

function Client:listSessions(input, options)
    return self:invokeOperation(input, {
        name = "ListSessions",
        input_schema = types.ListSessionsInput,
        output_schema = types.ListSessionsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/sessions",
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

function Client:startApplication(input, options)
    return self:invokeOperation(input, {
        name = "StartApplication",
        input_schema = types.StartApplicationInput,
        output_schema = types.StartApplicationOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/start",
    }, options)
end

function Client:startJobRun(input, options)
    return self:invokeOperation(input, {
        name = "StartJobRun",
        input_schema = types.StartJobRunInput,
        output_schema = types.StartJobRunOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/jobruns",
    }, options)
end

function Client:startSession(input, options)
    return self:invokeOperation(input, {
        name = "StartSession",
        input_schema = types.StartSessionInput,
        output_schema = types.StartSessionOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/sessions",
    }, options)
end

function Client:stopApplication(input, options)
    return self:invokeOperation(input, {
        name = "StopApplication",
        input_schema = types.StopApplicationInput,
        output_schema = types.StopApplicationOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/stop",
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

function Client:terminateSession(input, options)
    return self:invokeOperation(input, {
        name = "TerminateSession",
        input_schema = types.TerminateSessionInput,
        output_schema = types.TerminateSessionOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/sessions/{sessionId}",
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

function Client:updateApplication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplication",
        input_schema = types.UpdateApplicationInput,
        output_schema = types.UpdateApplicationOutput,
        http_method = "PATCH",
        http_path = "/applications/{applicationId}",
    }, options)
end

return M
