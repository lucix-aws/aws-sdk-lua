local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("serverlessapplicationrepository.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("serverlessapplicationrepository.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ServerlessApplicationRepository"
    cfg.signing_name = "serverlessrepo"
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

function Client:createApplication(input, options)
    return self:invokeOperation(input, {
        name = "CreateApplication",
        input_schema = types.CreateApplicationInput,
        output_schema = types.CreateApplicationOutput,
        http_method = "POST",
        http_path = "/applications",
    }, options)
end

function Client:createApplicationVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateApplicationVersion",
        input_schema = types.CreateApplicationVersionInput,
        output_schema = types.CreateApplicationVersionOutput,
        http_method = "PUT",
        http_path = "/applications/{ApplicationId}/versions/{SemanticVersion}",
    }, options)
end

function Client:createCloudFormationChangeSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateCloudFormationChangeSet",
        input_schema = types.CreateCloudFormationChangeSetInput,
        output_schema = types.CreateCloudFormationChangeSetOutput,
        http_method = "POST",
        http_path = "/applications/{ApplicationId}/changesets",
    }, options)
end

function Client:createCloudFormationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateCloudFormationTemplate",
        input_schema = types.CreateCloudFormationTemplateInput,
        output_schema = types.CreateCloudFormationTemplateOutput,
        http_method = "POST",
        http_path = "/applications/{ApplicationId}/templates",
    }, options)
end

function Client:deleteApplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplication",
        input_schema = types.DeleteApplicationInput,
        output_schema = types.DeleteApplicationOutput,
        http_method = "DELETE",
        http_path = "/applications/{ApplicationId}",
    }, options)
end

function Client:getApplication(input, options)
    return self:invokeOperation(input, {
        name = "GetApplication",
        input_schema = types.GetApplicationInput,
        output_schema = types.GetApplicationOutput,
        http_method = "GET",
        http_path = "/applications/{ApplicationId}",
    }, options)
end

function Client:getApplicationPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetApplicationPolicy",
        input_schema = types.GetApplicationPolicyInput,
        output_schema = types.GetApplicationPolicyOutput,
        http_method = "GET",
        http_path = "/applications/{ApplicationId}/policy",
    }, options)
end

function Client:getCloudFormationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetCloudFormationTemplate",
        input_schema = types.GetCloudFormationTemplateInput,
        output_schema = types.GetCloudFormationTemplateOutput,
        http_method = "GET",
        http_path = "/applications/{ApplicationId}/templates/{TemplateId}",
    }, options)
end

function Client:listApplicationDependencies(input, options)
    return self:invokeOperation(input, {
        name = "ListApplicationDependencies",
        input_schema = types.ListApplicationDependenciesInput,
        output_schema = types.ListApplicationDependenciesOutput,
        http_method = "GET",
        http_path = "/applications/{ApplicationId}/dependencies",
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

function Client:listApplicationVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListApplicationVersions",
        input_schema = types.ListApplicationVersionsInput,
        output_schema = types.ListApplicationVersionsOutput,
        http_method = "GET",
        http_path = "/applications/{ApplicationId}/versions",
    }, options)
end

function Client:putApplicationPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutApplicationPolicy",
        input_schema = types.PutApplicationPolicyInput,
        output_schema = types.PutApplicationPolicyOutput,
        http_method = "PUT",
        http_path = "/applications/{ApplicationId}/policy",
    }, options)
end

function Client:unshareApplication(input, options)
    return self:invokeOperation(input, {
        name = "UnshareApplication",
        input_schema = types.UnshareApplicationInput,
        output_schema = types.UnshareApplicationOutput,
        http_method = "POST",
        http_path = "/applications/{ApplicationId}/unshare",
    }, options)
end

function Client:updateApplication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplication",
        input_schema = types.UpdateApplicationInput,
        output_schema = types.UpdateApplicationOutput,
        http_method = "PATCH",
        http_path = "/applications/{ApplicationId}",
    }, options)
end

return M
