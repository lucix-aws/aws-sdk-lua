local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("chimesdkidentity.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("chimesdkidentity.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ChimeIdentityService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "chime", signing_region = cfg.region } }
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

function Client:createAppInstance(input, options)
    return self:invokeOperation(input, {
        name = "CreateAppInstance",
        input_schema = schemas.CreateAppInstanceInput,
        output_schema = schemas.CreateAppInstanceOutput,
        http_method = "POST",
        http_path = "/app-instances",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAppInstanceAdmin(input, options)
    return self:invokeOperation(input, {
        name = "CreateAppInstanceAdmin",
        input_schema = schemas.CreateAppInstanceAdminInput,
        output_schema = schemas.CreateAppInstanceAdminOutput,
        http_method = "POST",
        http_path = "/app-instances/{AppInstanceArn}/admins",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAppInstanceBot(input, options)
    return self:invokeOperation(input, {
        name = "CreateAppInstanceBot",
        input_schema = schemas.CreateAppInstanceBotInput,
        output_schema = schemas.CreateAppInstanceBotOutput,
        http_method = "POST",
        http_path = "/app-instance-bots",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAppInstanceUser(input, options)
    return self:invokeOperation(input, {
        name = "CreateAppInstanceUser",
        input_schema = schemas.CreateAppInstanceUserInput,
        output_schema = schemas.CreateAppInstanceUserOutput,
        http_method = "POST",
        http_path = "/app-instance-users",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAppInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAppInstance",
        input_schema = schemas.DeleteAppInstanceInput,
        output_schema = schemas.DeleteAppInstanceOutput,
        http_method = "DELETE",
        http_path = "/app-instances/{AppInstanceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAppInstanceAdmin(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAppInstanceAdmin",
        input_schema = schemas.DeleteAppInstanceAdminInput,
        output_schema = schemas.DeleteAppInstanceAdminOutput,
        http_method = "DELETE",
        http_path = "/app-instances/{AppInstanceArn}/admins/{AppInstanceAdminArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAppInstanceBot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAppInstanceBot",
        input_schema = schemas.DeleteAppInstanceBotInput,
        output_schema = schemas.DeleteAppInstanceBotOutput,
        http_method = "DELETE",
        http_path = "/app-instance-bots/{AppInstanceBotArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAppInstanceUser(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAppInstanceUser",
        input_schema = schemas.DeleteAppInstanceUserInput,
        output_schema = schemas.DeleteAppInstanceUserOutput,
        http_method = "DELETE",
        http_path = "/app-instance-users/{AppInstanceUserArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterAppInstanceUserEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterAppInstanceUserEndpoint",
        input_schema = schemas.DeregisterAppInstanceUserEndpointInput,
        output_schema = schemas.DeregisterAppInstanceUserEndpointOutput,
        http_method = "DELETE",
        http_path = "/app-instance-users/{AppInstanceUserArn}/endpoints/{EndpointId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAppInstance(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAppInstance",
        input_schema = schemas.DescribeAppInstanceInput,
        output_schema = schemas.DescribeAppInstanceOutput,
        http_method = "GET",
        http_path = "/app-instances/{AppInstanceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAppInstanceAdmin(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAppInstanceAdmin",
        input_schema = schemas.DescribeAppInstanceAdminInput,
        output_schema = schemas.DescribeAppInstanceAdminOutput,
        http_method = "GET",
        http_path = "/app-instances/{AppInstanceArn}/admins/{AppInstanceAdminArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAppInstanceBot(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAppInstanceBot",
        input_schema = schemas.DescribeAppInstanceBotInput,
        output_schema = schemas.DescribeAppInstanceBotOutput,
        http_method = "GET",
        http_path = "/app-instance-bots/{AppInstanceBotArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAppInstanceUser(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAppInstanceUser",
        input_schema = schemas.DescribeAppInstanceUserInput,
        output_schema = schemas.DescribeAppInstanceUserOutput,
        http_method = "GET",
        http_path = "/app-instance-users/{AppInstanceUserArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAppInstanceUserEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAppInstanceUserEndpoint",
        input_schema = schemas.DescribeAppInstanceUserEndpointInput,
        output_schema = schemas.DescribeAppInstanceUserEndpointOutput,
        http_method = "GET",
        http_path = "/app-instance-users/{AppInstanceUserArn}/endpoints/{EndpointId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAppInstanceRetentionSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetAppInstanceRetentionSettings",
        input_schema = schemas.GetAppInstanceRetentionSettingsInput,
        output_schema = schemas.GetAppInstanceRetentionSettingsOutput,
        http_method = "GET",
        http_path = "/app-instances/{AppInstanceArn}/retention-settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAppInstanceAdmins(input, options)
    return self:invokeOperation(input, {
        name = "ListAppInstanceAdmins",
        input_schema = schemas.ListAppInstanceAdminsInput,
        output_schema = schemas.ListAppInstanceAdminsOutput,
        http_method = "GET",
        http_path = "/app-instances/{AppInstanceArn}/admins",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAppInstanceBots(input, options)
    return self:invokeOperation(input, {
        name = "ListAppInstanceBots",
        input_schema = schemas.ListAppInstanceBotsInput,
        output_schema = schemas.ListAppInstanceBotsOutput,
        http_method = "GET",
        http_path = "/app-instance-bots",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAppInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListAppInstances",
        input_schema = schemas.ListAppInstancesInput,
        output_schema = schemas.ListAppInstancesOutput,
        http_method = "GET",
        http_path = "/app-instances",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAppInstanceUserEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListAppInstanceUserEndpoints",
        input_schema = schemas.ListAppInstanceUserEndpointsInput,
        output_schema = schemas.ListAppInstanceUserEndpointsOutput,
        http_method = "GET",
        http_path = "/app-instance-users/{AppInstanceUserArn}/endpoints",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAppInstanceUsers(input, options)
    return self:invokeOperation(input, {
        name = "ListAppInstanceUsers",
        input_schema = schemas.ListAppInstanceUsersInput,
        output_schema = schemas.ListAppInstanceUsersOutput,
        http_method = "GET",
        http_path = "/app-instance-users",
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
        http_path = "/tags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putAppInstanceRetentionSettings(input, options)
    return self:invokeOperation(input, {
        name = "PutAppInstanceRetentionSettings",
        input_schema = schemas.PutAppInstanceRetentionSettingsInput,
        output_schema = schemas.PutAppInstanceRetentionSettingsOutput,
        http_method = "PUT",
        http_path = "/app-instances/{AppInstanceArn}/retention-settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putAppInstanceUserExpirationSettings(input, options)
    return self:invokeOperation(input, {
        name = "PutAppInstanceUserExpirationSettings",
        input_schema = schemas.PutAppInstanceUserExpirationSettingsInput,
        output_schema = schemas.PutAppInstanceUserExpirationSettingsOutput,
        http_method = "PUT",
        http_path = "/app-instance-users/{AppInstanceUserArn}/expiration-settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerAppInstanceUserEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "RegisterAppInstanceUserEndpoint",
        input_schema = schemas.RegisterAppInstanceUserEndpointInput,
        output_schema = schemas.RegisterAppInstanceUserEndpointOutput,
        http_method = "POST",
        http_path = "/app-instance-users/{AppInstanceUserArn}/endpoints",
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
        http_path = "/tags?operation=tag-resource",
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
        http_method = "POST",
        http_path = "/tags?operation=untag-resource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAppInstance(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAppInstance",
        input_schema = schemas.UpdateAppInstanceInput,
        output_schema = schemas.UpdateAppInstanceOutput,
        http_method = "PUT",
        http_path = "/app-instances/{AppInstanceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAppInstanceBot(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAppInstanceBot",
        input_schema = schemas.UpdateAppInstanceBotInput,
        output_schema = schemas.UpdateAppInstanceBotOutput,
        http_method = "PUT",
        http_path = "/app-instance-bots/{AppInstanceBotArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAppInstanceUser(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAppInstanceUser",
        input_schema = schemas.UpdateAppInstanceUserInput,
        output_schema = schemas.UpdateAppInstanceUserOutput,
        http_method = "PUT",
        http_path = "/app-instance-users/{AppInstanceUserArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAppInstanceUserEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAppInstanceUserEndpoint",
        input_schema = schemas.UpdateAppInstanceUserEndpointInput,
        output_schema = schemas.UpdateAppInstanceUserEndpointOutput,
        http_method = "PUT",
        http_path = "/app-instance-users/{AppInstanceUserArn}/endpoints/{EndpointId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
