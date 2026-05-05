local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("securitylake.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("securitylake.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "SecurityLake"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "securitylake", signing_region = cfg.region } }
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

function Client:createAwsLogSource(input, options)
    return self:invokeOperation(input, {
        name = "CreateAwsLogSource",
        input_schema = schemas.CreateAwsLogSourceInput,
        output_schema = schemas.CreateAwsLogSourceOutput,
        http_method = "POST",
        http_path = "/v1/datalake/logsources/aws",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCustomLogSource(input, options)
    return self:invokeOperation(input, {
        name = "CreateCustomLogSource",
        input_schema = schemas.CreateCustomLogSourceInput,
        output_schema = schemas.CreateCustomLogSourceOutput,
        http_method = "POST",
        http_path = "/v1/datalake/logsources/custom",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataLake(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataLake",
        input_schema = schemas.CreateDataLakeInput,
        output_schema = schemas.CreateDataLakeOutput,
        http_method = "POST",
        http_path = "/v1/datalake",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataLakeExceptionSubscription(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataLakeExceptionSubscription",
        input_schema = schemas.CreateDataLakeExceptionSubscriptionInput,
        output_schema = schemas.CreateDataLakeExceptionSubscriptionOutput,
        http_method = "POST",
        http_path = "/v1/datalake/exceptions/subscription",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataLakeOrganizationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataLakeOrganizationConfiguration",
        input_schema = schemas.CreateDataLakeOrganizationConfigurationInput,
        output_schema = schemas.CreateDataLakeOrganizationConfigurationOutput,
        http_method = "POST",
        http_path = "/v1/datalake/organization/configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSubscriber(input, options)
    return self:invokeOperation(input, {
        name = "CreateSubscriber",
        input_schema = schemas.CreateSubscriberInput,
        output_schema = schemas.CreateSubscriberOutput,
        http_method = "POST",
        http_path = "/v1/subscribers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSubscriberNotification(input, options)
    return self:invokeOperation(input, {
        name = "CreateSubscriberNotification",
        input_schema = schemas.CreateSubscriberNotificationInput,
        output_schema = schemas.CreateSubscriberNotificationOutput,
        http_method = "POST",
        http_path = "/v1/subscribers/{subscriberId}/notification",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAwsLogSource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAwsLogSource",
        input_schema = schemas.DeleteAwsLogSourceInput,
        output_schema = schemas.DeleteAwsLogSourceOutput,
        http_method = "POST",
        http_path = "/v1/datalake/logsources/aws/delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCustomLogSource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCustomLogSource",
        input_schema = schemas.DeleteCustomLogSourceInput,
        output_schema = schemas.DeleteCustomLogSourceOutput,
        http_method = "DELETE",
        http_path = "/v1/datalake/logsources/custom/{sourceName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataLake(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataLake",
        input_schema = schemas.DeleteDataLakeInput,
        output_schema = schemas.DeleteDataLakeOutput,
        http_method = "POST",
        http_path = "/v1/datalake/delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataLakeExceptionSubscription(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataLakeExceptionSubscription",
        input_schema = schemas.DeleteDataLakeExceptionSubscriptionInput,
        output_schema = schemas.DeleteDataLakeExceptionSubscriptionOutput,
        http_method = "DELETE",
        http_path = "/v1/datalake/exceptions/subscription",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataLakeOrganizationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataLakeOrganizationConfiguration",
        input_schema = schemas.DeleteDataLakeOrganizationConfigurationInput,
        output_schema = schemas.DeleteDataLakeOrganizationConfigurationOutput,
        http_method = "POST",
        http_path = "/v1/datalake/organization/configuration/delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSubscriber(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSubscriber",
        input_schema = schemas.DeleteSubscriberInput,
        output_schema = schemas.DeleteSubscriberOutput,
        http_method = "DELETE",
        http_path = "/v1/subscribers/{subscriberId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSubscriberNotification(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSubscriberNotification",
        input_schema = schemas.DeleteSubscriberNotificationInput,
        output_schema = schemas.DeleteSubscriberNotificationOutput,
        http_method = "DELETE",
        http_path = "/v1/subscribers/{subscriberId}/notification",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterDataLakeDelegatedAdministrator(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterDataLakeDelegatedAdministrator",
        input_schema = schemas.DeregisterDataLakeDelegatedAdministratorInput,
        output_schema = schemas.DeregisterDataLakeDelegatedAdministratorOutput,
        http_method = "DELETE",
        http_path = "/v1/datalake/delegate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataLakeExceptionSubscription(input, options)
    return self:invokeOperation(input, {
        name = "GetDataLakeExceptionSubscription",
        input_schema = schemas.GetDataLakeExceptionSubscriptionInput,
        output_schema = schemas.GetDataLakeExceptionSubscriptionOutput,
        http_method = "GET",
        http_path = "/v1/datalake/exceptions/subscription",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataLakeOrganizationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetDataLakeOrganizationConfiguration",
        input_schema = schemas.GetDataLakeOrganizationConfigurationInput,
        output_schema = schemas.GetDataLakeOrganizationConfigurationOutput,
        http_method = "GET",
        http_path = "/v1/datalake/organization/configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataLakeSources(input, options)
    return self:invokeOperation(input, {
        name = "GetDataLakeSources",
        input_schema = schemas.GetDataLakeSourcesInput,
        output_schema = schemas.GetDataLakeSourcesOutput,
        http_method = "POST",
        http_path = "/v1/datalake/sources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSubscriber(input, options)
    return self:invokeOperation(input, {
        name = "GetSubscriber",
        input_schema = schemas.GetSubscriberInput,
        output_schema = schemas.GetSubscriberOutput,
        http_method = "GET",
        http_path = "/v1/subscribers/{subscriberId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataLakeExceptions(input, options)
    return self:invokeOperation(input, {
        name = "ListDataLakeExceptions",
        input_schema = schemas.ListDataLakeExceptionsInput,
        output_schema = schemas.ListDataLakeExceptionsOutput,
        http_method = "POST",
        http_path = "/v1/datalake/exceptions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataLakes(input, options)
    return self:invokeOperation(input, {
        name = "ListDataLakes",
        input_schema = schemas.ListDataLakesInput,
        output_schema = schemas.ListDataLakesOutput,
        http_method = "GET",
        http_path = "/v1/datalakes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLogSources(input, options)
    return self:invokeOperation(input, {
        name = "ListLogSources",
        input_schema = schemas.ListLogSourcesInput,
        output_schema = schemas.ListLogSourcesOutput,
        http_method = "POST",
        http_path = "/v1/datalake/logsources/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSubscribers(input, options)
    return self:invokeOperation(input, {
        name = "ListSubscribers",
        input_schema = schemas.ListSubscribersInput,
        output_schema = schemas.ListSubscribersOutput,
        http_method = "GET",
        http_path = "/v1/subscribers",
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
        http_path = "/v1/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerDataLakeDelegatedAdministrator(input, options)
    return self:invokeOperation(input, {
        name = "RegisterDataLakeDelegatedAdministrator",
        input_schema = schemas.RegisterDataLakeDelegatedAdministratorInput,
        output_schema = schemas.RegisterDataLakeDelegatedAdministratorOutput,
        http_method = "POST",
        http_path = "/v1/datalake/delegate",
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
        http_path = "/v1/tags/{resourceArn}",
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
        http_path = "/v1/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDataLake(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataLake",
        input_schema = schemas.UpdateDataLakeInput,
        output_schema = schemas.UpdateDataLakeOutput,
        http_method = "PUT",
        http_path = "/v1/datalake",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDataLakeExceptionSubscription(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataLakeExceptionSubscription",
        input_schema = schemas.UpdateDataLakeExceptionSubscriptionInput,
        output_schema = schemas.UpdateDataLakeExceptionSubscriptionOutput,
        http_method = "PUT",
        http_path = "/v1/datalake/exceptions/subscription",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSubscriber(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSubscriber",
        input_schema = schemas.UpdateSubscriberInput,
        output_schema = schemas.UpdateSubscriberOutput,
        http_method = "PUT",
        http_path = "/v1/subscribers/{subscriberId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSubscriberNotification(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSubscriberNotification",
        input_schema = schemas.UpdateSubscriberNotificationInput,
        output_schema = schemas.UpdateSubscriberNotificationOutput,
        http_method = "PUT",
        http_path = "/v1/subscribers/{subscriberId}/notification",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
