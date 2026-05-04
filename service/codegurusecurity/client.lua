local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("codegurusecurity.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("codegurusecurity.types")

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
        input_schema = types.BatchGetFindingsInput,
        output_schema = types.BatchGetFindingsOutput,
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
        input_schema = types.CreateScanInput,
        output_schema = types.CreateScanOutput,
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
        input_schema = types.CreateUploadUrlInput,
        output_schema = types.CreateUploadUrlOutput,
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
        input_schema = types.GetAccountConfigurationInput,
        output_schema = types.GetAccountConfigurationOutput,
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
        input_schema = types.GetFindingsInput,
        output_schema = types.GetFindingsOutput,
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
        input_schema = types.GetMetricsSummaryInput,
        output_schema = types.GetMetricsSummaryOutput,
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
        input_schema = types.GetScanInput,
        output_schema = types.GetScanOutput,
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
        input_schema = types.ListFindingsMetricsInput,
        output_schema = types.ListFindingsMetricsOutput,
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
        input_schema = types.ListScansInput,
        output_schema = types.ListScansOutput,
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
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
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
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
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
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
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
        input_schema = types.UpdateAccountConfigurationInput,
        output_schema = types.UpdateAccountConfigurationOutput,
        http_method = "PUT",
        http_path = "/updateAccountConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
