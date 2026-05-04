local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("support.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("support.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSSupport_20130415"
    cfg.signing_name = "support"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
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

function Client:addAttachmentsToSet(input, options)
    return self:invokeOperation(input, {
        name = "AddAttachmentsToSet",
        input_schema = types.AddAttachmentsToSetInput,
        output_schema = types.AddAttachmentsToSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:addCommunicationToCase(input, options)
    return self:invokeOperation(input, {
        name = "AddCommunicationToCase",
        input_schema = types.AddCommunicationToCaseInput,
        output_schema = types.AddCommunicationToCaseOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createCase(input, options)
    return self:invokeOperation(input, {
        name = "CreateCase",
        input_schema = types.CreateCaseInput,
        output_schema = types.CreateCaseOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAttachment(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAttachment",
        input_schema = types.DescribeAttachmentInput,
        output_schema = types.DescribeAttachmentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeCases(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCases",
        input_schema = types.DescribeCasesInput,
        output_schema = types.DescribeCasesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeCommunications(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCommunications",
        input_schema = types.DescribeCommunicationsInput,
        output_schema = types.DescribeCommunicationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeCreateCaseOptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCreateCaseOptions",
        input_schema = types.DescribeCreateCaseOptionsInput,
        output_schema = types.DescribeCreateCaseOptionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeServices(input, options)
    return self:invokeOperation(input, {
        name = "DescribeServices",
        input_schema = types.DescribeServicesInput,
        output_schema = types.DescribeServicesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeSeverityLevels(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSeverityLevels",
        input_schema = types.DescribeSeverityLevelsInput,
        output_schema = types.DescribeSeverityLevelsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeSupportedLanguages(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSupportedLanguages",
        input_schema = types.DescribeSupportedLanguagesInput,
        output_schema = types.DescribeSupportedLanguagesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTrustedAdvisorCheckRefreshStatuses(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTrustedAdvisorCheckRefreshStatuses",
        input_schema = types.DescribeTrustedAdvisorCheckRefreshStatusesInput,
        output_schema = types.DescribeTrustedAdvisorCheckRefreshStatusesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTrustedAdvisorCheckResult(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTrustedAdvisorCheckResult",
        input_schema = types.DescribeTrustedAdvisorCheckResultInput,
        output_schema = types.DescribeTrustedAdvisorCheckResultOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTrustedAdvisorChecks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTrustedAdvisorChecks",
        input_schema = types.DescribeTrustedAdvisorChecksInput,
        output_schema = types.DescribeTrustedAdvisorChecksOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTrustedAdvisorCheckSummaries(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTrustedAdvisorCheckSummaries",
        input_schema = types.DescribeTrustedAdvisorCheckSummariesInput,
        output_schema = types.DescribeTrustedAdvisorCheckSummariesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:refreshTrustedAdvisorCheck(input, options)
    return self:invokeOperation(input, {
        name = "RefreshTrustedAdvisorCheck",
        input_schema = types.RefreshTrustedAdvisorCheckInput,
        output_schema = types.RefreshTrustedAdvisorCheckOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:resolveCase(input, options)
    return self:invokeOperation(input, {
        name = "ResolveCase",
        input_schema = types.ResolveCaseInput,
        output_schema = types.ResolveCaseOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
