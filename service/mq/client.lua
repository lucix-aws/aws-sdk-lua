local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("mq.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("mq.schemas")
local sdk_defaults = require("sdk_defaults")

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
        input_schema = schemas.CreateBrokerInput,
        output_schema = schemas.CreateBrokerOutput,
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
        input_schema = schemas.CreateConfigurationInput,
        output_schema = schemas.CreateConfigurationOutput,
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
        input_schema = schemas.CreateTagsInput,
        output_schema = schemas.CreateTagsOutput,
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
        input_schema = schemas.CreateUserInput,
        output_schema = schemas.CreateUserOutput,
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
        input_schema = schemas.DeleteBrokerInput,
        output_schema = schemas.DeleteBrokerOutput,
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
        input_schema = schemas.DeleteConfigurationInput,
        output_schema = schemas.DeleteConfigurationOutput,
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
        input_schema = schemas.DeleteTagsInput,
        output_schema = schemas.DeleteTagsOutput,
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
        input_schema = schemas.DeleteUserInput,
        output_schema = schemas.DeleteUserOutput,
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
        input_schema = schemas.DescribeBrokerInput,
        output_schema = schemas.DescribeBrokerOutput,
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
        input_schema = schemas.DescribeBrokerEngineTypesInput,
        output_schema = schemas.DescribeBrokerEngineTypesOutput,
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
        input_schema = schemas.DescribeBrokerInstanceOptionsInput,
        output_schema = schemas.DescribeBrokerInstanceOptionsOutput,
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
        input_schema = schemas.DescribeConfigurationInput,
        output_schema = schemas.DescribeConfigurationOutput,
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
        input_schema = schemas.DescribeConfigurationRevisionInput,
        output_schema = schemas.DescribeConfigurationRevisionOutput,
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
        input_schema = schemas.DescribeUserInput,
        output_schema = schemas.DescribeUserOutput,
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
        input_schema = schemas.ListBrokersInput,
        output_schema = schemas.ListBrokersOutput,
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
        input_schema = schemas.ListConfigurationRevisionsInput,
        output_schema = schemas.ListConfigurationRevisionsOutput,
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
        input_schema = schemas.ListConfigurationsInput,
        output_schema = schemas.ListConfigurationsOutput,
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
        input_schema = schemas.ListTagsInput,
        output_schema = schemas.ListTagsOutput,
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
        input_schema = schemas.ListUsersInput,
        output_schema = schemas.ListUsersOutput,
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
        input_schema = schemas.PromoteInput,
        output_schema = schemas.PromoteOutput,
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
        input_schema = schemas.RebootBrokerInput,
        output_schema = schemas.RebootBrokerOutput,
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
        input_schema = schemas.UpdateBrokerInput,
        output_schema = schemas.UpdateBrokerOutput,
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
        input_schema = schemas.UpdateConfigurationInput,
        output_schema = schemas.UpdateConfigurationOutput,
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
        input_schema = schemas.UpdateUserInput,
        output_schema = schemas.UpdateUserOutput,
        http_method = "PUT",
        http_path = "/v1/brokers/{BrokerId}/users/{Username}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
