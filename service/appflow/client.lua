local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("appflow.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("appflow.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "SandstoneConfigurationServiceLambda"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "appflow", signing_region = cfg.region } }
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

function Client:cancelFlowExecutions(input, options)
    return self:invokeOperation(input, {
        name = "CancelFlowExecutions",
        input_schema = types.CancelFlowExecutionsInput,
        output_schema = types.CancelFlowExecutionsOutput,
        http_method = "POST",
        http_path = "/cancel-flow-executions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConnectorProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnectorProfile",
        input_schema = types.CreateConnectorProfileInput,
        output_schema = types.CreateConnectorProfileOutput,
        http_method = "POST",
        http_path = "/create-connector-profile",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFlow(input, options)
    return self:invokeOperation(input, {
        name = "CreateFlow",
        input_schema = types.CreateFlowInput,
        output_schema = types.CreateFlowOutput,
        http_method = "POST",
        http_path = "/create-flow",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConnectorProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnectorProfile",
        input_schema = types.DeleteConnectorProfileInput,
        output_schema = types.DeleteConnectorProfileOutput,
        http_method = "POST",
        http_path = "/delete-connector-profile",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFlow(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFlow",
        input_schema = types.DeleteFlowInput,
        output_schema = types.DeleteFlowOutput,
        http_method = "POST",
        http_path = "/delete-flow",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConnector(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConnector",
        input_schema = types.DescribeConnectorInput,
        output_schema = types.DescribeConnectorOutput,
        http_method = "POST",
        http_path = "/describe-connector",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConnectorEntity(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConnectorEntity",
        input_schema = types.DescribeConnectorEntityInput,
        output_schema = types.DescribeConnectorEntityOutput,
        http_method = "POST",
        http_path = "/describe-connector-entity",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConnectorProfiles(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConnectorProfiles",
        input_schema = types.DescribeConnectorProfilesInput,
        output_schema = types.DescribeConnectorProfilesOutput,
        http_method = "POST",
        http_path = "/describe-connector-profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConnectors(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConnectors",
        input_schema = types.DescribeConnectorsInput,
        output_schema = types.DescribeConnectorsOutput,
        http_method = "POST",
        http_path = "/describe-connectors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFlow(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFlow",
        input_schema = types.DescribeFlowInput,
        output_schema = types.DescribeFlowOutput,
        http_method = "POST",
        http_path = "/describe-flow",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFlowExecutionRecords(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFlowExecutionRecords",
        input_schema = types.DescribeFlowExecutionRecordsInput,
        output_schema = types.DescribeFlowExecutionRecordsOutput,
        http_method = "POST",
        http_path = "/describe-flow-execution-records",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConnectorEntities(input, options)
    return self:invokeOperation(input, {
        name = "ListConnectorEntities",
        input_schema = types.ListConnectorEntitiesInput,
        output_schema = types.ListConnectorEntitiesOutput,
        http_method = "POST",
        http_path = "/list-connector-entities",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConnectors(input, options)
    return self:invokeOperation(input, {
        name = "ListConnectors",
        input_schema = types.ListConnectorsInput,
        output_schema = types.ListConnectorsOutput,
        http_method = "POST",
        http_path = "/list-connectors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFlows(input, options)
    return self:invokeOperation(input, {
        name = "ListFlows",
        input_schema = types.ListFlowsInput,
        output_schema = types.ListFlowsOutput,
        http_method = "POST",
        http_path = "/list-flows",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerConnector(input, options)
    return self:invokeOperation(input, {
        name = "RegisterConnector",
        input_schema = types.RegisterConnectorInput,
        output_schema = types.RegisterConnectorOutput,
        http_method = "POST",
        http_path = "/register-connector",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resetConnectorMetadataCache(input, options)
    return self:invokeOperation(input, {
        name = "ResetConnectorMetadataCache",
        input_schema = types.ResetConnectorMetadataCacheInput,
        output_schema = types.ResetConnectorMetadataCacheOutput,
        http_method = "POST",
        http_path = "/reset-connector-metadata-cache",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startFlow(input, options)
    return self:invokeOperation(input, {
        name = "StartFlow",
        input_schema = types.StartFlowInput,
        output_schema = types.StartFlowOutput,
        http_method = "POST",
        http_path = "/start-flow",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopFlow(input, options)
    return self:invokeOperation(input, {
        name = "StopFlow",
        input_schema = types.StopFlowInput,
        output_schema = types.StopFlowOutput,
        http_method = "POST",
        http_path = "/stop-flow",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:unregisterConnector(input, options)
    return self:invokeOperation(input, {
        name = "UnregisterConnector",
        input_schema = types.UnregisterConnectorInput,
        output_schema = types.UnregisterConnectorOutput,
        http_method = "POST",
        http_path = "/unregister-connector",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConnectorProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnectorProfile",
        input_schema = types.UpdateConnectorProfileInput,
        output_schema = types.UpdateConnectorProfileOutput,
        http_method = "POST",
        http_path = "/update-connector-profile",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConnectorRegistration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnectorRegistration",
        input_schema = types.UpdateConnectorRegistrationInput,
        output_schema = types.UpdateConnectorRegistrationOutput,
        http_method = "POST",
        http_path = "/update-connector-registration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFlow(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFlow",
        input_schema = types.UpdateFlowInput,
        output_schema = types.UpdateFlowOutput,
        http_method = "POST",
        http_path = "/update-flow",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
