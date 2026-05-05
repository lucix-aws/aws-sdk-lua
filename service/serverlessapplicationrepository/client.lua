local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("serverlessapplicationrepository.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("serverlessapplicationrepository.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ServerlessApplicationRepository"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "serverlessrepo", signing_region = cfg.region } }
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

function Client:createApplicationVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateApplicationVersion",
        input_schema = schemas.CreateApplicationVersionInput,
        output_schema = schemas.CreateApplicationVersionOutput,
        http_method = "PUT",
        http_path = "/applications/{ApplicationId}/versions/{SemanticVersion}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCloudFormationChangeSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateCloudFormationChangeSet",
        input_schema = schemas.CreateCloudFormationChangeSetInput,
        output_schema = schemas.CreateCloudFormationChangeSetOutput,
        http_method = "POST",
        http_path = "/applications/{ApplicationId}/changesets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCloudFormationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateCloudFormationTemplate",
        input_schema = schemas.CreateCloudFormationTemplateInput,
        output_schema = schemas.CreateCloudFormationTemplateOutput,
        http_method = "POST",
        http_path = "/applications/{ApplicationId}/templates",
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
        http_path = "/applications/{ApplicationId}",
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
        http_path = "/applications/{ApplicationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApplicationPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetApplicationPolicy",
        input_schema = schemas.GetApplicationPolicyInput,
        output_schema = schemas.GetApplicationPolicyOutput,
        http_method = "GET",
        http_path = "/applications/{ApplicationId}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCloudFormationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetCloudFormationTemplate",
        input_schema = schemas.GetCloudFormationTemplateInput,
        output_schema = schemas.GetCloudFormationTemplateOutput,
        http_method = "GET",
        http_path = "/applications/{ApplicationId}/templates/{TemplateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApplicationDependencies(input, options)
    return self:invokeOperation(input, {
        name = "ListApplicationDependencies",
        input_schema = schemas.ListApplicationDependenciesInput,
        output_schema = schemas.ListApplicationDependenciesOutput,
        http_method = "GET",
        http_path = "/applications/{ApplicationId}/dependencies",
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

function Client:listApplicationVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListApplicationVersions",
        input_schema = schemas.ListApplicationVersionsInput,
        output_schema = schemas.ListApplicationVersionsOutput,
        http_method = "GET",
        http_path = "/applications/{ApplicationId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putApplicationPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutApplicationPolicy",
        input_schema = schemas.PutApplicationPolicyInput,
        output_schema = schemas.PutApplicationPolicyOutput,
        http_method = "PUT",
        http_path = "/applications/{ApplicationId}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:unshareApplication(input, options)
    return self:invokeOperation(input, {
        name = "UnshareApplication",
        input_schema = schemas.UnshareApplicationInput,
        output_schema = schemas.UnshareApplicationOutput,
        http_method = "POST",
        http_path = "/applications/{ApplicationId}/unshare",
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
        http_path = "/applications/{ApplicationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
