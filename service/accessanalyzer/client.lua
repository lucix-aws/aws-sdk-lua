local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("accessanalyzer.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("accessanalyzer.types")

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
        input_schema = types.ApplyArchiveRuleInput,
        output_schema = types.ApplyArchiveRuleOutput,
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
        input_schema = types.CancelPolicyGenerationInput,
        output_schema = types.CancelPolicyGenerationOutput,
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
        input_schema = types.CheckAccessNotGrantedInput,
        output_schema = types.CheckAccessNotGrantedOutput,
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
        input_schema = types.CheckNoNewAccessInput,
        output_schema = types.CheckNoNewAccessOutput,
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
        input_schema = types.CheckNoPublicAccessInput,
        output_schema = types.CheckNoPublicAccessOutput,
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
        input_schema = types.CreateAccessPreviewInput,
        output_schema = types.CreateAccessPreviewOutput,
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
        input_schema = types.CreateAnalyzerInput,
        output_schema = types.CreateAnalyzerOutput,
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
        input_schema = types.CreateArchiveRuleInput,
        output_schema = types.CreateArchiveRuleOutput,
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
        input_schema = types.DeleteAnalyzerInput,
        output_schema = types.DeleteAnalyzerOutput,
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
        input_schema = types.DeleteArchiveRuleInput,
        output_schema = types.DeleteArchiveRuleOutput,
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
        input_schema = types.GenerateFindingRecommendationInput,
        output_schema = types.GenerateFindingRecommendationOutput,
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
        input_schema = types.GetAccessPreviewInput,
        output_schema = types.GetAccessPreviewOutput,
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
        input_schema = types.GetAnalyzedResourceInput,
        output_schema = types.GetAnalyzedResourceOutput,
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
        input_schema = types.GetAnalyzerInput,
        output_schema = types.GetAnalyzerOutput,
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
        input_schema = types.GetArchiveRuleInput,
        output_schema = types.GetArchiveRuleOutput,
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
        input_schema = types.GetFindingInput,
        output_schema = types.GetFindingOutput,
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
        input_schema = types.GetFindingRecommendationInput,
        output_schema = types.GetFindingRecommendationOutput,
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
        input_schema = types.GetFindingsStatisticsInput,
        output_schema = types.GetFindingsStatisticsOutput,
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
        input_schema = types.GetFindingV2Input,
        output_schema = types.GetFindingV2Output,
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
        input_schema = types.GetGeneratedPolicyInput,
        output_schema = types.GetGeneratedPolicyOutput,
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
        input_schema = types.ListAccessPreviewFindingsInput,
        output_schema = types.ListAccessPreviewFindingsOutput,
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
        input_schema = types.ListAccessPreviewsInput,
        output_schema = types.ListAccessPreviewsOutput,
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
        input_schema = types.ListAnalyzedResourcesInput,
        output_schema = types.ListAnalyzedResourcesOutput,
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
        input_schema = types.ListAnalyzersInput,
        output_schema = types.ListAnalyzersOutput,
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
        input_schema = types.ListArchiveRulesInput,
        output_schema = types.ListArchiveRulesOutput,
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
        input_schema = types.ListFindingsInput,
        output_schema = types.ListFindingsOutput,
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
        input_schema = types.ListFindingsV2Input,
        output_schema = types.ListFindingsV2Output,
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
        input_schema = types.ListPolicyGenerationsInput,
        output_schema = types.ListPolicyGenerationsOutput,
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
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
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
        input_schema = types.StartPolicyGenerationInput,
        output_schema = types.StartPolicyGenerationOutput,
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
        input_schema = types.StartResourceScanInput,
        output_schema = types.StartResourceScanOutput,
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

function Client:updateAnalyzer(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAnalyzer",
        input_schema = types.UpdateAnalyzerInput,
        output_schema = types.UpdateAnalyzerOutput,
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
        input_schema = types.UpdateArchiveRuleInput,
        output_schema = types.UpdateArchiveRuleOutput,
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
        input_schema = types.UpdateFindingsInput,
        output_schema = types.UpdateFindingsOutput,
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
        input_schema = types.ValidatePolicyInput,
        output_schema = types.ValidatePolicyOutput,
        http_method = "POST",
        http_path = "/policy/validation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
