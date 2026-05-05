local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("codegurusecurity.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("codegurusecurity.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AwsCodeGuruSecurity"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "codeguru-security", signing_region = cfg.region } }
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

function Client:batchGetFindings(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetFindings",
        input_schema = schemas.BatchGetFindingsInput,
        output_schema = schemas.BatchGetFindingsOutput,
        http_method = "POST",
        http_path = "/batchGetFindings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createScan(input, options)
    return self:invokeOperation(input, {
        name = "CreateScan",
        input_schema = schemas.CreateScanInput,
        output_schema = schemas.CreateScanOutput,
        http_method = "POST",
        http_path = "/scans",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createUploadUrl(input, options)
    return self:invokeOperation(input, {
        name = "CreateUploadUrl",
        input_schema = schemas.CreateUploadUrlInput,
        output_schema = schemas.CreateUploadUrlOutput,
        http_method = "POST",
        http_path = "/uploadUrl",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccountConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountConfiguration",
        input_schema = schemas.GetAccountConfigurationInput,
        output_schema = schemas.GetAccountConfigurationOutput,
        http_method = "GET",
        http_path = "/accountConfiguration/get",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFindings(input, options)
    return self:invokeOperation(input, {
        name = "GetFindings",
        input_schema = schemas.GetFindingsInput,
        output_schema = schemas.GetFindingsOutput,
        http_method = "GET",
        http_path = "/findings/{scanName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMetricsSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetMetricsSummary",
        input_schema = schemas.GetMetricsSummaryInput,
        output_schema = schemas.GetMetricsSummaryOutput,
        http_method = "GET",
        http_path = "/metrics/summary",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getScan(input, options)
    return self:invokeOperation(input, {
        name = "GetScan",
        input_schema = schemas.GetScanInput,
        output_schema = schemas.GetScanOutput,
        http_method = "GET",
        http_path = "/scans/{scanName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFindingsMetrics(input, options)
    return self:invokeOperation(input, {
        name = "ListFindingsMetrics",
        input_schema = schemas.ListFindingsMetricsInput,
        output_schema = schemas.ListFindingsMetricsOutput,
        http_method = "GET",
        http_path = "/metrics/findings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listScans(input, options)
    return self:invokeOperation(input, {
        name = "ListScans",
        input_schema = schemas.ListScansInput,
        output_schema = schemas.ListScansOutput,
        http_method = "GET",
        http_path = "/scans",
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

function Client:updateAccountConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccountConfiguration",
        input_schema = schemas.UpdateAccountConfigurationInput,
        output_schema = schemas.UpdateAccountConfigurationOutput,
        http_method = "PUT",
        http_path = "/updateAccountConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
