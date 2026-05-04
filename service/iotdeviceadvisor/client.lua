local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("iotdeviceadvisor.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("iotdeviceadvisor.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "IotSenateService"
    cfg.signing_name = "iotsenateservice"
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

function Client:createSuiteDefinition(input, options)
    return self:invokeOperation(input, {
        name = "CreateSuiteDefinition",
        input_schema = types.CreateSuiteDefinitionInput,
        output_schema = types.CreateSuiteDefinitionOutput,
        http_method = "POST",
        http_path = "/suiteDefinitions",
    }, options)
end

function Client:deleteSuiteDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSuiteDefinition",
        input_schema = types.DeleteSuiteDefinitionInput,
        output_schema = types.DeleteSuiteDefinitionOutput,
        http_method = "DELETE",
        http_path = "/suiteDefinitions/{suiteDefinitionId}",
    }, options)
end

function Client:getEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "GetEndpoint",
        input_schema = types.GetEndpointInput,
        output_schema = types.GetEndpointOutput,
        http_method = "GET",
        http_path = "/endpoint",
    }, options)
end

function Client:getSuiteDefinition(input, options)
    return self:invokeOperation(input, {
        name = "GetSuiteDefinition",
        input_schema = types.GetSuiteDefinitionInput,
        output_schema = types.GetSuiteDefinitionOutput,
        http_method = "GET",
        http_path = "/suiteDefinitions/{suiteDefinitionId}",
    }, options)
end

function Client:getSuiteRun(input, options)
    return self:invokeOperation(input, {
        name = "GetSuiteRun",
        input_schema = types.GetSuiteRunInput,
        output_schema = types.GetSuiteRunOutput,
        http_method = "GET",
        http_path = "/suiteDefinitions/{suiteDefinitionId}/suiteRuns/{suiteRunId}",
    }, options)
end

function Client:getSuiteRunReport(input, options)
    return self:invokeOperation(input, {
        name = "GetSuiteRunReport",
        input_schema = types.GetSuiteRunReportInput,
        output_schema = types.GetSuiteRunReportOutput,
        http_method = "GET",
        http_path = "/suiteDefinitions/{suiteDefinitionId}/suiteRuns/{suiteRunId}/report",
    }, options)
end

function Client:listSuiteDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListSuiteDefinitions",
        input_schema = types.ListSuiteDefinitionsInput,
        output_schema = types.ListSuiteDefinitionsOutput,
        http_method = "GET",
        http_path = "/suiteDefinitions",
    }, options)
end

function Client:listSuiteRuns(input, options)
    return self:invokeOperation(input, {
        name = "ListSuiteRuns",
        input_schema = types.ListSuiteRunsInput,
        output_schema = types.ListSuiteRunsOutput,
        http_method = "GET",
        http_path = "/suiteRuns",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:startSuiteRun(input, options)
    return self:invokeOperation(input, {
        name = "StartSuiteRun",
        input_schema = types.StartSuiteRunInput,
        output_schema = types.StartSuiteRunOutput,
        http_method = "POST",
        http_path = "/suiteDefinitions/{suiteDefinitionId}/suiteRuns",
    }, options)
end

function Client:stopSuiteRun(input, options)
    return self:invokeOperation(input, {
        name = "StopSuiteRun",
        input_schema = types.StopSuiteRunInput,
        output_schema = types.StopSuiteRunOutput,
        http_method = "POST",
        http_path = "/suiteDefinitions/{suiteDefinitionId}/suiteRuns/{suiteRunId}/stop",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:updateSuiteDefinition(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSuiteDefinition",
        input_schema = types.UpdateSuiteDefinitionInput,
        output_schema = types.UpdateSuiteDefinitionOutput,
        http_method = "PATCH",
        http_path = "/suiteDefinitions/{suiteDefinitionId}",
    }, options)
end

return M
