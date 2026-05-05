local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("kinesisanalyticsv2.endpoint_rules")
local schemas = require("kinesisanalyticsv2.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "KinesisAnalytics_20180523"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "kinesisanalytics", signing_region = cfg.region } }
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

function Client:addApplicationCloudWatchLoggingOption(input, options)
    return self:invokeOperation(input, {
        name = "AddApplicationCloudWatchLoggingOption",
        input_schema = schemas.AddApplicationCloudWatchLoggingOptionInput,
        output_schema = schemas.AddApplicationCloudWatchLoggingOptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addApplicationInput(input, options)
    return self:invokeOperation(input, {
        name = "AddApplicationInput",
        input_schema = schemas.AddApplicationInputInput,
        output_schema = schemas.AddApplicationInputOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addApplicationInputProcessingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "AddApplicationInputProcessingConfiguration",
        input_schema = schemas.AddApplicationInputProcessingConfigurationInput,
        output_schema = schemas.AddApplicationInputProcessingConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addApplicationOutput(input, options)
    return self:invokeOperation(input, {
        name = "AddApplicationOutput",
        input_schema = schemas.AddApplicationOutputInput,
        output_schema = schemas.AddApplicationOutputOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addApplicationReferenceDataSource(input, options)
    return self:invokeOperation(input, {
        name = "AddApplicationReferenceDataSource",
        input_schema = schemas.AddApplicationReferenceDataSourceInput,
        output_schema = schemas.AddApplicationReferenceDataSourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addApplicationVpcConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "AddApplicationVpcConfiguration",
        input_schema = schemas.AddApplicationVpcConfigurationInput,
        output_schema = schemas.AddApplicationVpcConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createApplication(input, options)
    return self:invokeOperation(input, {
        name = "CreateApplication",
        input_schema = schemas.CreateApplicationInput,
        output_schema = schemas.CreateApplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createApplicationPresignedUrl(input, options)
    return self:invokeOperation(input, {
        name = "CreateApplicationPresignedUrl",
        input_schema = schemas.CreateApplicationPresignedUrlInput,
        output_schema = schemas.CreateApplicationPresignedUrlOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createApplicationSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CreateApplicationSnapshot",
        input_schema = schemas.CreateApplicationSnapshotInput,
        output_schema = schemas.CreateApplicationSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplication",
        input_schema = schemas.DeleteApplicationInput,
        output_schema = schemas.DeleteApplicationOperationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApplicationCloudWatchLoggingOption(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplicationCloudWatchLoggingOption",
        input_schema = schemas.DeleteApplicationCloudWatchLoggingOptionInput,
        output_schema = schemas.DeleteApplicationCloudWatchLoggingOptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApplicationInputProcessingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplicationInputProcessingConfiguration",
        input_schema = schemas.DeleteApplicationInputProcessingConfigurationInput,
        output_schema = schemas.DeleteApplicationInputProcessingConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApplicationOutput(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplicationOutput",
        input_schema = schemas.DeleteApplicationOutputInput,
        output_schema = schemas.DeleteApplicationOutputOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApplicationReferenceDataSource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplicationReferenceDataSource",
        input_schema = schemas.DeleteApplicationReferenceDataSourceInput,
        output_schema = schemas.DeleteApplicationReferenceDataSourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApplicationSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplicationSnapshot",
        input_schema = schemas.DeleteApplicationSnapshotInput,
        output_schema = schemas.DeleteApplicationSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApplicationVpcConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplicationVpcConfiguration",
        input_schema = schemas.DeleteApplicationVpcConfigurationInput,
        output_schema = schemas.DeleteApplicationVpcConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeApplication(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApplication",
        input_schema = schemas.DescribeApplicationInput,
        output_schema = schemas.DescribeApplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeApplicationOperation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApplicationOperation",
        input_schema = schemas.DescribeApplicationOperationInput,
        output_schema = schemas.DescribeApplicationOperationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeApplicationSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApplicationSnapshot",
        input_schema = schemas.DescribeApplicationSnapshotInput,
        output_schema = schemas.DescribeApplicationSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeApplicationVersion(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApplicationVersion",
        input_schema = schemas.DescribeApplicationVersionInput,
        output_schema = schemas.DescribeApplicationVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:discoverInputSchema(input, options)
    return self:invokeOperation(input, {
        name = "DiscoverInputSchema",
        input_schema = schemas.DiscoverInputSchemaInput,
        output_schema = schemas.DiscoverInputSchemaOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApplicationOperations(input, options)
    return self:invokeOperation(input, {
        name = "ListApplicationOperations",
        input_schema = schemas.ListApplicationOperationsInput,
        output_schema = schemas.ListApplicationOperationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApplications(input, options)
    return self:invokeOperation(input, {
        name = "ListApplications",
        input_schema = schemas.ListApplicationsInput,
        output_schema = schemas.ListApplicationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApplicationSnapshots(input, options)
    return self:invokeOperation(input, {
        name = "ListApplicationSnapshots",
        input_schema = schemas.ListApplicationSnapshotsInput,
        output_schema = schemas.ListApplicationSnapshotsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApplicationVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListApplicationVersions",
        input_schema = schemas.ListApplicationVersionsInput,
        output_schema = schemas.ListApplicationVersionsOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rollbackApplication(input, options)
    return self:invokeOperation(input, {
        name = "RollbackApplication",
        input_schema = schemas.RollbackApplicationInput,
        output_schema = schemas.RollbackApplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startApplication(input, options)
    return self:invokeOperation(input, {
        name = "StartApplication",
        input_schema = schemas.StartApplicationInput,
        output_schema = schemas.StartApplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopApplication(input, options)
    return self:invokeOperation(input, {
        name = "StopApplication",
        input_schema = schemas.StopApplicationInput,
        output_schema = schemas.StopApplicationOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApplication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplication",
        input_schema = schemas.UpdateApplicationInput,
        output_schema = schemas.UpdateApplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApplicationMaintenanceConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplicationMaintenanceConfiguration",
        input_schema = schemas.UpdateApplicationMaintenanceConfigurationInput,
        output_schema = schemas.UpdateApplicationMaintenanceConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
