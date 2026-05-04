local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("chimesdkidentity.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("chimesdkidentity.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ChimeIdentityService"
    cfg.signing_name = "chimeidentityservice"
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

function Client:createAppInstance(input, options)
    return self:invokeOperation(input, {
        name = "CreateAppInstance",
        input_schema = types.CreateAppInstanceInput,
        output_schema = types.CreateAppInstanceOutput,
        http_method = "POST",
        http_path = "/app-instances",
    }, options)
end

function Client:createAppInstanceAdmin(input, options)
    return self:invokeOperation(input, {
        name = "CreateAppInstanceAdmin",
        input_schema = types.CreateAppInstanceAdminInput,
        output_schema = types.CreateAppInstanceAdminOutput,
        http_method = "POST",
        http_path = "/app-instances/{AppInstanceArn}/admins",
    }, options)
end

function Client:createAppInstanceBot(input, options)
    return self:invokeOperation(input, {
        name = "CreateAppInstanceBot",
        input_schema = types.CreateAppInstanceBotInput,
        output_schema = types.CreateAppInstanceBotOutput,
        http_method = "POST",
        http_path = "/app-instance-bots",
    }, options)
end

function Client:createAppInstanceUser(input, options)
    return self:invokeOperation(input, {
        name = "CreateAppInstanceUser",
        input_schema = types.CreateAppInstanceUserInput,
        output_schema = types.CreateAppInstanceUserOutput,
        http_method = "POST",
        http_path = "/app-instance-users",
    }, options)
end

function Client:deleteAppInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAppInstance",
        input_schema = types.DeleteAppInstanceInput,
        output_schema = types.DeleteAppInstanceOutput,
        http_method = "DELETE",
        http_path = "/app-instances/{AppInstanceArn}",
    }, options)
end

function Client:deleteAppInstanceAdmin(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAppInstanceAdmin",
        input_schema = types.DeleteAppInstanceAdminInput,
        output_schema = types.DeleteAppInstanceAdminOutput,
        http_method = "DELETE",
        http_path = "/app-instances/{AppInstanceArn}/admins/{AppInstanceAdminArn}",
    }, options)
end

function Client:deleteAppInstanceBot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAppInstanceBot",
        input_schema = types.DeleteAppInstanceBotInput,
        output_schema = types.DeleteAppInstanceBotOutput,
        http_method = "DELETE",
        http_path = "/app-instance-bots/{AppInstanceBotArn}",
    }, options)
end

function Client:deleteAppInstanceUser(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAppInstanceUser",
        input_schema = types.DeleteAppInstanceUserInput,
        output_schema = types.DeleteAppInstanceUserOutput,
        http_method = "DELETE",
        http_path = "/app-instance-users/{AppInstanceUserArn}",
    }, options)
end

function Client:deregisterAppInstanceUserEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterAppInstanceUserEndpoint",
        input_schema = types.DeregisterAppInstanceUserEndpointInput,
        output_schema = types.DeregisterAppInstanceUserEndpointOutput,
        http_method = "DELETE",
        http_path = "/app-instance-users/{AppInstanceUserArn}/endpoints/{EndpointId}",
    }, options)
end

function Client:describeAppInstance(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAppInstance",
        input_schema = types.DescribeAppInstanceInput,
        output_schema = types.DescribeAppInstanceOutput,
        http_method = "GET",
        http_path = "/app-instances/{AppInstanceArn}",
    }, options)
end

function Client:describeAppInstanceAdmin(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAppInstanceAdmin",
        input_schema = types.DescribeAppInstanceAdminInput,
        output_schema = types.DescribeAppInstanceAdminOutput,
        http_method = "GET",
        http_path = "/app-instances/{AppInstanceArn}/admins/{AppInstanceAdminArn}",
    }, options)
end

function Client:describeAppInstanceBot(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAppInstanceBot",
        input_schema = types.DescribeAppInstanceBotInput,
        output_schema = types.DescribeAppInstanceBotOutput,
        http_method = "GET",
        http_path = "/app-instance-bots/{AppInstanceBotArn}",
    }, options)
end

function Client:describeAppInstanceUser(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAppInstanceUser",
        input_schema = types.DescribeAppInstanceUserInput,
        output_schema = types.DescribeAppInstanceUserOutput,
        http_method = "GET",
        http_path = "/app-instance-users/{AppInstanceUserArn}",
    }, options)
end

function Client:describeAppInstanceUserEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAppInstanceUserEndpoint",
        input_schema = types.DescribeAppInstanceUserEndpointInput,
        output_schema = types.DescribeAppInstanceUserEndpointOutput,
        http_method = "GET",
        http_path = "/app-instance-users/{AppInstanceUserArn}/endpoints/{EndpointId}",
    }, options)
end

function Client:getAppInstanceRetentionSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetAppInstanceRetentionSettings",
        input_schema = types.GetAppInstanceRetentionSettingsInput,
        output_schema = types.GetAppInstanceRetentionSettingsOutput,
        http_method = "GET",
        http_path = "/app-instances/{AppInstanceArn}/retention-settings",
    }, options)
end

function Client:listAppInstanceAdmins(input, options)
    return self:invokeOperation(input, {
        name = "ListAppInstanceAdmins",
        input_schema = types.ListAppInstanceAdminsInput,
        output_schema = types.ListAppInstanceAdminsOutput,
        http_method = "GET",
        http_path = "/app-instances/{AppInstanceArn}/admins",
    }, options)
end

function Client:listAppInstanceBots(input, options)
    return self:invokeOperation(input, {
        name = "ListAppInstanceBots",
        input_schema = types.ListAppInstanceBotsInput,
        output_schema = types.ListAppInstanceBotsOutput,
        http_method = "GET",
        http_path = "/app-instance-bots",
    }, options)
end

function Client:listAppInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListAppInstances",
        input_schema = types.ListAppInstancesInput,
        output_schema = types.ListAppInstancesOutput,
        http_method = "GET",
        http_path = "/app-instances",
    }, options)
end

function Client:listAppInstanceUserEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListAppInstanceUserEndpoints",
        input_schema = types.ListAppInstanceUserEndpointsInput,
        output_schema = types.ListAppInstanceUserEndpointsOutput,
        http_method = "GET",
        http_path = "/app-instance-users/{AppInstanceUserArn}/endpoints",
    }, options)
end

function Client:listAppInstanceUsers(input, options)
    return self:invokeOperation(input, {
        name = "ListAppInstanceUsers",
        input_schema = types.ListAppInstanceUsersInput,
        output_schema = types.ListAppInstanceUsersOutput,
        http_method = "GET",
        http_path = "/app-instance-users",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags",
    }, options)
end

function Client:putAppInstanceRetentionSettings(input, options)
    return self:invokeOperation(input, {
        name = "PutAppInstanceRetentionSettings",
        input_schema = types.PutAppInstanceRetentionSettingsInput,
        output_schema = types.PutAppInstanceRetentionSettingsOutput,
        http_method = "PUT",
        http_path = "/app-instances/{AppInstanceArn}/retention-settings",
    }, options)
end

function Client:putAppInstanceUserExpirationSettings(input, options)
    return self:invokeOperation(input, {
        name = "PutAppInstanceUserExpirationSettings",
        input_schema = types.PutAppInstanceUserExpirationSettingsInput,
        output_schema = types.PutAppInstanceUserExpirationSettingsOutput,
        http_method = "PUT",
        http_path = "/app-instance-users/{AppInstanceUserArn}/expiration-settings",
    }, options)
end

function Client:registerAppInstanceUserEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "RegisterAppInstanceUserEndpoint",
        input_schema = types.RegisterAppInstanceUserEndpointInput,
        output_schema = types.RegisterAppInstanceUserEndpointOutput,
        http_method = "POST",
        http_path = "/app-instance-users/{AppInstanceUserArn}/endpoints",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags?operation=tag-resource",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/tags?operation=untag-resource",
    }, options)
end

function Client:updateAppInstance(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAppInstance",
        input_schema = types.UpdateAppInstanceInput,
        output_schema = types.UpdateAppInstanceOutput,
        http_method = "PUT",
        http_path = "/app-instances/{AppInstanceArn}",
    }, options)
end

function Client:updateAppInstanceBot(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAppInstanceBot",
        input_schema = types.UpdateAppInstanceBotInput,
        output_schema = types.UpdateAppInstanceBotOutput,
        http_method = "PUT",
        http_path = "/app-instance-bots/{AppInstanceBotArn}",
    }, options)
end

function Client:updateAppInstanceUser(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAppInstanceUser",
        input_schema = types.UpdateAppInstanceUserInput,
        output_schema = types.UpdateAppInstanceUserOutput,
        http_method = "PUT",
        http_path = "/app-instance-users/{AppInstanceUserArn}",
    }, options)
end

function Client:updateAppInstanceUserEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAppInstanceUserEndpoint",
        input_schema = types.UpdateAppInstanceUserEndpointInput,
        output_schema = types.UpdateAppInstanceUserEndpointOutput,
        http_method = "PUT",
        http_path = "/app-instance-users/{AppInstanceUserArn}/endpoints/{EndpointId}",
    }, options)
end

return M
