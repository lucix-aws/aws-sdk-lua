local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("wafv2.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("wafv2.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSWAF_20190729"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "wafv2", signing_region = cfg.region } }
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
        input_schema = types.AssociateWebACLInput,
        output_schema = types.AssociateWebACLOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:checkCapacity(input, options)
    return self:invokeOperation(input, {
        name = "CheckCapacity",
        input_schema = types.CheckCapacityInput,
        output_schema = types.CheckCapacityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAPIKey(input, options)
    return self:invokeOperation(input, {
        name = "CreateAPIKey",
        input_schema = types.CreateAPIKeyInput,
        output_schema = types.CreateAPIKeyOutput,
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

function Client:deleteAPIKey(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAPIKey",
        input_schema = types.DeleteAPIKeyInput,
        output_schema = types.DeleteAPIKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFirewallManagerRuleGroups(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFirewallManagerRuleGroups",
        input_schema = types.DeleteFirewallManagerRuleGroupsInput,
        output_schema = types.DeleteFirewallManagerRuleGroupsOutput,
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

function Client:describeAllManagedProducts(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAllManagedProducts",
        input_schema = types.DescribeAllManagedProductsInput,
        output_schema = types.DescribeAllManagedProductsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeManagedProductsByVendor(input, options)
    return self:invokeOperation(input, {
        name = "DescribeManagedProductsByVendor",
        input_schema = types.DescribeManagedProductsByVendorInput,
        output_schema = types.DescribeManagedProductsByVendorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeManagedRuleGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeManagedRuleGroup",
        input_schema = types.DescribeManagedRuleGroupInput,
        output_schema = types.DescribeManagedRuleGroupOutput,
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
        input_schema = types.DisassociateWebACLInput,
        output_schema = types.DisassociateWebACLOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:generateMobileSdkReleaseUrl(input, options)
    return self:invokeOperation(input, {
        name = "GenerateMobileSdkReleaseUrl",
        input_schema = types.GenerateMobileSdkReleaseUrlInput,
        output_schema = types.GenerateMobileSdkReleaseUrlOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDecryptedAPIKey(input, options)
    return self:invokeOperation(input, {
        name = "GetDecryptedAPIKey",
        input_schema = types.GetDecryptedAPIKeyInput,
        output_schema = types.GetDecryptedAPIKeyOutput,
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

function Client:getManagedRuleSet(input, options)
    return self:invokeOperation(input, {
        name = "GetManagedRuleSet",
        input_schema = types.GetManagedRuleSetInput,
        output_schema = types.GetManagedRuleSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMobileSdkRelease(input, options)
    return self:invokeOperation(input, {
        name = "GetMobileSdkRelease",
        input_schema = types.GetMobileSdkReleaseInput,
        output_schema = types.GetMobileSdkReleaseOutput,
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

function Client:getRateBasedStatementManagedKeys(input, options)
    return self:invokeOperation(input, {
        name = "GetRateBasedStatementManagedKeys",
        input_schema = types.GetRateBasedStatementManagedKeysInput,
        output_schema = types.GetRateBasedStatementManagedKeysOutput,
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

function Client:getTopPathStatisticsByTraffic(input, options)
    return self:invokeOperation(input, {
        name = "GetTopPathStatisticsByTraffic",
        input_schema = types.GetTopPathStatisticsByTrafficInput,
        output_schema = types.GetTopPathStatisticsByTrafficOutput,
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

function Client:getWebACLForResource(input, options)
    return self:invokeOperation(input, {
        name = "GetWebACLForResource",
        input_schema = types.GetWebACLForResourceInput,
        output_schema = types.GetWebACLForResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAPIKeys(input, options)
    return self:invokeOperation(input, {
        name = "ListAPIKeys",
        input_schema = types.ListAPIKeysInput,
        output_schema = types.ListAPIKeysOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAvailableManagedRuleGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListAvailableManagedRuleGroups",
        input_schema = types.ListAvailableManagedRuleGroupsInput,
        output_schema = types.ListAvailableManagedRuleGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAvailableManagedRuleGroupVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListAvailableManagedRuleGroupVersions",
        input_schema = types.ListAvailableManagedRuleGroupVersionsInput,
        output_schema = types.ListAvailableManagedRuleGroupVersionsOutput,
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

function Client:listManagedRuleSets(input, options)
    return self:invokeOperation(input, {
        name = "ListManagedRuleSets",
        input_schema = types.ListManagedRuleSetsInput,
        output_schema = types.ListManagedRuleSetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMobileSdkReleases(input, options)
    return self:invokeOperation(input, {
        name = "ListMobileSdkReleases",
        input_schema = types.ListMobileSdkReleasesInput,
        output_schema = types.ListMobileSdkReleasesOutput,
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

function Client:listResourcesForWebACL(input, options)
    return self:invokeOperation(input, {
        name = "ListResourcesForWebACL",
        input_schema = types.ListResourcesForWebACLInput,
        output_schema = types.ListResourcesForWebACLOutput,
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

function Client:putManagedRuleSetVersions(input, options)
    return self:invokeOperation(input, {
        name = "PutManagedRuleSetVersions",
        input_schema = types.PutManagedRuleSetVersionsInput,
        output_schema = types.PutManagedRuleSetVersionsOutput,
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

function Client:updateManagedRuleSetVersionExpiryDate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateManagedRuleSetVersionExpiryDate",
        input_schema = types.UpdateManagedRuleSetVersionExpiryDateInput,
        output_schema = types.UpdateManagedRuleSetVersionExpiryDateOutput,
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

return M
