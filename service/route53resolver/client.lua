local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("route53resolver.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("route53resolver.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Route53Resolver"
    cfg.signing_name = "route53resolver"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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

function Client:associateFirewallRuleGroup(input, options)
    return self:invokeOperation(input, {
        name = "AssociateFirewallRuleGroup",
        input_schema = types.AssociateFirewallRuleGroupInput,
        output_schema = types.AssociateFirewallRuleGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:associateResolverEndpointIpAddress(input, options)
    return self:invokeOperation(input, {
        name = "AssociateResolverEndpointIpAddress",
        input_schema = types.AssociateResolverEndpointIpAddressInput,
        output_schema = types.AssociateResolverEndpointIpAddressOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:associateResolverQueryLogConfig(input, options)
    return self:invokeOperation(input, {
        name = "AssociateResolverQueryLogConfig",
        input_schema = types.AssociateResolverQueryLogConfigInput,
        output_schema = types.AssociateResolverQueryLogConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:associateResolverRule(input, options)
    return self:invokeOperation(input, {
        name = "AssociateResolverRule",
        input_schema = types.AssociateResolverRuleInput,
        output_schema = types.AssociateResolverRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createFirewallDomainList(input, options)
    return self:invokeOperation(input, {
        name = "CreateFirewallDomainList",
        input_schema = types.CreateFirewallDomainListInput,
        output_schema = types.CreateFirewallDomainListOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createFirewallRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateFirewallRule",
        input_schema = types.CreateFirewallRuleInput,
        output_schema = types.CreateFirewallRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createFirewallRuleGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateFirewallRuleGroup",
        input_schema = types.CreateFirewallRuleGroupInput,
        output_schema = types.CreateFirewallRuleGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createOutpostResolver(input, options)
    return self:invokeOperation(input, {
        name = "CreateOutpostResolver",
        input_schema = types.CreateOutpostResolverInput,
        output_schema = types.CreateOutpostResolverOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createResolverEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateResolverEndpoint",
        input_schema = types.CreateResolverEndpointInput,
        output_schema = types.CreateResolverEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createResolverQueryLogConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateResolverQueryLogConfig",
        input_schema = types.CreateResolverQueryLogConfigInput,
        output_schema = types.CreateResolverQueryLogConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createResolverRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateResolverRule",
        input_schema = types.CreateResolverRuleInput,
        output_schema = types.CreateResolverRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteFirewallDomainList(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFirewallDomainList",
        input_schema = types.DeleteFirewallDomainListInput,
        output_schema = types.DeleteFirewallDomainListOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteFirewallRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFirewallRule",
        input_schema = types.DeleteFirewallRuleInput,
        output_schema = types.DeleteFirewallRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteFirewallRuleGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFirewallRuleGroup",
        input_schema = types.DeleteFirewallRuleGroupInput,
        output_schema = types.DeleteFirewallRuleGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteOutpostResolver(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOutpostResolver",
        input_schema = types.DeleteOutpostResolverInput,
        output_schema = types.DeleteOutpostResolverOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteResolverEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResolverEndpoint",
        input_schema = types.DeleteResolverEndpointInput,
        output_schema = types.DeleteResolverEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteResolverQueryLogConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResolverQueryLogConfig",
        input_schema = types.DeleteResolverQueryLogConfigInput,
        output_schema = types.DeleteResolverQueryLogConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteResolverRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResolverRule",
        input_schema = types.DeleteResolverRuleInput,
        output_schema = types.DeleteResolverRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateFirewallRuleGroup(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateFirewallRuleGroup",
        input_schema = types.DisassociateFirewallRuleGroupInput,
        output_schema = types.DisassociateFirewallRuleGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateResolverEndpointIpAddress(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateResolverEndpointIpAddress",
        input_schema = types.DisassociateResolverEndpointIpAddressInput,
        output_schema = types.DisassociateResolverEndpointIpAddressOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateResolverQueryLogConfig(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateResolverQueryLogConfig",
        input_schema = types.DisassociateResolverQueryLogConfigInput,
        output_schema = types.DisassociateResolverQueryLogConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateResolverRule(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateResolverRule",
        input_schema = types.DisassociateResolverRuleInput,
        output_schema = types.DisassociateResolverRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getFirewallConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetFirewallConfig",
        input_schema = types.GetFirewallConfigInput,
        output_schema = types.GetFirewallConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getFirewallDomainList(input, options)
    return self:invokeOperation(input, {
        name = "GetFirewallDomainList",
        input_schema = types.GetFirewallDomainListInput,
        output_schema = types.GetFirewallDomainListOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getFirewallRuleGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetFirewallRuleGroup",
        input_schema = types.GetFirewallRuleGroupInput,
        output_schema = types.GetFirewallRuleGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getFirewallRuleGroupAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetFirewallRuleGroupAssociation",
        input_schema = types.GetFirewallRuleGroupAssociationInput,
        output_schema = types.GetFirewallRuleGroupAssociationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getFirewallRuleGroupPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetFirewallRuleGroupPolicy",
        input_schema = types.GetFirewallRuleGroupPolicyInput,
        output_schema = types.GetFirewallRuleGroupPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getOutpostResolver(input, options)
    return self:invokeOperation(input, {
        name = "GetOutpostResolver",
        input_schema = types.GetOutpostResolverInput,
        output_schema = types.GetOutpostResolverOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getResolverConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetResolverConfig",
        input_schema = types.GetResolverConfigInput,
        output_schema = types.GetResolverConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getResolverDnssecConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetResolverDnssecConfig",
        input_schema = types.GetResolverDnssecConfigInput,
        output_schema = types.GetResolverDnssecConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getResolverEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "GetResolverEndpoint",
        input_schema = types.GetResolverEndpointInput,
        output_schema = types.GetResolverEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getResolverQueryLogConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetResolverQueryLogConfig",
        input_schema = types.GetResolverQueryLogConfigInput,
        output_schema = types.GetResolverQueryLogConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getResolverQueryLogConfigAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetResolverQueryLogConfigAssociation",
        input_schema = types.GetResolverQueryLogConfigAssociationInput,
        output_schema = types.GetResolverQueryLogConfigAssociationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getResolverQueryLogConfigPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResolverQueryLogConfigPolicy",
        input_schema = types.GetResolverQueryLogConfigPolicyInput,
        output_schema = types.GetResolverQueryLogConfigPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getResolverRule(input, options)
    return self:invokeOperation(input, {
        name = "GetResolverRule",
        input_schema = types.GetResolverRuleInput,
        output_schema = types.GetResolverRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getResolverRuleAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetResolverRuleAssociation",
        input_schema = types.GetResolverRuleAssociationInput,
        output_schema = types.GetResolverRuleAssociationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getResolverRulePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResolverRulePolicy",
        input_schema = types.GetResolverRulePolicyInput,
        output_schema = types.GetResolverRulePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:importFirewallDomains(input, options)
    return self:invokeOperation(input, {
        name = "ImportFirewallDomains",
        input_schema = types.ImportFirewallDomainsInput,
        output_schema = types.ImportFirewallDomainsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listFirewallConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListFirewallConfigs",
        input_schema = types.ListFirewallConfigsInput,
        output_schema = types.ListFirewallConfigsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listFirewallDomainLists(input, options)
    return self:invokeOperation(input, {
        name = "ListFirewallDomainLists",
        input_schema = types.ListFirewallDomainListsInput,
        output_schema = types.ListFirewallDomainListsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listFirewallDomains(input, options)
    return self:invokeOperation(input, {
        name = "ListFirewallDomains",
        input_schema = types.ListFirewallDomainsInput,
        output_schema = types.ListFirewallDomainsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listFirewallRuleGroupAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListFirewallRuleGroupAssociations",
        input_schema = types.ListFirewallRuleGroupAssociationsInput,
        output_schema = types.ListFirewallRuleGroupAssociationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listFirewallRuleGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListFirewallRuleGroups",
        input_schema = types.ListFirewallRuleGroupsInput,
        output_schema = types.ListFirewallRuleGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listFirewallRules(input, options)
    return self:invokeOperation(input, {
        name = "ListFirewallRules",
        input_schema = types.ListFirewallRulesInput,
        output_schema = types.ListFirewallRulesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listOutpostResolvers(input, options)
    return self:invokeOperation(input, {
        name = "ListOutpostResolvers",
        input_schema = types.ListOutpostResolversInput,
        output_schema = types.ListOutpostResolversOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listResolverConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListResolverConfigs",
        input_schema = types.ListResolverConfigsInput,
        output_schema = types.ListResolverConfigsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listResolverDnssecConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListResolverDnssecConfigs",
        input_schema = types.ListResolverDnssecConfigsInput,
        output_schema = types.ListResolverDnssecConfigsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listResolverEndpointIpAddresses(input, options)
    return self:invokeOperation(input, {
        name = "ListResolverEndpointIpAddresses",
        input_schema = types.ListResolverEndpointIpAddressesInput,
        output_schema = types.ListResolverEndpointIpAddressesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listResolverEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListResolverEndpoints",
        input_schema = types.ListResolverEndpointsInput,
        output_schema = types.ListResolverEndpointsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listResolverQueryLogConfigAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListResolverQueryLogConfigAssociations",
        input_schema = types.ListResolverQueryLogConfigAssociationsInput,
        output_schema = types.ListResolverQueryLogConfigAssociationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listResolverQueryLogConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListResolverQueryLogConfigs",
        input_schema = types.ListResolverQueryLogConfigsInput,
        output_schema = types.ListResolverQueryLogConfigsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listResolverRuleAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListResolverRuleAssociations",
        input_schema = types.ListResolverRuleAssociationsInput,
        output_schema = types.ListResolverRuleAssociationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listResolverRules(input, options)
    return self:invokeOperation(input, {
        name = "ListResolverRules",
        input_schema = types.ListResolverRulesInput,
        output_schema = types.ListResolverRulesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putFirewallRuleGroupPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutFirewallRuleGroupPolicy",
        input_schema = types.PutFirewallRuleGroupPolicyInput,
        output_schema = types.PutFirewallRuleGroupPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putResolverQueryLogConfigPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResolverQueryLogConfigPolicy",
        input_schema = types.PutResolverQueryLogConfigPolicyInput,
        output_schema = types.PutResolverQueryLogConfigPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putResolverRulePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResolverRulePolicy",
        input_schema = types.PutResolverRulePolicyInput,
        output_schema = types.PutResolverRulePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateFirewallConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFirewallConfig",
        input_schema = types.UpdateFirewallConfigInput,
        output_schema = types.UpdateFirewallConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateFirewallDomains(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFirewallDomains",
        input_schema = types.UpdateFirewallDomainsInput,
        output_schema = types.UpdateFirewallDomainsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateFirewallRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFirewallRule",
        input_schema = types.UpdateFirewallRuleInput,
        output_schema = types.UpdateFirewallRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateFirewallRuleGroupAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFirewallRuleGroupAssociation",
        input_schema = types.UpdateFirewallRuleGroupAssociationInput,
        output_schema = types.UpdateFirewallRuleGroupAssociationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateOutpostResolver(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOutpostResolver",
        input_schema = types.UpdateOutpostResolverInput,
        output_schema = types.UpdateOutpostResolverOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateResolverConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResolverConfig",
        input_schema = types.UpdateResolverConfigInput,
        output_schema = types.UpdateResolverConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateResolverDnssecConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResolverDnssecConfig",
        input_schema = types.UpdateResolverDnssecConfigInput,
        output_schema = types.UpdateResolverDnssecConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateResolverEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResolverEndpoint",
        input_schema = types.UpdateResolverEndpointInput,
        output_schema = types.UpdateResolverEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateResolverRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResolverRule",
        input_schema = types.UpdateResolverRuleInput,
        output_schema = types.UpdateResolverRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
