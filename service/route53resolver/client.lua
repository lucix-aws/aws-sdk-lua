local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("route53resolver.endpoint_rules")
local schemas = require("route53resolver.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Route53Resolver"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "route53resolver", signing_region = cfg.region } }
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

function Client:associateFirewallRuleGroup(input, options)
    return self:invokeOperation(input, {
        name = "AssociateFirewallRuleGroup",
        input_schema = schemas.AssociateFirewallRuleGroupInput,
        output_schema = schemas.AssociateFirewallRuleGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateResolverEndpointIpAddress(input, options)
    return self:invokeOperation(input, {
        name = "AssociateResolverEndpointIpAddress",
        input_schema = schemas.AssociateResolverEndpointIpAddressInput,
        output_schema = schemas.AssociateResolverEndpointIpAddressOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateResolverQueryLogConfig(input, options)
    return self:invokeOperation(input, {
        name = "AssociateResolverQueryLogConfig",
        input_schema = schemas.AssociateResolverQueryLogConfigInput,
        output_schema = schemas.AssociateResolverQueryLogConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateResolverRule(input, options)
    return self:invokeOperation(input, {
        name = "AssociateResolverRule",
        input_schema = schemas.AssociateResolverRuleInput,
        output_schema = schemas.AssociateResolverRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFirewallDomainList(input, options)
    return self:invokeOperation(input, {
        name = "CreateFirewallDomainList",
        input_schema = schemas.CreateFirewallDomainListInput,
        output_schema = schemas.CreateFirewallDomainListOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFirewallRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateFirewallRule",
        input_schema = schemas.CreateFirewallRuleInput,
        output_schema = schemas.CreateFirewallRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFirewallRuleGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateFirewallRuleGroup",
        input_schema = schemas.CreateFirewallRuleGroupInput,
        output_schema = schemas.CreateFirewallRuleGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createOutpostResolver(input, options)
    return self:invokeOperation(input, {
        name = "CreateOutpostResolver",
        input_schema = schemas.CreateOutpostResolverInput,
        output_schema = schemas.CreateOutpostResolverOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createResolverEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateResolverEndpoint",
        input_schema = schemas.CreateResolverEndpointInput,
        output_schema = schemas.CreateResolverEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createResolverQueryLogConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateResolverQueryLogConfig",
        input_schema = schemas.CreateResolverQueryLogConfigInput,
        output_schema = schemas.CreateResolverQueryLogConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createResolverRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateResolverRule",
        input_schema = schemas.CreateResolverRuleInput,
        output_schema = schemas.CreateResolverRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFirewallDomainList(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFirewallDomainList",
        input_schema = schemas.DeleteFirewallDomainListInput,
        output_schema = schemas.DeleteFirewallDomainListOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFirewallRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFirewallRule",
        input_schema = schemas.DeleteFirewallRuleInput,
        output_schema = schemas.DeleteFirewallRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFirewallRuleGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFirewallRuleGroup",
        input_schema = schemas.DeleteFirewallRuleGroupInput,
        output_schema = schemas.DeleteFirewallRuleGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteOutpostResolver(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOutpostResolver",
        input_schema = schemas.DeleteOutpostResolverInput,
        output_schema = schemas.DeleteOutpostResolverOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResolverEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResolverEndpoint",
        input_schema = schemas.DeleteResolverEndpointInput,
        output_schema = schemas.DeleteResolverEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResolverQueryLogConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResolverQueryLogConfig",
        input_schema = schemas.DeleteResolverQueryLogConfigInput,
        output_schema = schemas.DeleteResolverQueryLogConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResolverRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResolverRule",
        input_schema = schemas.DeleteResolverRuleInput,
        output_schema = schemas.DeleteResolverRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateFirewallRuleGroup(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateFirewallRuleGroup",
        input_schema = schemas.DisassociateFirewallRuleGroupInput,
        output_schema = schemas.DisassociateFirewallRuleGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateResolverEndpointIpAddress(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateResolverEndpointIpAddress",
        input_schema = schemas.DisassociateResolverEndpointIpAddressInput,
        output_schema = schemas.DisassociateResolverEndpointIpAddressOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateResolverQueryLogConfig(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateResolverQueryLogConfig",
        input_schema = schemas.DisassociateResolverQueryLogConfigInput,
        output_schema = schemas.DisassociateResolverQueryLogConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateResolverRule(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateResolverRule",
        input_schema = schemas.DisassociateResolverRuleInput,
        output_schema = schemas.DisassociateResolverRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFirewallConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetFirewallConfig",
        input_schema = schemas.GetFirewallConfigInput,
        output_schema = schemas.GetFirewallConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFirewallDomainList(input, options)
    return self:invokeOperation(input, {
        name = "GetFirewallDomainList",
        input_schema = schemas.GetFirewallDomainListInput,
        output_schema = schemas.GetFirewallDomainListOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFirewallRuleGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetFirewallRuleGroup",
        input_schema = schemas.GetFirewallRuleGroupInput,
        output_schema = schemas.GetFirewallRuleGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFirewallRuleGroupAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetFirewallRuleGroupAssociation",
        input_schema = schemas.GetFirewallRuleGroupAssociationInput,
        output_schema = schemas.GetFirewallRuleGroupAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFirewallRuleGroupPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetFirewallRuleGroupPolicy",
        input_schema = schemas.GetFirewallRuleGroupPolicyInput,
        output_schema = schemas.GetFirewallRuleGroupPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOutpostResolver(input, options)
    return self:invokeOperation(input, {
        name = "GetOutpostResolver",
        input_schema = schemas.GetOutpostResolverInput,
        output_schema = schemas.GetOutpostResolverOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResolverConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetResolverConfig",
        input_schema = schemas.GetResolverConfigInput,
        output_schema = schemas.GetResolverConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResolverDnssecConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetResolverDnssecConfig",
        input_schema = schemas.GetResolverDnssecConfigInput,
        output_schema = schemas.GetResolverDnssecConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResolverEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "GetResolverEndpoint",
        input_schema = schemas.GetResolverEndpointInput,
        output_schema = schemas.GetResolverEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResolverQueryLogConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetResolverQueryLogConfig",
        input_schema = schemas.GetResolverQueryLogConfigInput,
        output_schema = schemas.GetResolverQueryLogConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResolverQueryLogConfigAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetResolverQueryLogConfigAssociation",
        input_schema = schemas.GetResolverQueryLogConfigAssociationInput,
        output_schema = schemas.GetResolverQueryLogConfigAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResolverQueryLogConfigPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResolverQueryLogConfigPolicy",
        input_schema = schemas.GetResolverQueryLogConfigPolicyInput,
        output_schema = schemas.GetResolverQueryLogConfigPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResolverRule(input, options)
    return self:invokeOperation(input, {
        name = "GetResolverRule",
        input_schema = schemas.GetResolverRuleInput,
        output_schema = schemas.GetResolverRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResolverRuleAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetResolverRuleAssociation",
        input_schema = schemas.GetResolverRuleAssociationInput,
        output_schema = schemas.GetResolverRuleAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResolverRulePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResolverRulePolicy",
        input_schema = schemas.GetResolverRulePolicyInput,
        output_schema = schemas.GetResolverRulePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importFirewallDomains(input, options)
    return self:invokeOperation(input, {
        name = "ImportFirewallDomains",
        input_schema = schemas.ImportFirewallDomainsInput,
        output_schema = schemas.ImportFirewallDomainsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFirewallConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListFirewallConfigs",
        input_schema = schemas.ListFirewallConfigsInput,
        output_schema = schemas.ListFirewallConfigsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFirewallDomainLists(input, options)
    return self:invokeOperation(input, {
        name = "ListFirewallDomainLists",
        input_schema = schemas.ListFirewallDomainListsInput,
        output_schema = schemas.ListFirewallDomainListsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFirewallDomains(input, options)
    return self:invokeOperation(input, {
        name = "ListFirewallDomains",
        input_schema = schemas.ListFirewallDomainsInput,
        output_schema = schemas.ListFirewallDomainsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFirewallRuleGroupAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListFirewallRuleGroupAssociations",
        input_schema = schemas.ListFirewallRuleGroupAssociationsInput,
        output_schema = schemas.ListFirewallRuleGroupAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFirewallRuleGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListFirewallRuleGroups",
        input_schema = schemas.ListFirewallRuleGroupsInput,
        output_schema = schemas.ListFirewallRuleGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFirewallRules(input, options)
    return self:invokeOperation(input, {
        name = "ListFirewallRules",
        input_schema = schemas.ListFirewallRulesInput,
        output_schema = schemas.ListFirewallRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOutpostResolvers(input, options)
    return self:invokeOperation(input, {
        name = "ListOutpostResolvers",
        input_schema = schemas.ListOutpostResolversInput,
        output_schema = schemas.ListOutpostResolversOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResolverConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListResolverConfigs",
        input_schema = schemas.ListResolverConfigsInput,
        output_schema = schemas.ListResolverConfigsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResolverDnssecConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListResolverDnssecConfigs",
        input_schema = schemas.ListResolverDnssecConfigsInput,
        output_schema = schemas.ListResolverDnssecConfigsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResolverEndpointIpAddresses(input, options)
    return self:invokeOperation(input, {
        name = "ListResolverEndpointIpAddresses",
        input_schema = schemas.ListResolverEndpointIpAddressesInput,
        output_schema = schemas.ListResolverEndpointIpAddressesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResolverEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListResolverEndpoints",
        input_schema = schemas.ListResolverEndpointsInput,
        output_schema = schemas.ListResolverEndpointsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResolverQueryLogConfigAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListResolverQueryLogConfigAssociations",
        input_schema = schemas.ListResolverQueryLogConfigAssociationsInput,
        output_schema = schemas.ListResolverQueryLogConfigAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResolverQueryLogConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListResolverQueryLogConfigs",
        input_schema = schemas.ListResolverQueryLogConfigsInput,
        output_schema = schemas.ListResolverQueryLogConfigsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResolverRuleAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListResolverRuleAssociations",
        input_schema = schemas.ListResolverRuleAssociationsInput,
        output_schema = schemas.ListResolverRuleAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResolverRules(input, options)
    return self:invokeOperation(input, {
        name = "ListResolverRules",
        input_schema = schemas.ListResolverRulesInput,
        output_schema = schemas.ListResolverRulesOutput,
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

function Client:putFirewallRuleGroupPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutFirewallRuleGroupPolicy",
        input_schema = schemas.PutFirewallRuleGroupPolicyInput,
        output_schema = schemas.PutFirewallRuleGroupPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putResolverQueryLogConfigPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResolverQueryLogConfigPolicy",
        input_schema = schemas.PutResolverQueryLogConfigPolicyInput,
        output_schema = schemas.PutResolverQueryLogConfigPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putResolverRulePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResolverRulePolicy",
        input_schema = schemas.PutResolverRulePolicyInput,
        output_schema = schemas.PutResolverRulePolicyOutput,
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

function Client:updateFirewallConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFirewallConfig",
        input_schema = schemas.UpdateFirewallConfigInput,
        output_schema = schemas.UpdateFirewallConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFirewallDomains(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFirewallDomains",
        input_schema = schemas.UpdateFirewallDomainsInput,
        output_schema = schemas.UpdateFirewallDomainsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFirewallRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFirewallRule",
        input_schema = schemas.UpdateFirewallRuleInput,
        output_schema = schemas.UpdateFirewallRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFirewallRuleGroupAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFirewallRuleGroupAssociation",
        input_schema = schemas.UpdateFirewallRuleGroupAssociationInput,
        output_schema = schemas.UpdateFirewallRuleGroupAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateOutpostResolver(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOutpostResolver",
        input_schema = schemas.UpdateOutpostResolverInput,
        output_schema = schemas.UpdateOutpostResolverOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateResolverConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResolverConfig",
        input_schema = schemas.UpdateResolverConfigInput,
        output_schema = schemas.UpdateResolverConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateResolverDnssecConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResolverDnssecConfig",
        input_schema = schemas.UpdateResolverDnssecConfigInput,
        output_schema = schemas.UpdateResolverDnssecConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateResolverEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResolverEndpoint",
        input_schema = schemas.UpdateResolverEndpointInput,
        output_schema = schemas.UpdateResolverEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateResolverRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResolverRule",
        input_schema = schemas.UpdateResolverRuleInput,
        output_schema = schemas.UpdateResolverRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
