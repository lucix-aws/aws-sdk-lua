local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("wafregional.endpoint_rules")
local schemas = require("wafregional.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSWAF_Regional_20161128"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "waf-regional", signing_region = cfg.region } }
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

function Client:associateWebACL(input, options)
    return self:invokeOperation(input, {
        name = "AssociateWebACL",
        input_schema = schemas.AssociateWebACLInput,
        output_schema = schemas.AssociateWebACLOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createByteMatchSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateByteMatchSet",
        input_schema = schemas.CreateByteMatchSetInput,
        output_schema = schemas.CreateByteMatchSetOutput,
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
        input_schema = schemas.CreateGeoMatchSetInput,
        output_schema = schemas.CreateGeoMatchSetOutput,
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
        input_schema = schemas.CreateIPSetInput,
        output_schema = schemas.CreateIPSetOutput,
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
        input_schema = schemas.CreateRateBasedRuleInput,
        output_schema = schemas.CreateRateBasedRuleOutput,
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
        input_schema = schemas.CreateRegexMatchSetInput,
        output_schema = schemas.CreateRegexMatchSetOutput,
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
        input_schema = schemas.CreateRegexPatternSetInput,
        output_schema = schemas.CreateRegexPatternSetOutput,
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
        input_schema = schemas.CreateRuleInput,
        output_schema = schemas.CreateRuleOutput,
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
        input_schema = schemas.CreateRuleGroupInput,
        output_schema = schemas.CreateRuleGroupOutput,
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
        input_schema = schemas.CreateSizeConstraintSetInput,
        output_schema = schemas.CreateSizeConstraintSetOutput,
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
        input_schema = schemas.CreateSqlInjectionMatchSetInput,
        output_schema = schemas.CreateSqlInjectionMatchSetOutput,
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
        input_schema = schemas.CreateWebACLInput,
        output_schema = schemas.CreateWebACLOutput,
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
        input_schema = schemas.CreateWebACLMigrationStackInput,
        output_schema = schemas.CreateWebACLMigrationStackOutput,
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
        input_schema = schemas.CreateXssMatchSetInput,
        output_schema = schemas.CreateXssMatchSetOutput,
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
        input_schema = schemas.DeleteByteMatchSetInput,
        output_schema = schemas.DeleteByteMatchSetOutput,
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
        input_schema = schemas.DeleteGeoMatchSetInput,
        output_schema = schemas.DeleteGeoMatchSetOutput,
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
        input_schema = schemas.DeleteIPSetInput,
        output_schema = schemas.DeleteIPSetOutput,
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
        input_schema = schemas.DeleteLoggingConfigurationInput,
        output_schema = schemas.DeleteLoggingConfigurationOutput,
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
        input_schema = schemas.DeletePermissionPolicyInput,
        output_schema = schemas.DeletePermissionPolicyOutput,
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
        input_schema = schemas.DeleteRateBasedRuleInput,
        output_schema = schemas.DeleteRateBasedRuleOutput,
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
        input_schema = schemas.DeleteRegexMatchSetInput,
        output_schema = schemas.DeleteRegexMatchSetOutput,
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
        input_schema = schemas.DeleteRegexPatternSetInput,
        output_schema = schemas.DeleteRegexPatternSetOutput,
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
        input_schema = schemas.DeleteRuleInput,
        output_schema = schemas.DeleteRuleOutput,
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
        input_schema = schemas.DeleteRuleGroupInput,
        output_schema = schemas.DeleteRuleGroupOutput,
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
        input_schema = schemas.DeleteSizeConstraintSetInput,
        output_schema = schemas.DeleteSizeConstraintSetOutput,
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
        input_schema = schemas.DeleteSqlInjectionMatchSetInput,
        output_schema = schemas.DeleteSqlInjectionMatchSetOutput,
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
        input_schema = schemas.DeleteWebACLInput,
        output_schema = schemas.DeleteWebACLOutput,
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
        input_schema = schemas.DeleteXssMatchSetInput,
        output_schema = schemas.DeleteXssMatchSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateWebACL(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateWebACL",
        input_schema = schemas.DisassociateWebACLInput,
        output_schema = schemas.DisassociateWebACLOutput,
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
        input_schema = schemas.GetByteMatchSetInput,
        output_schema = schemas.GetByteMatchSetOutput,
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
        input_schema = schemas.GetChangeTokenInput,
        output_schema = schemas.GetChangeTokenOutput,
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
        input_schema = schemas.GetChangeTokenStatusInput,
        output_schema = schemas.GetChangeTokenStatusOutput,
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
        input_schema = schemas.GetGeoMatchSetInput,
        output_schema = schemas.GetGeoMatchSetOutput,
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
        input_schema = schemas.GetIPSetInput,
        output_schema = schemas.GetIPSetOutput,
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
        input_schema = schemas.GetLoggingConfigurationInput,
        output_schema = schemas.GetLoggingConfigurationOutput,
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
        input_schema = schemas.GetPermissionPolicyInput,
        output_schema = schemas.GetPermissionPolicyOutput,
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
        input_schema = schemas.GetRateBasedRuleInput,
        output_schema = schemas.GetRateBasedRuleOutput,
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
        input_schema = schemas.GetRateBasedRuleManagedKeysInput,
        output_schema = schemas.GetRateBasedRuleManagedKeysOutput,
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
        input_schema = schemas.GetRegexMatchSetInput,
        output_schema = schemas.GetRegexMatchSetOutput,
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
        input_schema = schemas.GetRegexPatternSetInput,
        output_schema = schemas.GetRegexPatternSetOutput,
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
        input_schema = schemas.GetRuleInput,
        output_schema = schemas.GetRuleOutput,
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
        input_schema = schemas.GetRuleGroupInput,
        output_schema = schemas.GetRuleGroupOutput,
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
        input_schema = schemas.GetSampledRequestsInput,
        output_schema = schemas.GetSampledRequestsOutput,
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
        input_schema = schemas.GetSizeConstraintSetInput,
        output_schema = schemas.GetSizeConstraintSetOutput,
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
        input_schema = schemas.GetSqlInjectionMatchSetInput,
        output_schema = schemas.GetSqlInjectionMatchSetOutput,
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
        input_schema = schemas.GetWebACLInput,
        output_schema = schemas.GetWebACLOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWebACLForResource(input, options)
    return self:invokeOperation(input, {
        name = "GetWebACLForResource",
        input_schema = schemas.GetWebACLForResourceInput,
        output_schema = schemas.GetWebACLForResourceOutput,
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
        input_schema = schemas.GetXssMatchSetInput,
        output_schema = schemas.GetXssMatchSetOutput,
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
        input_schema = schemas.ListActivatedRulesInRuleGroupInput,
        output_schema = schemas.ListActivatedRulesInRuleGroupOutput,
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
        input_schema = schemas.ListByteMatchSetsInput,
        output_schema = schemas.ListByteMatchSetsOutput,
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
        input_schema = schemas.ListGeoMatchSetsInput,
        output_schema = schemas.ListGeoMatchSetsOutput,
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
        input_schema = schemas.ListIPSetsInput,
        output_schema = schemas.ListIPSetsOutput,
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
        input_schema = schemas.ListLoggingConfigurationsInput,
        output_schema = schemas.ListLoggingConfigurationsOutput,
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
        input_schema = schemas.ListRateBasedRulesInput,
        output_schema = schemas.ListRateBasedRulesOutput,
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
        input_schema = schemas.ListRegexMatchSetsInput,
        output_schema = schemas.ListRegexMatchSetsOutput,
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
        input_schema = schemas.ListRegexPatternSetsInput,
        output_schema = schemas.ListRegexPatternSetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResourcesForWebACL(input, options)
    return self:invokeOperation(input, {
        name = "ListResourcesForWebACL",
        input_schema = schemas.ListResourcesForWebACLInput,
        output_schema = schemas.ListResourcesForWebACLOutput,
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
        input_schema = schemas.ListRuleGroupsInput,
        output_schema = schemas.ListRuleGroupsOutput,
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
        input_schema = schemas.ListRulesInput,
        output_schema = schemas.ListRulesOutput,
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
        input_schema = schemas.ListSizeConstraintSetsInput,
        output_schema = schemas.ListSizeConstraintSetsOutput,
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
        input_schema = schemas.ListSqlInjectionMatchSetsInput,
        output_schema = schemas.ListSqlInjectionMatchSetsOutput,
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
        input_schema = schemas.ListSubscribedRuleGroupsInput,
        output_schema = schemas.ListSubscribedRuleGroupsOutput,
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
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
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
        input_schema = schemas.ListWebACLsInput,
        output_schema = schemas.ListWebACLsOutput,
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
        input_schema = schemas.ListXssMatchSetsInput,
        output_schema = schemas.ListXssMatchSetsOutput,
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
        input_schema = schemas.PutLoggingConfigurationInput,
        output_schema = schemas.PutLoggingConfigurationOutput,
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
        input_schema = schemas.PutPermissionPolicyInput,
        output_schema = schemas.PutPermissionPolicyOutput,
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
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
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
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
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
        input_schema = schemas.UpdateByteMatchSetInput,
        output_schema = schemas.UpdateByteMatchSetOutput,
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
        input_schema = schemas.UpdateGeoMatchSetInput,
        output_schema = schemas.UpdateGeoMatchSetOutput,
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
        input_schema = schemas.UpdateIPSetInput,
        output_schema = schemas.UpdateIPSetOutput,
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
        input_schema = schemas.UpdateRateBasedRuleInput,
        output_schema = schemas.UpdateRateBasedRuleOutput,
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
        input_schema = schemas.UpdateRegexMatchSetInput,
        output_schema = schemas.UpdateRegexMatchSetOutput,
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
        input_schema = schemas.UpdateRegexPatternSetInput,
        output_schema = schemas.UpdateRegexPatternSetOutput,
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
        input_schema = schemas.UpdateRuleInput,
        output_schema = schemas.UpdateRuleOutput,
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
        input_schema = schemas.UpdateRuleGroupInput,
        output_schema = schemas.UpdateRuleGroupOutput,
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
        input_schema = schemas.UpdateSizeConstraintSetInput,
        output_schema = schemas.UpdateSizeConstraintSetOutput,
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
        input_schema = schemas.UpdateSqlInjectionMatchSetInput,
        output_schema = schemas.UpdateSqlInjectionMatchSetOutput,
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
        input_schema = schemas.UpdateWebACLInput,
        output_schema = schemas.UpdateWebACLOutput,
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
        input_schema = schemas.UpdateXssMatchSetInput,
        output_schema = schemas.UpdateXssMatchSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
