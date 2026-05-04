local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("mediapackage.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("mediapackage.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "MediaPackage"
    cfg.signing_name = "mediapackage"
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

function Client:configureLogs(input, options)
    return self:invokeOperation(input, {
        name = "ConfigureLogs",
        input_schema = types.ConfigureLogsInput,
        output_schema = types.ConfigureLogsOutput,
        http_method = "PUT",
        http_path = "/channels/{Id}/configure_logs",
    }, options)
end

function Client:createChannel(input, options)
    return self:invokeOperation(input, {
        name = "CreateChannel",
        input_schema = types.CreateChannelInput,
        output_schema = types.CreateChannelOutput,
        http_method = "POST",
        http_path = "/channels",
    }, options)
end

function Client:createHarvestJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateHarvestJob",
        input_schema = types.CreateHarvestJobInput,
        output_schema = types.CreateHarvestJobOutput,
        http_method = "POST",
        http_path = "/harvest_jobs",
    }, options)
end

function Client:createOriginEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateOriginEndpoint",
        input_schema = types.CreateOriginEndpointInput,
        output_schema = types.CreateOriginEndpointOutput,
        http_method = "POST",
        http_path = "/origin_endpoints",
    }, options)
end

function Client:deleteChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteChannel",
        input_schema = types.DeleteChannelInput,
        output_schema = types.DeleteChannelOutput,
        http_method = "DELETE",
        http_path = "/channels/{Id}",
    }, options)
end

function Client:deleteOriginEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOriginEndpoint",
        input_schema = types.DeleteOriginEndpointInput,
        output_schema = types.DeleteOriginEndpointOutput,
        http_method = "DELETE",
        http_path = "/origin_endpoints/{Id}",
    }, options)
end

function Client:describeChannel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeChannel",
        input_schema = types.DescribeChannelInput,
        output_schema = types.DescribeChannelOutput,
        http_method = "GET",
        http_path = "/channels/{Id}",
    }, options)
end

function Client:describeHarvestJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeHarvestJob",
        input_schema = types.DescribeHarvestJobInput,
        output_schema = types.DescribeHarvestJobOutput,
        http_method = "GET",
        http_path = "/harvest_jobs/{Id}",
    }, options)
end

function Client:describeOriginEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOriginEndpoint",
        input_schema = types.DescribeOriginEndpointInput,
        output_schema = types.DescribeOriginEndpointOutput,
        http_method = "GET",
        http_path = "/origin_endpoints/{Id}",
    }, options)
end

function Client:listChannels(input, options)
    return self:invokeOperation(input, {
        name = "ListChannels",
        input_schema = types.ListChannelsInput,
        output_schema = types.ListChannelsOutput,
        http_method = "GET",
        http_path = "/channels",
    }, options)
end

function Client:listHarvestJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListHarvestJobs",
        input_schema = types.ListHarvestJobsInput,
        output_schema = types.ListHarvestJobsOutput,
        http_method = "GET",
        http_path = "/harvest_jobs",
    }, options)
end

function Client:listOriginEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListOriginEndpoints",
        input_schema = types.ListOriginEndpointsInput,
        output_schema = types.ListOriginEndpointsOutput,
        http_method = "GET",
        http_path = "/origin_endpoints",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:rotateChannelCredentials(input, options)
    return self:invokeOperation(input, {
        name = "RotateChannelCredentials",
        input_schema = types.RotateChannelCredentialsInput,
        output_schema = types.RotateChannelCredentialsOutput,
        http_method = "PUT",
        http_path = "/channels/{Id}/credentials",
    }, options)
end

function Client:rotateIngestEndpointCredentials(input, options)
    return self:invokeOperation(input, {
        name = "RotateIngestEndpointCredentials",
        input_schema = types.RotateIngestEndpointCredentialsInput,
        output_schema = types.RotateIngestEndpointCredentialsOutput,
        http_method = "PUT",
        http_path = "/channels/{Id}/ingest_endpoints/{IngestEndpointId}/credentials",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:updateChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateChannel",
        input_schema = types.UpdateChannelInput,
        output_schema = types.UpdateChannelOutput,
        http_method = "PUT",
        http_path = "/channels/{Id}",
    }, options)
end

function Client:updateOriginEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOriginEndpoint",
        input_schema = types.UpdateOriginEndpointInput,
        output_schema = types.UpdateOriginEndpointOutput,
        http_method = "PUT",
        http_path = "/origin_endpoints/{Id}",
    }, options)
end

return M
