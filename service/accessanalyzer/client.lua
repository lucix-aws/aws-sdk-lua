local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("accessanalyzer.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("accessanalyzer.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AccessAnalyzer"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "access-analyzer", signing_region = cfg.region } }
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

function Client:applyArchiveRule(input, options)
    return self:invokeOperation(input, {
        name = "ApplyArchiveRule",
        input_schema = schemas.ApplyArchiveRuleInput,
        output_schema = schemas.ApplyArchiveRuleOutput,
        http_method = "PUT",
        http_path = "/archive-rule",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelPolicyGeneration(input, options)
    return self:invokeOperation(input, {
        name = "CancelPolicyGeneration",
        input_schema = schemas.CancelPolicyGenerationInput,
        output_schema = schemas.CancelPolicyGenerationOutput,
        http_method = "PUT",
        http_path = "/policy/generation/{jobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:checkAccessNotGranted(input, options)
    return self:invokeOperation(input, {
        name = "CheckAccessNotGranted",
        input_schema = schemas.CheckAccessNotGrantedInput,
        output_schema = schemas.CheckAccessNotGrantedOutput,
        http_method = "POST",
        http_path = "/policy/check-access-not-granted",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:checkNoNewAccess(input, options)
    return self:invokeOperation(input, {
        name = "CheckNoNewAccess",
        input_schema = schemas.CheckNoNewAccessInput,
        output_schema = schemas.CheckNoNewAccessOutput,
        http_method = "POST",
        http_path = "/policy/check-no-new-access",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:checkNoPublicAccess(input, options)
    return self:invokeOperation(input, {
        name = "CheckNoPublicAccess",
        input_schema = schemas.CheckNoPublicAccessInput,
        output_schema = schemas.CheckNoPublicAccessOutput,
        http_method = "POST",
        http_path = "/policy/check-no-public-access",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAccessPreview(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccessPreview",
        input_schema = schemas.CreateAccessPreviewInput,
        output_schema = schemas.CreateAccessPreviewOutput,
        http_method = "PUT",
        http_path = "/access-preview",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAnalyzer(input, options)
    return self:invokeOperation(input, {
        name = "CreateAnalyzer",
        input_schema = schemas.CreateAnalyzerInput,
        output_schema = schemas.CreateAnalyzerOutput,
        http_method = "PUT",
        http_path = "/analyzer",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createArchiveRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateArchiveRule",
        input_schema = schemas.CreateArchiveRuleInput,
        output_schema = schemas.CreateArchiveRuleOutput,
        http_method = "PUT",
        http_path = "/analyzer/{analyzerName}/archive-rule",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAnalyzer(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAnalyzer",
        input_schema = schemas.DeleteAnalyzerInput,
        output_schema = schemas.DeleteAnalyzerOutput,
        http_method = "DELETE",
        http_path = "/analyzer/{analyzerName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteArchiveRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteArchiveRule",
        input_schema = schemas.DeleteArchiveRuleInput,
        output_schema = schemas.DeleteArchiveRuleOutput,
        http_method = "DELETE",
        http_path = "/analyzer/{analyzerName}/archive-rule/{ruleName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:generateFindingRecommendation(input, options)
    return self:invokeOperation(input, {
        name = "GenerateFindingRecommendation",
        input_schema = schemas.GenerateFindingRecommendationInput,
        output_schema = schemas.GenerateFindingRecommendationOutput,
        http_method = "POST",
        http_path = "/recommendation/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccessPreview(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessPreview",
        input_schema = schemas.GetAccessPreviewInput,
        output_schema = schemas.GetAccessPreviewOutput,
        http_method = "GET",
        http_path = "/access-preview/{accessPreviewId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAnalyzedResource(input, options)
    return self:invokeOperation(input, {
        name = "GetAnalyzedResource",
        input_schema = schemas.GetAnalyzedResourceInput,
        output_schema = schemas.GetAnalyzedResourceOutput,
        http_method = "GET",
        http_path = "/analyzed-resource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAnalyzer(input, options)
    return self:invokeOperation(input, {
        name = "GetAnalyzer",
        input_schema = schemas.GetAnalyzerInput,
        output_schema = schemas.GetAnalyzerOutput,
        http_method = "GET",
        http_path = "/analyzer/{analyzerName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getArchiveRule(input, options)
    return self:invokeOperation(input, {
        name = "GetArchiveRule",
        input_schema = schemas.GetArchiveRuleInput,
        output_schema = schemas.GetArchiveRuleOutput,
        http_method = "GET",
        http_path = "/analyzer/{analyzerName}/archive-rule/{ruleName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFinding(input, options)
    return self:invokeOperation(input, {
        name = "GetFinding",
        input_schema = schemas.GetFindingInput,
        output_schema = schemas.GetFindingOutput,
        http_method = "GET",
        http_path = "/finding/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFindingRecommendation(input, options)
    return self:invokeOperation(input, {
        name = "GetFindingRecommendation",
        input_schema = schemas.GetFindingRecommendationInput,
        output_schema = schemas.GetFindingRecommendationOutput,
        http_method = "GET",
        http_path = "/recommendation/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFindingsStatistics(input, options)
    return self:invokeOperation(input, {
        name = "GetFindingsStatistics",
        input_schema = schemas.GetFindingsStatisticsInput,
        output_schema = schemas.GetFindingsStatisticsOutput,
        http_method = "POST",
        http_path = "/analyzer/findings/statistics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFindingV2(input, options)
    return self:invokeOperation(input, {
        name = "GetFindingV2",
        input_schema = schemas.GetFindingV2Input,
        output_schema = schemas.GetFindingV2Output,
        http_method = "GET",
        http_path = "/findingv2/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGeneratedPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetGeneratedPolicy",
        input_schema = schemas.GetGeneratedPolicyInput,
        output_schema = schemas.GetGeneratedPolicyOutput,
        http_method = "GET",
        http_path = "/policy/generation/{jobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccessPreviewFindings(input, options)
    return self:invokeOperation(input, {
        name = "ListAccessPreviewFindings",
        input_schema = schemas.ListAccessPreviewFindingsInput,
        output_schema = schemas.ListAccessPreviewFindingsOutput,
        http_method = "POST",
        http_path = "/access-preview/{accessPreviewId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccessPreviews(input, options)
    return self:invokeOperation(input, {
        name = "ListAccessPreviews",
        input_schema = schemas.ListAccessPreviewsInput,
        output_schema = schemas.ListAccessPreviewsOutput,
        http_method = "GET",
        http_path = "/access-preview",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAnalyzedResources(input, options)
    return self:invokeOperation(input, {
        name = "ListAnalyzedResources",
        input_schema = schemas.ListAnalyzedResourcesInput,
        output_schema = schemas.ListAnalyzedResourcesOutput,
        http_method = "POST",
        http_path = "/analyzed-resource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAnalyzers(input, options)
    return self:invokeOperation(input, {
        name = "ListAnalyzers",
        input_schema = schemas.ListAnalyzersInput,
        output_schema = schemas.ListAnalyzersOutput,
        http_method = "GET",
        http_path = "/analyzer",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listArchiveRules(input, options)
    return self:invokeOperation(input, {
        name = "ListArchiveRules",
        input_schema = schemas.ListArchiveRulesInput,
        output_schema = schemas.ListArchiveRulesOutput,
        http_method = "GET",
        http_path = "/analyzer/{analyzerName}/archive-rule",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFindings(input, options)
    return self:invokeOperation(input, {
        name = "ListFindings",
        input_schema = schemas.ListFindingsInput,
        output_schema = schemas.ListFindingsOutput,
        http_method = "POST",
        http_path = "/finding",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFindingsV2(input, options)
    return self:invokeOperation(input, {
        name = "ListFindingsV2",
        input_schema = schemas.ListFindingsV2Input,
        output_schema = schemas.ListFindingsV2Output,
        http_method = "POST",
        http_path = "/findingv2",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPolicyGenerations(input, options)
    return self:invokeOperation(input, {
        name = "ListPolicyGenerations",
        input_schema = schemas.ListPolicyGenerationsInput,
        output_schema = schemas.ListPolicyGenerationsOutput,
        http_method = "GET",
        http_path = "/policy/generation",
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

function Client:startPolicyGeneration(input, options)
    return self:invokeOperation(input, {
        name = "StartPolicyGeneration",
        input_schema = schemas.StartPolicyGenerationInput,
        output_schema = schemas.StartPolicyGenerationOutput,
        http_method = "PUT",
        http_path = "/policy/generation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startResourceScan(input, options)
    return self:invokeOperation(input, {
        name = "StartResourceScan",
        input_schema = schemas.StartResourceScanInput,
        output_schema = schemas.StartResourceScanOutput,
        http_method = "POST",
        http_path = "/resource/scan",
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

function Client:updateAnalyzer(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAnalyzer",
        input_schema = schemas.UpdateAnalyzerInput,
        output_schema = schemas.UpdateAnalyzerOutput,
        http_method = "PUT",
        http_path = "/analyzer/{analyzerName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateArchiveRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateArchiveRule",
        input_schema = schemas.UpdateArchiveRuleInput,
        output_schema = schemas.UpdateArchiveRuleOutput,
        http_method = "PUT",
        http_path = "/analyzer/{analyzerName}/archive-rule/{ruleName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFindings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFindings",
        input_schema = schemas.UpdateFindingsInput,
        output_schema = schemas.UpdateFindingsOutput,
        http_method = "PUT",
        http_path = "/finding",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:validatePolicy(input, options)
    return self:invokeOperation(input, {
        name = "ValidatePolicy",
        input_schema = schemas.ValidatePolicyInput,
        output_schema = schemas.ValidatePolicyOutput,
        http_method = "POST",
        http_path = "/policy/validation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
