local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("waf.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("waf.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSWAF_20150824"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "waf", signing_region = cfg.region } }
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

function Client:createByteMatchSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateByteMatchSet",
        input_schema = types.CreateByteMatchSetInput,
        output_schema = types.CreateByteMatchSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGeoMatchSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateGeoMatchSet",
        input_schema = types.CreateGeoMatchSetInput,
        output_schema = types.CreateGeoMatchSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIPSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateIPSet",
        input_schema = types.CreateIPSetInput,
        output_schema = types.CreateIPSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRateBasedRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateRateBasedRule",
        input_schema = types.CreateRateBasedRuleInput,
        output_schema = types.CreateRateBasedRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRegexMatchSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateRegexMatchSet",
        input_schema = types.CreateRegexMatchSetInput,
        output_schema = types.CreateRegexMatchSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRegexPatternSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateRegexPatternSet",
        input_schema = types.CreateRegexPatternSetInput,
        output_schema = types.CreateRegexPatternSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateRule",
        input_schema = types.CreateRuleInput,
        output_schema = types.CreateRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRuleGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateRuleGroup",
        input_schema = types.CreateRuleGroupInput,
        output_schema = types.CreateRuleGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSizeConstraintSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateSizeConstraintSet",
        input_schema = types.CreateSizeConstraintSetInput,
        output_schema = types.CreateSizeConstraintSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSqlInjectionMatchSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateSqlInjectionMatchSet",
        input_schema = types.CreateSqlInjectionMatchSetInput,
        output_schema = types.CreateSqlInjectionMatchSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWebACL(input, options)
    return self:invokeOperation(input, {
        name = "CreateWebACL",
        input_schema = types.CreateWebACLInput,
        output_schema = types.CreateWebACLOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWebACLMigrationStack(input, options)
    return self:invokeOperation(input, {
        name = "CreateWebACLMigrationStack",
        input_schema = types.CreateWebACLMigrationStackInput,
        output_schema = types.CreateWebACLMigrationStackOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createXssMatchSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateXssMatchSet",
        input_schema = types.CreateXssMatchSetInput,
        output_schema = types.CreateXssMatchSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteByteMatchSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteByteMatchSet",
        input_schema = types.DeleteByteMatchSetInput,
        output_schema = types.DeleteByteMatchSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGeoMatchSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGeoMatchSet",
        input_schema = types.DeleteGeoMatchSetInput,
        output_schema = types.DeleteGeoMatchSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIPSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIPSet",
        input_schema = types.DeleteIPSetInput,
        output_schema = types.DeleteIPSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLoggingConfiguration",
        input_schema = types.DeleteLoggingConfigurationInput,
        output_schema = types.DeleteLoggingConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePermissionPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeletePermissionPolicy",
        input_schema = types.DeletePermissionPolicyInput,
        output_schema = types.DeletePermissionPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRateBasedRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRateBasedRule",
        input_schema = types.DeleteRateBasedRuleInput,
        output_schema = types.DeleteRateBasedRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRegexMatchSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRegexMatchSet",
        input_schema = types.DeleteRegexMatchSetInput,
        output_schema = types.DeleteRegexMatchSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRegexPatternSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRegexPatternSet",
        input_schema = types.DeleteRegexPatternSetInput,
        output_schema = types.DeleteRegexPatternSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRule",
        input_schema = types.DeleteRuleInput,
        output_schema = types.DeleteRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRuleGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRuleGroup",
        input_schema = types.DeleteRuleGroupInput,
        output_schema = types.DeleteRuleGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSizeConstraintSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSizeConstraintSet",
        input_schema = types.DeleteSizeConstraintSetInput,
        output_schema = types.DeleteSizeConstraintSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSqlInjectionMatchSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSqlInjectionMatchSet",
        input_schema = types.DeleteSqlInjectionMatchSetInput,
        output_schema = types.DeleteSqlInjectionMatchSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWebACL(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWebACL",
        input_schema = types.DeleteWebACLInput,
        output_schema = types.DeleteWebACLOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteXssMatchSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteXssMatchSet",
        input_schema = types.DeleteXssMatchSetInput,
        output_schema = types.DeleteXssMatchSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getByteMatchSet(input, options)
    return self:invokeOperation(input, {
        name = "GetByteMatchSet",
        input_schema = types.GetByteMatchSetInput,
        output_schema = types.GetByteMatchSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getChangeToken(input, options)
    return self:invokeOperation(input, {
        name = "GetChangeToken",
        input_schema = types.GetChangeTokenInput,
        output_schema = types.GetChangeTokenOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getChangeTokenStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetChangeTokenStatus",
        input_schema = types.GetChangeTokenStatusInput,
        output_schema = types.GetChangeTokenStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGeoMatchSet(input, options)
    return self:invokeOperation(input, {
        name = "GetGeoMatchSet",
        input_schema = types.GetGeoMatchSetInput,
        output_schema = types.GetGeoMatchSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIPSet(input, options)
    return self:invokeOperation(input, {
        name = "GetIPSet",
        input_schema = types.GetIPSetInput,
        output_schema = types.GetIPSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetLoggingConfiguration",
        input_schema = types.GetLoggingConfigurationInput,
        output_schema = types.GetLoggingConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPermissionPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetPermissionPolicy",
        input_schema = types.GetPermissionPolicyInput,
        output_schema = types.GetPermissionPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRateBasedRule(input, options)
    return self:invokeOperation(input, {
        name = "GetRateBasedRule",
        input_schema = types.GetRateBasedRuleInput,
        output_schema = types.GetRateBasedRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRateBasedRuleManagedKeys(input, options)
    return self:invokeOperation(input, {
        name = "GetRateBasedRuleManagedKeys",
        input_schema = types.GetRateBasedRuleManagedKeysInput,
        output_schema = types.GetRateBasedRuleManagedKeysOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRegexMatchSet(input, options)
    return self:invokeOperation(input, {
        name = "GetRegexMatchSet",
        input_schema = types.GetRegexMatchSetInput,
        output_schema = types.GetRegexMatchSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRegexPatternSet(input, options)
    return self:invokeOperation(input, {
        name = "GetRegexPatternSet",
        input_schema = types.GetRegexPatternSetInput,
        output_schema = types.GetRegexPatternSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRule(input, options)
    return self:invokeOperation(input, {
        name = "GetRule",
        input_schema = types.GetRuleInput,
        output_schema = types.GetRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRuleGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetRuleGroup",
        input_schema = types.GetRuleGroupInput,
        output_schema = types.GetRuleGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSampledRequests(input, options)
    return self:invokeOperation(input, {
        name = "GetSampledRequests",
        input_schema = types.GetSampledRequestsInput,
        output_schema = types.GetSampledRequestsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSizeConstraintSet(input, options)
    return self:invokeOperation(input, {
        name = "GetSizeConstraintSet",
        input_schema = types.GetSizeConstraintSetInput,
        output_schema = types.GetSizeConstraintSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSqlInjectionMatchSet(input, options)
    return self:invokeOperation(input, {
        name = "GetSqlInjectionMatchSet",
        input_schema = types.GetSqlInjectionMatchSetInput,
        output_schema = types.GetSqlInjectionMatchSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWebACL(input, options)
    return self:invokeOperation(input, {
        name = "GetWebACL",
        input_schema = types.GetWebACLInput,
        output_schema = types.GetWebACLOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getXssMatchSet(input, options)
    return self:invokeOperation(input, {
        name = "GetXssMatchSet",
        input_schema = types.GetXssMatchSetInput,
        output_schema = types.GetXssMatchSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listActivatedRulesInRuleGroup(input, options)
    return self:invokeOperation(input, {
        name = "ListActivatedRulesInRuleGroup",
        input_schema = types.ListActivatedRulesInRuleGroupInput,
        output_schema = types.ListActivatedRulesInRuleGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listByteMatchSets(input, options)
    return self:invokeOperation(input, {
        name = "ListByteMatchSets",
        input_schema = types.ListByteMatchSetsInput,
        output_schema = types.ListByteMatchSetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGeoMatchSets(input, options)
    return self:invokeOperation(input, {
        name = "ListGeoMatchSets",
        input_schema = types.ListGeoMatchSetsInput,
        output_schema = types.ListGeoMatchSetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIPSets(input, options)
    return self:invokeOperation(input, {
        name = "ListIPSets",
        input_schema = types.ListIPSetsInput,
        output_schema = types.ListIPSetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLoggingConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListLoggingConfigurations",
        input_schema = types.ListLoggingConfigurationsInput,
        output_schema = types.ListLoggingConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRateBasedRules(input, options)
    return self:invokeOperation(input, {
        name = "ListRateBasedRules",
        input_schema = types.ListRateBasedRulesInput,
        output_schema = types.ListRateBasedRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRegexMatchSets(input, options)
    return self:invokeOperation(input, {
        name = "ListRegexMatchSets",
        input_schema = types.ListRegexMatchSetsInput,
        output_schema = types.ListRegexMatchSetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRegexPatternSets(input, options)
    return self:invokeOperation(input, {
        name = "ListRegexPatternSets",
        input_schema = types.ListRegexPatternSetsInput,
        output_schema = types.ListRegexPatternSetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRuleGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListRuleGroups",
        input_schema = types.ListRuleGroupsInput,
        output_schema = types.ListRuleGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRules(input, options)
    return self:invokeOperation(input, {
        name = "ListRules",
        input_schema = types.ListRulesInput,
        output_schema = types.ListRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSizeConstraintSets(input, options)
    return self:invokeOperation(input, {
        name = "ListSizeConstraintSets",
        input_schema = types.ListSizeConstraintSetsInput,
        output_schema = types.ListSizeConstraintSetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSqlInjectionMatchSets(input, options)
    return self:invokeOperation(input, {
        name = "ListSqlInjectionMatchSets",
        input_schema = types.ListSqlInjectionMatchSetsInput,
        output_schema = types.ListSqlInjectionMatchSetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSubscribedRuleGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListSubscribedRuleGroups",
        input_schema = types.ListSubscribedRuleGroupsInput,
        output_schema = types.ListSubscribedRuleGroupsOutput,
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
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWebACLs(input, options)
    return self:invokeOperation(input, {
        name = "ListWebACLs",
        input_schema = types.ListWebACLsInput,
        output_schema = types.ListWebACLsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listXssMatchSets(input, options)
    return self:invokeOperation(input, {
        name = "ListXssMatchSets",
        input_schema = types.ListXssMatchSetsInput,
        output_schema = types.ListXssMatchSetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutLoggingConfiguration",
        input_schema = types.PutLoggingConfigurationInput,
        output_schema = types.PutLoggingConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putPermissionPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutPermissionPolicy",
        input_schema = types.PutPermissionPolicyInput,
        output_schema = types.PutPermissionPolicyOutput,
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
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
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
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateByteMatchSet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateByteMatchSet",
        input_schema = types.UpdateByteMatchSetInput,
        output_schema = types.UpdateByteMatchSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGeoMatchSet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGeoMatchSet",
        input_schema = types.UpdateGeoMatchSetInput,
        output_schema = types.UpdateGeoMatchSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateIPSet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIPSet",
        input_schema = types.UpdateIPSetInput,
        output_schema = types.UpdateIPSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRateBasedRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRateBasedRule",
        input_schema = types.UpdateRateBasedRuleInput,
        output_schema = types.UpdateRateBasedRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRegexMatchSet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRegexMatchSet",
        input_schema = types.UpdateRegexMatchSetInput,
        output_schema = types.UpdateRegexMatchSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRegexPatternSet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRegexPatternSet",
        input_schema = types.UpdateRegexPatternSetInput,
        output_schema = types.UpdateRegexPatternSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRule",
        input_schema = types.UpdateRuleInput,
        output_schema = types.UpdateRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRuleGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRuleGroup",
        input_schema = types.UpdateRuleGroupInput,
        output_schema = types.UpdateRuleGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSizeConstraintSet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSizeConstraintSet",
        input_schema = types.UpdateSizeConstraintSetInput,
        output_schema = types.UpdateSizeConstraintSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSqlInjectionMatchSet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSqlInjectionMatchSet",
        input_schema = types.UpdateSqlInjectionMatchSetInput,
        output_schema = types.UpdateSqlInjectionMatchSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWebACL(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWebACL",
        input_schema = types.UpdateWebACLInput,
        output_schema = types.UpdateWebACLOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateXssMatchSet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateXssMatchSet",
        input_schema = types.UpdateXssMatchSetInput,
        output_schema = types.UpdateXssMatchSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
