local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("securitylake.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("securitylake.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "SecurityLake"
    cfg.signing_name = "securitylake"
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

function Client:createAwsLogSource(input, options)
    return self:invokeOperation(input, {
        name = "CreateAwsLogSource",
        input_schema = types.CreateAwsLogSourceInput,
        output_schema = types.CreateAwsLogSourceOutput,
        http_method = "POST",
        http_path = "/v1/datalake/logsources/aws",
    }, options)
end

function Client:createCustomLogSource(input, options)
    return self:invokeOperation(input, {
        name = "CreateCustomLogSource",
        input_schema = types.CreateCustomLogSourceInput,
        output_schema = types.CreateCustomLogSourceOutput,
        http_method = "POST",
        http_path = "/v1/datalake/logsources/custom",
    }, options)
end

function Client:createDataLake(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataLake",
        input_schema = types.CreateDataLakeInput,
        output_schema = types.CreateDataLakeOutput,
        http_method = "POST",
        http_path = "/v1/datalake",
    }, options)
end

function Client:createDataLakeExceptionSubscription(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataLakeExceptionSubscription",
        input_schema = types.CreateDataLakeExceptionSubscriptionInput,
        output_schema = types.CreateDataLakeExceptionSubscriptionOutput,
        http_method = "POST",
        http_path = "/v1/datalake/exceptions/subscription",
    }, options)
end

function Client:createDataLakeOrganizationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataLakeOrganizationConfiguration",
        input_schema = types.CreateDataLakeOrganizationConfigurationInput,
        output_schema = types.CreateDataLakeOrganizationConfigurationOutput,
        http_method = "POST",
        http_path = "/v1/datalake/organization/configuration",
    }, options)
end

function Client:createSubscriber(input, options)
    return self:invokeOperation(input, {
        name = "CreateSubscriber",
        input_schema = types.CreateSubscriberInput,
        output_schema = types.CreateSubscriberOutput,
        http_method = "POST",
        http_path = "/v1/subscribers",
    }, options)
end

function Client:createSubscriberNotification(input, options)
    return self:invokeOperation(input, {
        name = "CreateSubscriberNotification",
        input_schema = types.CreateSubscriberNotificationInput,
        output_schema = types.CreateSubscriberNotificationOutput,
        http_method = "POST",
        http_path = "/v1/subscribers/{subscriberId}/notification",
    }, options)
end

function Client:deleteAwsLogSource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAwsLogSource",
        input_schema = types.DeleteAwsLogSourceInput,
        output_schema = types.DeleteAwsLogSourceOutput,
        http_method = "POST",
        http_path = "/v1/datalake/logsources/aws/delete",
    }, options)
end

function Client:deleteCustomLogSource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCustomLogSource",
        input_schema = types.DeleteCustomLogSourceInput,
        output_schema = types.DeleteCustomLogSourceOutput,
        http_method = "DELETE",
        http_path = "/v1/datalake/logsources/custom/{sourceName}",
    }, options)
end

function Client:deleteDataLake(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataLake",
        input_schema = types.DeleteDataLakeInput,
        output_schema = types.DeleteDataLakeOutput,
        http_method = "POST",
        http_path = "/v1/datalake/delete",
    }, options)
end

function Client:deleteDataLakeExceptionSubscription(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataLakeExceptionSubscription",
        input_schema = types.DeleteDataLakeExceptionSubscriptionInput,
        output_schema = types.DeleteDataLakeExceptionSubscriptionOutput,
        http_method = "DELETE",
        http_path = "/v1/datalake/exceptions/subscription",
    }, options)
end

function Client:deleteDataLakeOrganizationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataLakeOrganizationConfiguration",
        input_schema = types.DeleteDataLakeOrganizationConfigurationInput,
        output_schema = types.DeleteDataLakeOrganizationConfigurationOutput,
        http_method = "POST",
        http_path = "/v1/datalake/organization/configuration/delete",
    }, options)
end

function Client:deleteSubscriber(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSubscriber",
        input_schema = types.DeleteSubscriberInput,
        output_schema = types.DeleteSubscriberOutput,
        http_method = "DELETE",
        http_path = "/v1/subscribers/{subscriberId}",
    }, options)
end

function Client:deleteSubscriberNotification(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSubscriberNotification",
        input_schema = types.DeleteSubscriberNotificationInput,
        output_schema = types.DeleteSubscriberNotificationOutput,
        http_method = "DELETE",
        http_path = "/v1/subscribers/{subscriberId}/notification",
    }, options)
end

function Client:deregisterDataLakeDelegatedAdministrator(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterDataLakeDelegatedAdministrator",
        input_schema = types.DeregisterDataLakeDelegatedAdministratorInput,
        output_schema = types.DeregisterDataLakeDelegatedAdministratorOutput,
        http_method = "DELETE",
        http_path = "/v1/datalake/delegate",
    }, options)
end

function Client:getDataLakeExceptionSubscription(input, options)
    return self:invokeOperation(input, {
        name = "GetDataLakeExceptionSubscription",
        input_schema = types.GetDataLakeExceptionSubscriptionInput,
        output_schema = types.GetDataLakeExceptionSubscriptionOutput,
        http_method = "GET",
        http_path = "/v1/datalake/exceptions/subscription",
    }, options)
end

function Client:getDataLakeOrganizationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetDataLakeOrganizationConfiguration",
        input_schema = types.GetDataLakeOrganizationConfigurationInput,
        output_schema = types.GetDataLakeOrganizationConfigurationOutput,
        http_method = "GET",
        http_path = "/v1/datalake/organization/configuration",
    }, options)
end

function Client:getDataLakeSources(input, options)
    return self:invokeOperation(input, {
        name = "GetDataLakeSources",
        input_schema = types.GetDataLakeSourcesInput,
        output_schema = types.GetDataLakeSourcesOutput,
        http_method = "POST",
        http_path = "/v1/datalake/sources",
    }, options)
end

function Client:getSubscriber(input, options)
    return self:invokeOperation(input, {
        name = "GetSubscriber",
        input_schema = types.GetSubscriberInput,
        output_schema = types.GetSubscriberOutput,
        http_method = "GET",
        http_path = "/v1/subscribers/{subscriberId}",
    }, options)
end

function Client:listDataLakeExceptions(input, options)
    return self:invokeOperation(input, {
        name = "ListDataLakeExceptions",
        input_schema = types.ListDataLakeExceptionsInput,
        output_schema = types.ListDataLakeExceptionsOutput,
        http_method = "POST",
        http_path = "/v1/datalake/exceptions",
    }, options)
end

function Client:listDataLakes(input, options)
    return self:invokeOperation(input, {
        name = "ListDataLakes",
        input_schema = types.ListDataLakesInput,
        output_schema = types.ListDataLakesOutput,
        http_method = "GET",
        http_path = "/v1/datalakes",
    }, options)
end

function Client:listLogSources(input, options)
    return self:invokeOperation(input, {
        name = "ListLogSources",
        input_schema = types.ListLogSourcesInput,
        output_schema = types.ListLogSourcesOutput,
        http_method = "POST",
        http_path = "/v1/datalake/logsources/list",
    }, options)
end

function Client:listSubscribers(input, options)
    return self:invokeOperation(input, {
        name = "ListSubscribers",
        input_schema = types.ListSubscribersInput,
        output_schema = types.ListSubscribersOutput,
        http_method = "GET",
        http_path = "/v1/subscribers",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/v1/tags/{resourceArn}",
    }, options)
end

function Client:registerDataLakeDelegatedAdministrator(input, options)
    return self:invokeOperation(input, {
        name = "RegisterDataLakeDelegatedAdministrator",
        input_schema = types.RegisterDataLakeDelegatedAdministratorInput,
        output_schema = types.RegisterDataLakeDelegatedAdministratorOutput,
        http_method = "POST",
        http_path = "/v1/datalake/delegate",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/v1/tags/{resourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/v1/tags/{resourceArn}",
    }, options)
end

function Client:updateDataLake(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataLake",
        input_schema = types.UpdateDataLakeInput,
        output_schema = types.UpdateDataLakeOutput,
        http_method = "PUT",
        http_path = "/v1/datalake",
    }, options)
end

function Client:updateDataLakeExceptionSubscription(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataLakeExceptionSubscription",
        input_schema = types.UpdateDataLakeExceptionSubscriptionInput,
        output_schema = types.UpdateDataLakeExceptionSubscriptionOutput,
        http_method = "PUT",
        http_path = "/v1/datalake/exceptions/subscription",
    }, options)
end

function Client:updateSubscriber(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSubscriber",
        input_schema = types.UpdateSubscriberInput,
        output_schema = types.UpdateSubscriberOutput,
        http_method = "PUT",
        http_path = "/v1/subscribers/{subscriberId}",
    }, options)
end

function Client:updateSubscriberNotification(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSubscriberNotification",
        input_schema = types.UpdateSubscriberNotificationInput,
        output_schema = types.UpdateSubscriberNotificationOutput,
        http_method = "PUT",
        http_path = "/v1/subscribers/{subscriberId}/notification",
    }, options)
end

return M
