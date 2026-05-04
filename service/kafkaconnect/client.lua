local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("kafkaconnect.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("kafkaconnect.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "KafkaConnect"
    cfg.signing_name = "kafkaconnect"
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

function Client:createConnector(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnector",
        input_schema = types.CreateConnectorInput,
        output_schema = types.CreateConnectorOutput,
        http_method = "POST",
        http_path = "/v1/connectors",
    }, options)
end

function Client:createCustomPlugin(input, options)
    return self:invokeOperation(input, {
        name = "CreateCustomPlugin",
        input_schema = types.CreateCustomPluginInput,
        output_schema = types.CreateCustomPluginOutput,
        http_method = "POST",
        http_path = "/v1/custom-plugins",
    }, options)
end

function Client:createWorkerConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkerConfiguration",
        input_schema = types.CreateWorkerConfigurationInput,
        output_schema = types.CreateWorkerConfigurationOutput,
        http_method = "POST",
        http_path = "/v1/worker-configurations",
    }, options)
end

function Client:deleteConnector(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnector",
        input_schema = types.DeleteConnectorInput,
        output_schema = types.DeleteConnectorOutput,
        http_method = "DELETE",
        http_path = "/v1/connectors/{connectorArn}",
    }, options)
end

function Client:deleteCustomPlugin(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCustomPlugin",
        input_schema = types.DeleteCustomPluginInput,
        output_schema = types.DeleteCustomPluginOutput,
        http_method = "DELETE",
        http_path = "/v1/custom-plugins/{customPluginArn}",
    }, options)
end

function Client:deleteWorkerConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkerConfiguration",
        input_schema = types.DeleteWorkerConfigurationInput,
        output_schema = types.DeleteWorkerConfigurationOutput,
        http_method = "DELETE",
        http_path = "/v1/worker-configurations/{workerConfigurationArn}",
    }, options)
end

function Client:describeConnector(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConnector",
        input_schema = types.DescribeConnectorInput,
        output_schema = types.DescribeConnectorOutput,
        http_method = "GET",
        http_path = "/v1/connectors/{connectorArn}",
    }, options)
end

function Client:describeConnectorOperation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConnectorOperation",
        input_schema = types.DescribeConnectorOperationInput,
        output_schema = types.DescribeConnectorOperationOutput,
        http_method = "GET",
        http_path = "/v1/connectorOperations/{connectorOperationArn}",
    }, options)
end

function Client:describeCustomPlugin(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCustomPlugin",
        input_schema = types.DescribeCustomPluginInput,
        output_schema = types.DescribeCustomPluginOutput,
        http_method = "GET",
        http_path = "/v1/custom-plugins/{customPluginArn}",
    }, options)
end

function Client:describeWorkerConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWorkerConfiguration",
        input_schema = types.DescribeWorkerConfigurationInput,
        output_schema = types.DescribeWorkerConfigurationOutput,
        http_method = "GET",
        http_path = "/v1/worker-configurations/{workerConfigurationArn}",
    }, options)
end

function Client:listConnectorOperations(input, options)
    return self:invokeOperation(input, {
        name = "ListConnectorOperations",
        input_schema = types.ListConnectorOperationsInput,
        output_schema = types.ListConnectorOperationsOutput,
        http_method = "GET",
        http_path = "/v1/connectors/{connectorArn}/operations",
    }, options)
end

function Client:listConnectors(input, options)
    return self:invokeOperation(input, {
        name = "ListConnectors",
        input_schema = types.ListConnectorsInput,
        output_schema = types.ListConnectorsOutput,
        http_method = "GET",
        http_path = "/v1/connectors",
    }, options)
end

function Client:listCustomPlugins(input, options)
    return self:invokeOperation(input, {
        name = "ListCustomPlugins",
        input_schema = types.ListCustomPluginsInput,
        output_schema = types.ListCustomPluginsOutput,
        http_method = "GET",
        http_path = "/v1/custom-plugins",
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

function Client:listWorkerConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkerConfigurations",
        input_schema = types.ListWorkerConfigurationsInput,
        output_schema = types.ListWorkerConfigurationsOutput,
        http_method = "GET",
        http_path = "/v1/worker-configurations",
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

function Client:updateConnector(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnector",
        input_schema = types.UpdateConnectorInput,
        output_schema = types.UpdateConnectorOutput,
        http_method = "PUT",
        http_path = "/v1/connectors/{connectorArn}",
    }, options)
end

return M
