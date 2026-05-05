local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("amplifybackend.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("amplifybackend.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmplifyBackend"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "amplifybackend", signing_region = cfg.region } }
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

function Client:cloneBackend(input, options)
    return self:invokeOperation(input, {
        name = "CloneBackend",
        input_schema = schemas.CloneBackendInput,
        output_schema = schemas.CloneBackendOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/environments/{BackendEnvironmentName}/clone",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBackend(input, options)
    return self:invokeOperation(input, {
        name = "CreateBackend",
        input_schema = schemas.CreateBackendInput,
        output_schema = schemas.CreateBackendOutput,
        http_method = "POST",
        http_path = "/backend",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBackendAPI(input, options)
    return self:invokeOperation(input, {
        name = "CreateBackendAPI",
        input_schema = schemas.CreateBackendAPIInput,
        output_schema = schemas.CreateBackendAPIOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/api",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBackendAuth(input, options)
    return self:invokeOperation(input, {
        name = "CreateBackendAuth",
        input_schema = schemas.CreateBackendAuthInput,
        output_schema = schemas.CreateBackendAuthOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/auth",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBackendConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateBackendConfig",
        input_schema = schemas.CreateBackendConfigInput,
        output_schema = schemas.CreateBackendConfigOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBackendStorage(input, options)
    return self:invokeOperation(input, {
        name = "CreateBackendStorage",
        input_schema = schemas.CreateBackendStorageInput,
        output_schema = schemas.CreateBackendStorageOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/storage",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createToken(input, options)
    return self:invokeOperation(input, {
        name = "CreateToken",
        input_schema = schemas.CreateTokenInput,
        output_schema = schemas.CreateTokenOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/challenge",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBackend(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBackend",
        input_schema = schemas.DeleteBackendInput,
        output_schema = schemas.DeleteBackendOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/environments/{BackendEnvironmentName}/remove",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBackendAPI(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBackendAPI",
        input_schema = schemas.DeleteBackendAPIInput,
        output_schema = schemas.DeleteBackendAPIOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/api/{BackendEnvironmentName}/remove",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBackendAuth(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBackendAuth",
        input_schema = schemas.DeleteBackendAuthInput,
        output_schema = schemas.DeleteBackendAuthOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/auth/{BackendEnvironmentName}/remove",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBackendStorage(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBackendStorage",
        input_schema = schemas.DeleteBackendStorageInput,
        output_schema = schemas.DeleteBackendStorageOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/storage/{BackendEnvironmentName}/remove",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteToken(input, options)
    return self:invokeOperation(input, {
        name = "DeleteToken",
        input_schema = schemas.DeleteTokenInput,
        output_schema = schemas.DeleteTokenOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/challenge/{SessionId}/remove",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:generateBackendAPIModels(input, options)
    return self:invokeOperation(input, {
        name = "GenerateBackendAPIModels",
        input_schema = schemas.GenerateBackendAPIModelsInput,
        output_schema = schemas.GenerateBackendAPIModelsOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/api/{BackendEnvironmentName}/generateModels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBackend(input, options)
    return self:invokeOperation(input, {
        name = "GetBackend",
        input_schema = schemas.GetBackendInput,
        output_schema = schemas.GetBackendOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/details",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBackendAPI(input, options)
    return self:invokeOperation(input, {
        name = "GetBackendAPI",
        input_schema = schemas.GetBackendAPIInput,
        output_schema = schemas.GetBackendAPIOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/api/{BackendEnvironmentName}/details",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBackendAPIModels(input, options)
    return self:invokeOperation(input, {
        name = "GetBackendAPIModels",
        input_schema = schemas.GetBackendAPIModelsInput,
        output_schema = schemas.GetBackendAPIModelsOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/api/{BackendEnvironmentName}/getModels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBackendAuth(input, options)
    return self:invokeOperation(input, {
        name = "GetBackendAuth",
        input_schema = schemas.GetBackendAuthInput,
        output_schema = schemas.GetBackendAuthOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/auth/{BackendEnvironmentName}/details",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBackendJob(input, options)
    return self:invokeOperation(input, {
        name = "GetBackendJob",
        input_schema = schemas.GetBackendJobInput,
        output_schema = schemas.GetBackendJobOutput,
        http_method = "GET",
        http_path = "/backend/{AppId}/job/{BackendEnvironmentName}/{JobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBackendStorage(input, options)
    return self:invokeOperation(input, {
        name = "GetBackendStorage",
        input_schema = schemas.GetBackendStorageInput,
        output_schema = schemas.GetBackendStorageOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/storage/{BackendEnvironmentName}/details",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getToken(input, options)
    return self:invokeOperation(input, {
        name = "GetToken",
        input_schema = schemas.GetTokenInput,
        output_schema = schemas.GetTokenOutput,
        http_method = "GET",
        http_path = "/backend/{AppId}/challenge/{SessionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importBackendAuth(input, options)
    return self:invokeOperation(input, {
        name = "ImportBackendAuth",
        input_schema = schemas.ImportBackendAuthInput,
        output_schema = schemas.ImportBackendAuthOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/auth/{BackendEnvironmentName}/import",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importBackendStorage(input, options)
    return self:invokeOperation(input, {
        name = "ImportBackendStorage",
        input_schema = schemas.ImportBackendStorageInput,
        output_schema = schemas.ImportBackendStorageOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/storage/{BackendEnvironmentName}/import",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBackendJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListBackendJobs",
        input_schema = schemas.ListBackendJobsInput,
        output_schema = schemas.ListBackendJobsOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/job/{BackendEnvironmentName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listS3Buckets(input, options)
    return self:invokeOperation(input, {
        name = "ListS3Buckets",
        input_schema = schemas.ListS3BucketsInput,
        output_schema = schemas.ListS3BucketsOutput,
        http_method = "POST",
        http_path = "/s3Buckets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeAllBackends(input, options)
    return self:invokeOperation(input, {
        name = "RemoveAllBackends",
        input_schema = schemas.RemoveAllBackendsInput,
        output_schema = schemas.RemoveAllBackendsOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/remove",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeBackendConfig(input, options)
    return self:invokeOperation(input, {
        name = "RemoveBackendConfig",
        input_schema = schemas.RemoveBackendConfigInput,
        output_schema = schemas.RemoveBackendConfigOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/config/remove",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBackendAPI(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBackendAPI",
        input_schema = schemas.UpdateBackendAPIInput,
        output_schema = schemas.UpdateBackendAPIOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/api/{BackendEnvironmentName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBackendAuth(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBackendAuth",
        input_schema = schemas.UpdateBackendAuthInput,
        output_schema = schemas.UpdateBackendAuthOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/auth/{BackendEnvironmentName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBackendConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBackendConfig",
        input_schema = schemas.UpdateBackendConfigInput,
        output_schema = schemas.UpdateBackendConfigOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/config/update",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBackendJob(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBackendJob",
        input_schema = schemas.UpdateBackendJobInput,
        output_schema = schemas.UpdateBackendJobOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/job/{BackendEnvironmentName}/{JobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBackendStorage(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBackendStorage",
        input_schema = schemas.UpdateBackendStorageInput,
        output_schema = schemas.UpdateBackendStorageOutput,
        http_method = "POST",
        http_path = "/backend/{AppId}/storage/{BackendEnvironmentName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
