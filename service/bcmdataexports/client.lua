local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("bcmdataexports.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("bcmdataexports.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSBillingAndCostManagementDataExports"
    cfg.signing_name = "awsbillingandcostmanagementdataexports"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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

function Client:createExport(input, options)
    return self:invokeOperation(input, {
        name = "CreateExport",
        input_schema = types.CreateExportInput,
        output_schema = types.CreateExportOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteExport(input, options)
    return self:invokeOperation(input, {
        name = "DeleteExport",
        input_schema = types.DeleteExportInput,
        output_schema = types.DeleteExportOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getExecution(input, options)
    return self:invokeOperation(input, {
        name = "GetExecution",
        input_schema = types.GetExecutionInput,
        output_schema = types.GetExecutionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getExport(input, options)
    return self:invokeOperation(input, {
        name = "GetExport",
        input_schema = types.GetExportInput,
        output_schema = types.GetExportOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getTable(input, options)
    return self:invokeOperation(input, {
        name = "GetTable",
        input_schema = types.GetTableInput,
        output_schema = types.GetTableOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListExecutions",
        input_schema = types.ListExecutionsInput,
        output_schema = types.ListExecutionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listExports(input, options)
    return self:invokeOperation(input, {
        name = "ListExports",
        input_schema = types.ListExportsInput,
        output_schema = types.ListExportsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTables(input, options)
    return self:invokeOperation(input, {
        name = "ListTables",
        input_schema = types.ListTablesInput,
        output_schema = types.ListTablesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateExport(input, options)
    return self:invokeOperation(input, {
        name = "UpdateExport",
        input_schema = types.UpdateExportInput,
        output_schema = types.UpdateExportOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
