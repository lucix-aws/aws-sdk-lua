local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("applicationcostprofiler.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("applicationcostprofiler.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSApplicationCostProfiler"
    cfg.signing_name = "application-cost-profiler"
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

function Client:deleteReportDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteReportDefinition",
        input_schema = types.DeleteReportDefinitionInput,
        output_schema = types.DeleteReportDefinitionOutput,
        http_method = "DELETE",
        http_path = "/reportDefinition/{reportId}",
    }, options)
end

function Client:getReportDefinition(input, options)
    return self:invokeOperation(input, {
        name = "GetReportDefinition",
        input_schema = types.GetReportDefinitionInput,
        output_schema = types.GetReportDefinitionOutput,
        http_method = "GET",
        http_path = "/reportDefinition/{reportId}",
    }, options)
end

function Client:importApplicationUsage(input, options)
    return self:invokeOperation(input, {
        name = "ImportApplicationUsage",
        input_schema = types.ImportApplicationUsageInput,
        output_schema = types.ImportApplicationUsageOutput,
        http_method = "POST",
        http_path = "/importApplicationUsage",
    }, options)
end

function Client:listReportDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListReportDefinitions",
        input_schema = types.ListReportDefinitionsInput,
        output_schema = types.ListReportDefinitionsOutput,
        http_method = "GET",
        http_path = "/reportDefinition",
    }, options)
end

function Client:putReportDefinition(input, options)
    return self:invokeOperation(input, {
        name = "PutReportDefinition",
        input_schema = types.PutReportDefinitionInput,
        output_schema = types.PutReportDefinitionOutput,
        http_method = "POST",
        http_path = "/reportDefinition",
    }, options)
end

function Client:updateReportDefinition(input, options)
    return self:invokeOperation(input, {
        name = "UpdateReportDefinition",
        input_schema = types.UpdateReportDefinitionInput,
        output_schema = types.UpdateReportDefinitionOutput,
        http_method = "PUT",
        http_path = "/reportDefinition/{reportId}",
    }, options)
end

return M
