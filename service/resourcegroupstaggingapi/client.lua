local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("resourcegroupstaggingapi.endpoint_rules")
local schemas = require("resourcegroupstaggingapi.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ResourceGroupsTaggingAPI_20170126"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "tagging", signing_region = cfg.region } }
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

function Client:describeReportCreation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReportCreation",
        input_schema = schemas.DescribeReportCreationInput,
        output_schema = schemas.DescribeReportCreationOutput,
        http_method = "POST",
        http_path = "/DescribeReportCreation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getComplianceSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetComplianceSummary",
        input_schema = schemas.GetComplianceSummaryInput,
        output_schema = schemas.GetComplianceSummaryOutput,
        http_method = "POST",
        http_path = "/GetComplianceSummary",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResources(input, options)
    return self:invokeOperation(input, {
        name = "GetResources",
        input_schema = schemas.GetResourcesInput,
        output_schema = schemas.GetResourcesOutput,
        http_method = "POST",
        http_path = "/GetResources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTagKeys(input, options)
    return self:invokeOperation(input, {
        name = "GetTagKeys",
        input_schema = schemas.GetTagKeysInput,
        output_schema = schemas.GetTagKeysOutput,
        http_method = "POST",
        http_path = "/GetTagKeys",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTagValues(input, options)
    return self:invokeOperation(input, {
        name = "GetTagValues",
        input_schema = schemas.GetTagValuesInput,
        output_schema = schemas.GetTagValuesOutput,
        http_method = "POST",
        http_path = "/GetTagValues",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRequiredTags(input, options)
    return self:invokeOperation(input, {
        name = "ListRequiredTags",
        input_schema = schemas.ListRequiredTagsInput,
        output_schema = schemas.ListRequiredTagsOutput,
        http_method = "POST",
        http_path = "/ListRequiredTags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startReportCreation(input, options)
    return self:invokeOperation(input, {
        name = "StartReportCreation",
        input_schema = schemas.StartReportCreationInput,
        output_schema = schemas.StartReportCreationOutput,
        http_method = "POST",
        http_path = "/StartReportCreation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResources(input, options)
    return self:invokeOperation(input, {
        name = "TagResources",
        input_schema = schemas.TagResourcesInput,
        output_schema = schemas.TagResourcesOutput,
        http_method = "POST",
        http_path = "/TagResources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResources(input, options)
    return self:invokeOperation(input, {
        name = "UntagResources",
        input_schema = schemas.UntagResourcesInput,
        output_schema = schemas.UntagResourcesOutput,
        http_method = "POST",
        http_path = "/UntagResources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
