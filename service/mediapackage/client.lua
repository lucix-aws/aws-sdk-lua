local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("mediapackage.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("mediapackage.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "MediaPackage"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "mediapackage", signing_region = cfg.region } }
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

function Client:configureLogs(input, options)
    return self:invokeOperation(input, {
        name = "ConfigureLogs",
        input_schema = schemas.ConfigureLogsInput,
        output_schema = schemas.ConfigureLogsOutput,
        http_method = "PUT",
        http_path = "/channels/{Id}/configure_logs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createChannel(input, options)
    return self:invokeOperation(input, {
        name = "CreateChannel",
        input_schema = schemas.CreateChannelInput,
        output_schema = schemas.CreateChannelOutput,
        http_method = "POST",
        http_path = "/channels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createHarvestJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateHarvestJob",
        input_schema = schemas.CreateHarvestJobInput,
        output_schema = schemas.CreateHarvestJobOutput,
        http_method = "POST",
        http_path = "/harvest_jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createOriginEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateOriginEndpoint",
        input_schema = schemas.CreateOriginEndpointInput,
        output_schema = schemas.CreateOriginEndpointOutput,
        http_method = "POST",
        http_path = "/origin_endpoints",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteChannel",
        input_schema = schemas.DeleteChannelInput,
        output_schema = schemas.DeleteChannelOutput,
        http_method = "DELETE",
        http_path = "/channels/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteOriginEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOriginEndpoint",
        input_schema = schemas.DeleteOriginEndpointInput,
        output_schema = schemas.DeleteOriginEndpointOutput,
        http_method = "DELETE",
        http_path = "/origin_endpoints/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeChannel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeChannel",
        input_schema = schemas.DescribeChannelInput,
        output_schema = schemas.DescribeChannelOutput,
        http_method = "GET",
        http_path = "/channels/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeHarvestJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeHarvestJob",
        input_schema = schemas.DescribeHarvestJobInput,
        output_schema = schemas.DescribeHarvestJobOutput,
        http_method = "GET",
        http_path = "/harvest_jobs/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeOriginEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOriginEndpoint",
        input_schema = schemas.DescribeOriginEndpointInput,
        output_schema = schemas.DescribeOriginEndpointOutput,
        http_method = "GET",
        http_path = "/origin_endpoints/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listChannels(input, options)
    return self:invokeOperation(input, {
        name = "ListChannels",
        input_schema = schemas.ListChannelsInput,
        output_schema = schemas.ListChannelsOutput,
        http_method = "GET",
        http_path = "/channels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listHarvestJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListHarvestJobs",
        input_schema = schemas.ListHarvestJobsInput,
        output_schema = schemas.ListHarvestJobsOutput,
        http_method = "GET",
        http_path = "/harvest_jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOriginEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListOriginEndpoints",
        input_schema = schemas.ListOriginEndpointsInput,
        output_schema = schemas.ListOriginEndpointsOutput,
        http_method = "GET",
        http_path = "/origin_endpoints",
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
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rotateChannelCredentials(input, options)
    return self:invokeOperation(input, {
        name = "RotateChannelCredentials",
        input_schema = schemas.RotateChannelCredentialsInput,
        output_schema = schemas.RotateChannelCredentialsOutput,
        http_method = "PUT",
        http_path = "/channels/{Id}/credentials",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rotateIngestEndpointCredentials(input, options)
    return self:invokeOperation(input, {
        name = "RotateIngestEndpointCredentials",
        input_schema = schemas.RotateIngestEndpointCredentialsInput,
        output_schema = schemas.RotateIngestEndpointCredentialsOutput,
        http_method = "PUT",
        http_path = "/channels/{Id}/ingest_endpoints/{IngestEndpointId}/credentials",
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
        http_path = "/tags/{ResourceArn}",
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
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateChannel",
        input_schema = schemas.UpdateChannelInput,
        output_schema = schemas.UpdateChannelOutput,
        http_method = "PUT",
        http_path = "/channels/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateOriginEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOriginEndpoint",
        input_schema = schemas.UpdateOriginEndpointInput,
        output_schema = schemas.UpdateOriginEndpointOutput,
        http_method = "PUT",
        http_path = "/origin_endpoints/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
