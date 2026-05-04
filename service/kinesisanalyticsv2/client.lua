local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("kinesisanalyticsv2.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("kinesisanalyticsv2.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "KinesisAnalytics_20180523"
    cfg.signing_name = "kinesisanalytics_20180523"
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

function Client:addApplicationCloudWatchLoggingOption(input, options)
    return self:invokeOperation(input, {
        name = "AddApplicationCloudWatchLoggingOption",
        input_schema = types.AddApplicationCloudWatchLoggingOptionInput,
        output_schema = types.AddApplicationCloudWatchLoggingOptionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:addApplicationInput(input, options)
    return self:invokeOperation(input, {
        name = "AddApplicationInput",
        input_schema = types.AddApplicationInputInput,
        output_schema = types.AddApplicationInputOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:addApplicationInputProcessingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "AddApplicationInputProcessingConfiguration",
        input_schema = types.AddApplicationInputProcessingConfigurationInput,
        output_schema = types.AddApplicationInputProcessingConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:addApplicationOutput(input, options)
    return self:invokeOperation(input, {
        name = "AddApplicationOutput",
        input_schema = types.AddApplicationOutputInput,
        output_schema = types.AddApplicationOutputOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:addApplicationReferenceDataSource(input, options)
    return self:invokeOperation(input, {
        name = "AddApplicationReferenceDataSource",
        input_schema = types.AddApplicationReferenceDataSourceInput,
        output_schema = types.AddApplicationReferenceDataSourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:addApplicationVpcConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "AddApplicationVpcConfiguration",
        input_schema = types.AddApplicationVpcConfigurationInput,
        output_schema = types.AddApplicationVpcConfigurationOutput,
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

function Client:createApplicationPresignedUrl(input, options)
    return self:invokeOperation(input, {
        name = "CreateApplicationPresignedUrl",
        input_schema = types.CreateApplicationPresignedUrlInput,
        output_schema = types.CreateApplicationPresignedUrlOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createApplicationSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CreateApplicationSnapshot",
        input_schema = types.CreateApplicationSnapshotInput,
        output_schema = types.CreateApplicationSnapshotOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteApplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplication",
        input_schema = types.DeleteApplicationInput,
        output_schema = types.DeleteApplicationOperationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteApplicationCloudWatchLoggingOption(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplicationCloudWatchLoggingOption",
        input_schema = types.DeleteApplicationCloudWatchLoggingOptionInput,
        output_schema = types.DeleteApplicationCloudWatchLoggingOptionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteApplicationInputProcessingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplicationInputProcessingConfiguration",
        input_schema = types.DeleteApplicationInputProcessingConfigurationInput,
        output_schema = types.DeleteApplicationInputProcessingConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteApplicationOutput(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplicationOutput",
        input_schema = types.DeleteApplicationOutputInput,
        output_schema = types.DeleteApplicationOutputOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteApplicationReferenceDataSource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplicationReferenceDataSource",
        input_schema = types.DeleteApplicationReferenceDataSourceInput,
        output_schema = types.DeleteApplicationReferenceDataSourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteApplicationSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplicationSnapshot",
        input_schema = types.DeleteApplicationSnapshotInput,
        output_schema = types.DeleteApplicationSnapshotOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteApplicationVpcConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplicationVpcConfiguration",
        input_schema = types.DeleteApplicationVpcConfigurationInput,
        output_schema = types.DeleteApplicationVpcConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeApplication(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApplication",
        input_schema = types.DescribeApplicationInput,
        output_schema = types.DescribeApplicationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeApplicationOperation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApplicationOperation",
        input_schema = types.DescribeApplicationOperationInput,
        output_schema = types.DescribeApplicationOperationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeApplicationSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApplicationSnapshot",
        input_schema = types.DescribeApplicationSnapshotInput,
        output_schema = types.DescribeApplicationSnapshotOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeApplicationVersion(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApplicationVersion",
        input_schema = types.DescribeApplicationVersionInput,
        output_schema = types.DescribeApplicationVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:discoverInputSchema(input, options)
    return self:invokeOperation(input, {
        name = "DiscoverInputSchema",
        input_schema = types.DiscoverInputSchemaInput,
        output_schema = types.DiscoverInputSchemaOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listApplicationOperations(input, options)
    return self:invokeOperation(input, {
        name = "ListApplicationOperations",
        input_schema = types.ListApplicationOperationsInput,
        output_schema = types.ListApplicationOperationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listApplications(input, options)
    return self:invokeOperation(input, {
        name = "ListApplications",
        input_schema = types.ListApplicationsInput,
        output_schema = types.ListApplicationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listApplicationSnapshots(input, options)
    return self:invokeOperation(input, {
        name = "ListApplicationSnapshots",
        input_schema = types.ListApplicationSnapshotsInput,
        output_schema = types.ListApplicationSnapshotsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listApplicationVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListApplicationVersions",
        input_schema = types.ListApplicationVersionsInput,
        output_schema = types.ListApplicationVersionsOutput,
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

function Client:rollbackApplication(input, options)
    return self:invokeOperation(input, {
        name = "RollbackApplication",
        input_schema = types.RollbackApplicationInput,
        output_schema = types.RollbackApplicationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startApplication(input, options)
    return self:invokeOperation(input, {
        name = "StartApplication",
        input_schema = types.StartApplicationInput,
        output_schema = types.StartApplicationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopApplication(input, options)
    return self:invokeOperation(input, {
        name = "StopApplication",
        input_schema = types.StopApplicationInput,
        output_schema = types.StopApplicationOutput,
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

function Client:updateApplication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplication",
        input_schema = types.UpdateApplicationInput,
        output_schema = types.UpdateApplicationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateApplicationMaintenanceConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplicationMaintenanceConfiguration",
        input_schema = types.UpdateApplicationMaintenanceConfigurationInput,
        output_schema = types.UpdateApplicationMaintenanceConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
