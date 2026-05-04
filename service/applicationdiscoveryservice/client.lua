local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("applicationdiscoveryservice.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("applicationdiscoveryservice.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSPoseidonService_V2015_11_01"
    cfg.signing_name = "awsposeidonservice_v2015_11_01"
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

function Client:associateConfigurationItemsToApplication(input, options)
    return self:invokeOperation(input, {
        name = "AssociateConfigurationItemsToApplication",
        input_schema = types.AssociateConfigurationItemsToApplicationInput,
        output_schema = types.AssociateConfigurationItemsToApplicationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchDeleteAgents(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteAgents",
        input_schema = types.BatchDeleteAgentsInput,
        output_schema = types.BatchDeleteAgentsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchDeleteImportData(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteImportData",
        input_schema = types.BatchDeleteImportDataInput,
        output_schema = types.BatchDeleteImportDataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createApplication(input, options)
    return self:invokeOperation(input, {
        name = "CreateApplication",
        input_schema = types.CreateApplicationInput,
        output_schema = types.CreateApplicationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createTags(input, options)
    return self:invokeOperation(input, {
        name = "CreateTags",
        input_schema = types.CreateTagsInput,
        output_schema = types.CreateTagsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteApplications(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplications",
        input_schema = types.DeleteApplicationsInput,
        output_schema = types.DeleteApplicationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteTags(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTags",
        input_schema = types.DeleteTagsInput,
        output_schema = types.DeleteTagsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAgents(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAgents",
        input_schema = types.DescribeAgentsInput,
        output_schema = types.DescribeAgentsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeBatchDeleteConfigurationTask(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBatchDeleteConfigurationTask",
        input_schema = types.DescribeBatchDeleteConfigurationTaskInput,
        output_schema = types.DescribeBatchDeleteConfigurationTaskOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConfigurations",
        input_schema = types.DescribeConfigurationsInput,
        output_schema = types.DescribeConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeContinuousExports(input, options)
    return self:invokeOperation(input, {
        name = "DescribeContinuousExports",
        input_schema = types.DescribeContinuousExportsInput,
        output_schema = types.DescribeContinuousExportsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeExportConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeExportConfigurations",
        input_schema = types.DescribeExportConfigurationsInput,
        output_schema = types.DescribeExportConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeExportTasks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeExportTasks",
        input_schema = types.DescribeExportTasksInput,
        output_schema = types.DescribeExportTasksOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeImportTasks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeImportTasks",
        input_schema = types.DescribeImportTasksInput,
        output_schema = types.DescribeImportTasksOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTags(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTags",
        input_schema = types.DescribeTagsInput,
        output_schema = types.DescribeTagsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateConfigurationItemsFromApplication(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateConfigurationItemsFromApplication",
        input_schema = types.DisassociateConfigurationItemsFromApplicationInput,
        output_schema = types.DisassociateConfigurationItemsFromApplicationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:exportConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ExportConfigurations",
        input_schema = types.ExportConfigurationsInput,
        output_schema = types.ExportConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDiscoverySummary(input, options)
    return self:invokeOperation(input, {
        name = "GetDiscoverySummary",
        input_schema = types.GetDiscoverySummaryInput,
        output_schema = types.GetDiscoverySummaryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListConfigurations",
        input_schema = types.ListConfigurationsInput,
        output_schema = types.ListConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listServerNeighbors(input, options)
    return self:invokeOperation(input, {
        name = "ListServerNeighbors",
        input_schema = types.ListServerNeighborsInput,
        output_schema = types.ListServerNeighborsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startBatchDeleteConfigurationTask(input, options)
    return self:invokeOperation(input, {
        name = "StartBatchDeleteConfigurationTask",
        input_schema = types.StartBatchDeleteConfigurationTaskInput,
        output_schema = types.StartBatchDeleteConfigurationTaskOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startContinuousExport(input, options)
    return self:invokeOperation(input, {
        name = "StartContinuousExport",
        input_schema = types.StartContinuousExportInput,
        output_schema = types.StartContinuousExportOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startDataCollectionByAgentIds(input, options)
    return self:invokeOperation(input, {
        name = "StartDataCollectionByAgentIds",
        input_schema = types.StartDataCollectionByAgentIdsInput,
        output_schema = types.StartDataCollectionByAgentIdsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startExportTask(input, options)
    return self:invokeOperation(input, {
        name = "StartExportTask",
        input_schema = types.StartExportTaskInput,
        output_schema = types.StartExportTaskOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startImportTask(input, options)
    return self:invokeOperation(input, {
        name = "StartImportTask",
        input_schema = types.StartImportTaskInput,
        output_schema = types.StartImportTaskOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopContinuousExport(input, options)
    return self:invokeOperation(input, {
        name = "StopContinuousExport",
        input_schema = types.StopContinuousExportInput,
        output_schema = types.StopContinuousExportOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopDataCollectionByAgentIds(input, options)
    return self:invokeOperation(input, {
        name = "StopDataCollectionByAgentIds",
        input_schema = types.StopDataCollectionByAgentIdsInput,
        output_schema = types.StopDataCollectionByAgentIdsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateApplication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplication",
        input_schema = types.UpdateApplicationInput,
        output_schema = types.UpdateApplicationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
