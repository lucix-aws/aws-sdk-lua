local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("mq.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("mq.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "mq"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "mq", signing_region = cfg.region } }
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

function Client:createBroker(input, options)
    return self:invokeOperation(input, {
        name = "CreateBroker",
        input_schema = types.CreateBrokerInput,
        output_schema = types.CreateBrokerOutput,
        http_method = "POST",
        http_path = "/v1/brokers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfiguration",
        input_schema = types.CreateConfigurationInput,
        output_schema = types.CreateConfigurationOutput,
        http_method = "POST",
        http_path = "/v1/configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTags(input, options)
    return self:invokeOperation(input, {
        name = "CreateTags",
        input_schema = types.CreateTagsInput,
        output_schema = types.CreateTagsOutput,
        http_method = "POST",
        http_path = "/v1/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createUser(input, options)
    return self:invokeOperation(input, {
        name = "CreateUser",
        input_schema = types.CreateUserInput,
        output_schema = types.CreateUserOutput,
        http_method = "POST",
        http_path = "/v1/brokers/{BrokerId}/users/{Username}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBroker(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBroker",
        input_schema = types.DeleteBrokerInput,
        output_schema = types.DeleteBrokerOutput,
        http_method = "DELETE",
        http_path = "/v1/brokers/{BrokerId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfiguration",
        input_schema = types.DeleteConfigurationInput,
        output_schema = types.DeleteConfigurationOutput,
        http_method = "DELETE",
        http_path = "/v1/configurations/{ConfigurationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTags(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTags",
        input_schema = types.DeleteTagsInput,
        output_schema = types.DeleteTagsOutput,
        http_method = "DELETE",
        http_path = "/v1/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteUser(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUser",
        input_schema = types.DeleteUserInput,
        output_schema = types.DeleteUserOutput,
        http_method = "DELETE",
        http_path = "/v1/brokers/{BrokerId}/users/{Username}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBroker(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBroker",
        input_schema = types.DescribeBrokerInput,
        output_schema = types.DescribeBrokerOutput,
        http_method = "GET",
        http_path = "/v1/brokers/{BrokerId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBrokerEngineTypes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBrokerEngineTypes",
        input_schema = types.DescribeBrokerEngineTypesInput,
        output_schema = types.DescribeBrokerEngineTypesOutput,
        http_method = "GET",
        http_path = "/v1/broker-engine-types",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBrokerInstanceOptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBrokerInstanceOptions",
        input_schema = types.DescribeBrokerInstanceOptionsInput,
        output_schema = types.DescribeBrokerInstanceOptionsOutput,
        http_method = "GET",
        http_path = "/v1/broker-instance-options",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConfiguration",
        input_schema = types.DescribeConfigurationInput,
        output_schema = types.DescribeConfigurationOutput,
        http_method = "GET",
        http_path = "/v1/configurations/{ConfigurationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConfigurationRevision(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConfigurationRevision",
        input_schema = types.DescribeConfigurationRevisionInput,
        output_schema = types.DescribeConfigurationRevisionOutput,
        http_method = "GET",
        http_path = "/v1/configurations/{ConfigurationId}/revisions/{ConfigurationRevision}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeUser(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUser",
        input_schema = types.DescribeUserInput,
        output_schema = types.DescribeUserOutput,
        http_method = "GET",
        http_path = "/v1/brokers/{BrokerId}/users/{Username}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBrokers(input, options)
    return self:invokeOperation(input, {
        name = "ListBrokers",
        input_schema = types.ListBrokersInput,
        output_schema = types.ListBrokersOutput,
        http_method = "GET",
        http_path = "/v1/brokers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConfigurationRevisions(input, options)
    return self:invokeOperation(input, {
        name = "ListConfigurationRevisions",
        input_schema = types.ListConfigurationRevisionsInput,
        output_schema = types.ListConfigurationRevisionsOutput,
        http_method = "GET",
        http_path = "/v1/configurations/{ConfigurationId}/revisions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListConfigurations",
        input_schema = types.ListConfigurationsInput,
        output_schema = types.ListConfigurationsOutput,
        http_method = "GET",
        http_path = "/v1/configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTags(input, options)
    return self:invokeOperation(input, {
        name = "ListTags",
        input_schema = types.ListTagsInput,
        output_schema = types.ListTagsOutput,
        http_method = "GET",
        http_path = "/v1/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listUsers(input, options)
    return self:invokeOperation(input, {
        name = "ListUsers",
        input_schema = types.ListUsersInput,
        output_schema = types.ListUsersOutput,
        http_method = "GET",
        http_path = "/v1/brokers/{BrokerId}/users",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:promote(input, options)
    return self:invokeOperation(input, {
        name = "Promote",
        input_schema = types.PromoteInput,
        output_schema = types.PromoteOutput,
        http_method = "POST",
        http_path = "/v1/brokers/{BrokerId}/promote",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rebootBroker(input, options)
    return self:invokeOperation(input, {
        name = "RebootBroker",
        input_schema = types.RebootBrokerInput,
        output_schema = types.RebootBrokerOutput,
        http_method = "POST",
        http_path = "/v1/brokers/{BrokerId}/reboot",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBroker(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBroker",
        input_schema = types.UpdateBrokerInput,
        output_schema = types.UpdateBrokerOutput,
        http_method = "PUT",
        http_path = "/v1/brokers/{BrokerId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConfiguration",
        input_schema = types.UpdateConfigurationInput,
        output_schema = types.UpdateConfigurationOutput,
        http_method = "PUT",
        http_path = "/v1/configurations/{ConfigurationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUser(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUser",
        input_schema = types.UpdateUserInput,
        output_schema = types.UpdateUserOutput,
        http_method = "PUT",
        http_path = "/v1/brokers/{BrokerId}/users/{Username}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
