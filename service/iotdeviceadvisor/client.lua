local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("iotdeviceadvisor.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("iotdeviceadvisor.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "IotSenateService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "iotdeviceadvisor", signing_region = cfg.region } }
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

function Client:createSuiteDefinition(input, options)
    return self:invokeOperation(input, {
        name = "CreateSuiteDefinition",
        input_schema = schemas.CreateSuiteDefinitionInput,
        output_schema = schemas.CreateSuiteDefinitionOutput,
        http_method = "POST",
        http_path = "/suiteDefinitions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSuiteDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSuiteDefinition",
        input_schema = schemas.DeleteSuiteDefinitionInput,
        output_schema = schemas.DeleteSuiteDefinitionOutput,
        http_method = "DELETE",
        http_path = "/suiteDefinitions/{suiteDefinitionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "GetEndpoint",
        input_schema = schemas.GetEndpointInput,
        output_schema = schemas.GetEndpointOutput,
        http_method = "GET",
        http_path = "/endpoint",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSuiteDefinition(input, options)
    return self:invokeOperation(input, {
        name = "GetSuiteDefinition",
        input_schema = schemas.GetSuiteDefinitionInput,
        output_schema = schemas.GetSuiteDefinitionOutput,
        http_method = "GET",
        http_path = "/suiteDefinitions/{suiteDefinitionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSuiteRun(input, options)
    return self:invokeOperation(input, {
        name = "GetSuiteRun",
        input_schema = schemas.GetSuiteRunInput,
        output_schema = schemas.GetSuiteRunOutput,
        http_method = "GET",
        http_path = "/suiteDefinitions/{suiteDefinitionId}/suiteRuns/{suiteRunId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSuiteRunReport(input, options)
    return self:invokeOperation(input, {
        name = "GetSuiteRunReport",
        input_schema = schemas.GetSuiteRunReportInput,
        output_schema = schemas.GetSuiteRunReportOutput,
        http_method = "GET",
        http_path = "/suiteDefinitions/{suiteDefinitionId}/suiteRuns/{suiteRunId}/report",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSuiteDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListSuiteDefinitions",
        input_schema = schemas.ListSuiteDefinitionsInput,
        output_schema = schemas.ListSuiteDefinitionsOutput,
        http_method = "GET",
        http_path = "/suiteDefinitions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSuiteRuns(input, options)
    return self:invokeOperation(input, {
        name = "ListSuiteRuns",
        input_schema = schemas.ListSuiteRunsInput,
        output_schema = schemas.ListSuiteRunsOutput,
        http_method = "GET",
        http_path = "/suiteRuns",
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

function Client:startSuiteRun(input, options)
    return self:invokeOperation(input, {
        name = "StartSuiteRun",
        input_schema = schemas.StartSuiteRunInput,
        output_schema = schemas.StartSuiteRunOutput,
        http_method = "POST",
        http_path = "/suiteDefinitions/{suiteDefinitionId}/suiteRuns",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopSuiteRun(input, options)
    return self:invokeOperation(input, {
        name = "StopSuiteRun",
        input_schema = schemas.StopSuiteRunInput,
        output_schema = schemas.StopSuiteRunOutput,
        http_method = "POST",
        http_path = "/suiteDefinitions/{suiteDefinitionId}/suiteRuns/{suiteRunId}/stop",
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

function Client:updateSuiteDefinition(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSuiteDefinition",
        input_schema = schemas.UpdateSuiteDefinitionInput,
        output_schema = schemas.UpdateSuiteDefinitionOutput,
        http_method = "PATCH",
        http_path = "/suiteDefinitions/{suiteDefinitionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
