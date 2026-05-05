local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("support.endpoint_rules")
local schemas = require("support.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSSupport_20130415"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "support", signing_region = cfg.region } }
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

function Client:addAttachmentsToSet(input, options)
    return self:invokeOperation(input, {
        name = "AddAttachmentsToSet",
        input_schema = schemas.AddAttachmentsToSetInput,
        output_schema = schemas.AddAttachmentsToSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addCommunicationToCase(input, options)
    return self:invokeOperation(input, {
        name = "AddCommunicationToCase",
        input_schema = schemas.AddCommunicationToCaseInput,
        output_schema = schemas.AddCommunicationToCaseOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCase(input, options)
    return self:invokeOperation(input, {
        name = "CreateCase",
        input_schema = schemas.CreateCaseInput,
        output_schema = schemas.CreateCaseOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAttachment(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAttachment",
        input_schema = schemas.DescribeAttachmentInput,
        output_schema = schemas.DescribeAttachmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCases(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCases",
        input_schema = schemas.DescribeCasesInput,
        output_schema = schemas.DescribeCasesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCommunications(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCommunications",
        input_schema = schemas.DescribeCommunicationsInput,
        output_schema = schemas.DescribeCommunicationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCreateCaseOptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCreateCaseOptions",
        input_schema = schemas.DescribeCreateCaseOptionsInput,
        output_schema = schemas.DescribeCreateCaseOptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeServices(input, options)
    return self:invokeOperation(input, {
        name = "DescribeServices",
        input_schema = schemas.DescribeServicesInput,
        output_schema = schemas.DescribeServicesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSeverityLevels(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSeverityLevels",
        input_schema = schemas.DescribeSeverityLevelsInput,
        output_schema = schemas.DescribeSeverityLevelsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSupportedLanguages(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSupportedLanguages",
        input_schema = schemas.DescribeSupportedLanguagesInput,
        output_schema = schemas.DescribeSupportedLanguagesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTrustedAdvisorCheckRefreshStatuses(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTrustedAdvisorCheckRefreshStatuses",
        input_schema = schemas.DescribeTrustedAdvisorCheckRefreshStatusesInput,
        output_schema = schemas.DescribeTrustedAdvisorCheckRefreshStatusesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTrustedAdvisorCheckResult(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTrustedAdvisorCheckResult",
        input_schema = schemas.DescribeTrustedAdvisorCheckResultInput,
        output_schema = schemas.DescribeTrustedAdvisorCheckResultOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTrustedAdvisorChecks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTrustedAdvisorChecks",
        input_schema = schemas.DescribeTrustedAdvisorChecksInput,
        output_schema = schemas.DescribeTrustedAdvisorChecksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTrustedAdvisorCheckSummaries(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTrustedAdvisorCheckSummaries",
        input_schema = schemas.DescribeTrustedAdvisorCheckSummariesInput,
        output_schema = schemas.DescribeTrustedAdvisorCheckSummariesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:refreshTrustedAdvisorCheck(input, options)
    return self:invokeOperation(input, {
        name = "RefreshTrustedAdvisorCheck",
        input_schema = schemas.RefreshTrustedAdvisorCheckInput,
        output_schema = schemas.RefreshTrustedAdvisorCheckOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resolveCase(input, options)
    return self:invokeOperation(input, {
        name = "ResolveCase",
        input_schema = schemas.ResolveCaseInput,
        output_schema = schemas.ResolveCaseOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
