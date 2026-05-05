local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("appflow.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("appflow.schemas")
local sdk_defaults = require("aws.sdk_defaults")

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
        input_schema = schemas.CancelFlowExecutionsInput,
        output_schema = schemas.CancelFlowExecutionsOutput,
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
        input_schema = schemas.CreateConnectorProfileInput,
        output_schema = schemas.CreateConnectorProfileOutput,
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
        input_schema = schemas.CreateFlowInput,
        output_schema = schemas.CreateFlowOutput,
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
        input_schema = schemas.DeleteConnectorProfileInput,
        output_schema = schemas.DeleteConnectorProfileOutput,
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
        input_schema = schemas.DeleteFlowInput,
        output_schema = schemas.DeleteFlowOutput,
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
        input_schema = schemas.DescribeConnectorInput,
        output_schema = schemas.DescribeConnectorOutput,
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
        input_schema = schemas.DescribeConnectorEntityInput,
        output_schema = schemas.DescribeConnectorEntityOutput,
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
        input_schema = schemas.DescribeConnectorProfilesInput,
        output_schema = schemas.DescribeConnectorProfilesOutput,
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
        input_schema = schemas.DescribeConnectorsInput,
        output_schema = schemas.DescribeConnectorsOutput,
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
        input_schema = schemas.DescribeFlowInput,
        output_schema = schemas.DescribeFlowOutput,
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
        input_schema = schemas.DescribeFlowExecutionRecordsInput,
        output_schema = schemas.DescribeFlowExecutionRecordsOutput,
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
        input_schema = schemas.ListConnectorEntitiesInput,
        output_schema = schemas.ListConnectorEntitiesOutput,
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
        input_schema = schemas.ListConnectorsInput,
        output_schema = schemas.ListConnectorsOutput,
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
        input_schema = schemas.ListFlowsInput,
        output_schema = schemas.ListFlowsOutput,
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
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
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
        input_schema = schemas.RegisterConnectorInput,
        output_schema = schemas.RegisterConnectorOutput,
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
        input_schema = schemas.ResetConnectorMetadataCacheInput,
        output_schema = schemas.ResetConnectorMetadataCacheOutput,
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
        input_schema = schemas.StartFlowInput,
        output_schema = schemas.StartFlowOutput,
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
        input_schema = schemas.StopFlowInput,
        output_schema = schemas.StopFlowOutput,
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
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
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
        input_schema = schemas.UnregisterConnectorInput,
        output_schema = schemas.UnregisterConnectorOutput,
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
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
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
        input_schema = schemas.UpdateConnectorProfileInput,
        output_schema = schemas.UpdateConnectorProfileOutput,
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
        input_schema = schemas.UpdateConnectorRegistrationInput,
        output_schema = schemas.UpdateConnectorRegistrationOutput,
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
        input_schema = schemas.UpdateFlowInput,
        output_schema = schemas.UpdateFlowOutput,
        http_method = "POST",
        http_path = "/update-flow",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
