local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("amplifybackend.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("amplifybackend.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmplifyBackend"
    cfg.signing_name = "amplifybackend"
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

function Client:cloneBackend(input, options)
    return self:invokeOperation(input, {
        name = "CloneBackend",
        input_schema = types.CloneBackendInput,
        output_schema = types.CloneBackendOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/environments/{BackendEnvironmentName}/clone",
    }, options)
end

function Client:createBackend(input, options)
    return self:invokeOperation(input, {
        name = "CreateBackend",
        input_schema = types.CreateBackendInput,
        output_schema = types.CreateBackendOutput,
        http_method = "POST",
        http_path = "/backend",
    }, options)
end

function Client:createBackendAPI(input, options)
    return self:invokeOperation(input, {
        name = "CreateBackendAPI",
        input_schema = types.CreateBackendAPIInput,
        output_schema = types.CreateBackendAPIOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/api",
    }, options)
end

function Client:createBackendAuth(input, options)
    return self:invokeOperation(input, {
        name = "CreateBackendAuth",
        input_schema = types.CreateBackendAuthInput,
        output_schema = types.CreateBackendAuthOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/auth",
    }, options)
end

function Client:createBackendConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateBackendConfig",
        input_schema = types.CreateBackendConfigInput,
        output_schema = types.CreateBackendConfigOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/config",
    }, options)
end

function Client:createBackendStorage(input, options)
    return self:invokeOperation(input, {
        name = "CreateBackendStorage",
        input_schema = types.CreateBackendStorageInput,
        output_schema = types.CreateBackendStorageOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/storage",
    }, options)
end

function Client:createToken(input, options)
    return self:invokeOperation(input, {
        name = "CreateToken",
        input_schema = types.CreateTokenInput,
        output_schema = types.CreateTokenOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/challenge",
    }, options)
end

function Client:deleteBackend(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBackend",
        input_schema = types.DeleteBackendInput,
        output_schema = types.DeleteBackendOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/environments/{BackendEnvironmentName}/remove",
    }, options)
end

function Client:deleteBackendAPI(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBackendAPI",
        input_schema = types.DeleteBackendAPIInput,
        output_schema = types.DeleteBackendAPIOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/api/{BackendEnvironmentName}/remove",
    }, options)
end

function Client:deleteBackendAuth(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBackendAuth",
        input_schema = types.DeleteBackendAuthInput,
        output_schema = types.DeleteBackendAuthOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/auth/{BackendEnvironmentName}/remove",
    }, options)
end

function Client:deleteBackendStorage(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBackendStorage",
        input_schema = types.DeleteBackendStorageInput,
        output_schema = types.DeleteBackendStorageOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/storage/{BackendEnvironmentName}/remove",
    }, options)
end

function Client:deleteToken(input, options)
    return self:invokeOperation(input, {
        name = "DeleteToken",
        input_schema = types.DeleteTokenInput,
        output_schema = types.DeleteTokenOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/challenge/{SessionId}/remove",
    }, options)
end

function Client:generateBackendAPIModels(input, options)
    return self:invokeOperation(input, {
        name = "GenerateBackendAPIModels",
        input_schema = types.GenerateBackendAPIModelsInput,
        output_schema = types.GenerateBackendAPIModelsOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/api/{BackendEnvironmentName}/generateModels",
    }, options)
end

function Client:getBackend(input, options)
    return self:invokeOperation(input, {
        name = "GetBackend",
        input_schema = types.GetBackendInput,
        output_schema = types.GetBackendOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/details",
    }, options)
end

function Client:getBackendAPI(input, options)
    return self:invokeOperation(input, {
        name = "GetBackendAPI",
        input_schema = types.GetBackendAPIInput,
        output_schema = types.GetBackendAPIOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/api/{BackendEnvironmentName}/details",
    }, options)
end

function Client:getBackendAPIModels(input, options)
    return self:invokeOperation(input, {
        name = "GetBackendAPIModels",
        input_schema = types.GetBackendAPIModelsInput,
        output_schema = types.GetBackendAPIModelsOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/api/{BackendEnvironmentName}/getModels",
    }, options)
end

function Client:getBackendAuth(input, options)
    return self:invokeOperation(input, {
        name = "GetBackendAuth",
        input_schema = types.GetBackendAuthInput,
        output_schema = types.GetBackendAuthOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/auth/{BackendEnvironmentName}/details",
    }, options)
end

function Client:getBackendJob(input, options)
    return self:invokeOperation(input, {
        name = "GetBackendJob",
        input_schema = types.GetBackendJobInput,
        output_schema = types.GetBackendJobOutput,
        http_method = "GET",
        http_path = "/backend/{AppId}/job/{BackendEnvironmentName}/{JobId}",
    }, options)
end

function Client:getBackendStorage(input, options)
    return self:invokeOperation(input, {
        name = "GetBackendStorage",
        input_schema = types.GetBackendStorageInput,
        output_schema = types.GetBackendStorageOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/storage/{BackendEnvironmentName}/details",
    }, options)
end

function Client:getToken(input, options)
    return self:invokeOperation(input, {
        name = "GetToken",
        input_schema = types.GetTokenInput,
        output_schema = types.GetTokenOutput,
        http_method = "GET",
        http_path = "/backend/{AppId}/challenge/{SessionId}",
    }, options)
end

function Client:importBackendAuth(input, options)
    return self:invokeOperation(input, {
        name = "ImportBackendAuth",
        input_schema = types.ImportBackendAuthInput,
        output_schema = types.ImportBackendAuthOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/auth/{BackendEnvironmentName}/import",
    }, options)
end

function Client:importBackendStorage(input, options)
    return self:invokeOperation(input, {
        name = "ImportBackendStorage",
        input_schema = types.ImportBackendStorageInput,
        output_schema = types.ImportBackendStorageOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/storage/{BackendEnvironmentName}/import",
    }, options)
end

function Client:listBackendJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListBackendJobs",
        input_schema = types.ListBackendJobsInput,
        output_schema = types.ListBackendJobsOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/job/{BackendEnvironmentName}",
    }, options)
end

function Client:listS3Buckets(input, options)
    return self:invokeOperation(input, {
        name = "ListS3Buckets",
        input_schema = types.ListS3BucketsInput,
        output_schema = types.ListS3BucketsOutput,
        http_method = "POST",
        http_path = "/s3Buckets",
    }, options)
end

function Client:removeAllBackends(input, options)
    return self:invokeOperation(input, {
        name = "RemoveAllBackends",
        input_schema = types.RemoveAllBackendsInput,
        output_schema = types.RemoveAllBackendsOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/remove",
    }, options)
end

function Client:removeBackendConfig(input, options)
    return self:invokeOperation(input, {
        name = "RemoveBackendConfig",
        input_schema = types.RemoveBackendConfigInput,
        output_schema = types.RemoveBackendConfigOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/config/remove",
    }, options)
end

function Client:updateBackendAPI(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBackendAPI",
        input_schema = types.UpdateBackendAPIInput,
        output_schema = types.UpdateBackendAPIOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/api/{BackendEnvironmentName}",
    }, options)
end

function Client:updateBackendAuth(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBackendAuth",
        input_schema = types.UpdateBackendAuthInput,
        output_schema = types.UpdateBackendAuthOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/auth/{BackendEnvironmentName}",
    }, options)
end

function Client:updateBackendConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBackendConfig",
        input_schema = types.UpdateBackendConfigInput,
        output_schema = types.UpdateBackendConfigOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/config/update",
    }, options)
end

function Client:updateBackendJob(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBackendJob",
        input_schema = types.UpdateBackendJobInput,
        output_schema = types.UpdateBackendJobOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/job/{BackendEnvironmentName}/{JobId}",
    }, options)
end

function Client:updateBackendStorage(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBackendStorage",
        input_schema = types.UpdateBackendStorageInput,
        output_schema = types.UpdateBackendStorageOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/storage/{BackendEnvironmentName}",
    }, options)
end

return M
