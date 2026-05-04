local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("route53globalresolver.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("route53globalresolver.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "EC2DNSGlobalResolverCustomerAPI"
    cfg.signing_name = "route53globalresolver"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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

function Client:associateHostedZone(input, options)
    return self:invokeOperation(input, {
        name = "AssociateHostedZone",
        input_schema = types.AssociateHostedZoneInput,
        output_schema = types.AssociateHostedZoneOutput,
        http_method = "POST",
        http_path = "/hosted-zone-associations/{hostedZoneId}",
    }, options)
end

function Client:batchCreateFirewallRule(input, options)
    return self:invokeOperation(input, {
        name = "BatchCreateFirewallRule",
        input_schema = types.BatchCreateFirewallRuleInput,
        output_schema = types.BatchCreateFirewallRuleOutput,
        http_method = "POST",
        http_path = "/firewall-rules/batch-create",
    }, options)
end

function Client:batchDeleteFirewallRule(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteFirewallRule",
        input_schema = types.BatchDeleteFirewallRuleInput,
        output_schema = types.BatchDeleteFirewallRuleOutput,
        http_method = "POST",
        http_path = "/firewall-rules/batch-delete",
    }, options)
end

function Client:batchUpdateFirewallRule(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateFirewallRule",
        input_schema = types.BatchUpdateFirewallRuleInput,
        output_schema = types.BatchUpdateFirewallRuleOutput,
        http_method = "POST",
        http_path = "/firewall-rules/batch-update",
    }, options)
end

function Client:createAccessSource(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccessSource",
        input_schema = types.CreateAccessSourceInput,
        output_schema = types.CreateAccessSourceOutput,
        http_method = "POST",
        http_path = "/access-sources",
    }, options)
end

function Client:createAccessToken(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccessToken",
        input_schema = types.CreateAccessTokenInput,
        output_schema = types.CreateAccessTokenOutput,
        http_method = "POST",
        http_path = "/tokens/{dnsViewId}",
    }, options)
end

function Client:createDNSView(input, options)
    return self:invokeOperation(input, {
        name = "CreateDNSView",
        input_schema = types.CreateDNSViewInput,
        output_schema = types.CreateDNSViewOutput,
        http_method = "POST",
        http_path = "/dns-views/{globalResolverId}",
    }, options)
end

function Client:createFirewallDomainList(input, options)
    return self:invokeOperation(input, {
        name = "CreateFirewallDomainList",
        input_schema = types.CreateFirewallDomainListInput,
        output_schema = types.CreateFirewallDomainListOutput,
        http_method = "POST",
        http_path = "/firewall-domain-lists/{globalResolverId}",
    }, options)
end

function Client:createFirewallRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateFirewallRule",
        input_schema = types.CreateFirewallRuleInput,
        output_schema = types.CreateFirewallRuleOutput,
        http_method = "POST",
        http_path = "/firewall-rules",
    }, options)
end

function Client:createGlobalResolver(input, options)
    return self:invokeOperation(input, {
        name = "CreateGlobalResolver",
        input_schema = types.CreateGlobalResolverInput,
        output_schema = types.CreateGlobalResolverOutput,
        http_method = "POST",
        http_path = "/global-resolver",
    }, options)
end

function Client:deleteAccessSource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessSource",
        input_schema = types.DeleteAccessSourceInput,
        output_schema = types.DeleteAccessSourceOutput,
        http_method = "DELETE",
        http_path = "/access-sources/{accessSourceId}",
    }, options)
end

function Client:deleteAccessToken(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessToken",
        input_schema = types.DeleteAccessTokenInput,
        output_schema = types.DeleteAccessTokenOutput,
        http_method = "DELETE",
        http_path = "/tokens/{accessTokenId}",
    }, options)
end

function Client:deleteDNSView(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDNSView",
        input_schema = types.DeleteDNSViewInput,
        output_schema = types.DeleteDNSViewOutput,
        http_method = "DELETE",
        http_path = "/dns-views/{dnsViewId}",
    }, options)
end

function Client:deleteFirewallDomainList(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFirewallDomainList",
        input_schema = types.DeleteFirewallDomainListInput,
        output_schema = types.DeleteFirewallDomainListOutput,
        http_method = "DELETE",
        http_path = "/firewall-domain-lists/{firewallDomainListId}",
    }, options)
end

function Client:deleteFirewallRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFirewallRule",
        input_schema = types.DeleteFirewallRuleInput,
        output_schema = types.DeleteFirewallRuleOutput,
        http_method = "DELETE",
        http_path = "/firewall-rules/{firewallRuleId}",
    }, options)
end

function Client:deleteGlobalResolver(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGlobalResolver",
        input_schema = types.DeleteGlobalResolverInput,
        output_schema = types.DeleteGlobalResolverOutput,
        http_method = "DELETE",
        http_path = "/global-resolver/{globalResolverId}",
    }, options)
end

function Client:disableDNSView(input, options)
    return self:invokeOperation(input, {
        name = "DisableDNSView",
        input_schema = types.DisableDNSViewInput,
        output_schema = types.DisableDNSViewOutput,
        http_method = "PATCH",
        http_path = "/dns-views/{dnsViewId}/disable",
    }, options)
end

function Client:disassociateHostedZone(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateHostedZone",
        input_schema = types.DisassociateHostedZoneInput,
        output_schema = types.DisassociateHostedZoneOutput,
        http_method = "DELETE",
        http_path = "/hosted-zone-associations/hosted-zone/{hostedZoneId}/resource-arn/{resourceArn+}",
    }, options)
end

function Client:enableDNSView(input, options)
    return self:invokeOperation(input, {
        name = "EnableDNSView",
        input_schema = types.EnableDNSViewInput,
        output_schema = types.EnableDNSViewOutput,
        http_method = "PATCH",
        http_path = "/dns-views/{dnsViewId}/enable",
    }, options)
end

function Client:getAccessSource(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessSource",
        input_schema = types.GetAccessSourceInput,
        output_schema = types.GetAccessSourceOutput,
        http_method = "GET",
        http_path = "/access-sources/{accessSourceId}",
    }, options)
end

function Client:getAccessToken(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessToken",
        input_schema = types.GetAccessTokenInput,
        output_schema = types.GetAccessTokenOutput,
        http_method = "GET",
        http_path = "/tokens/{accessTokenId}",
    }, options)
end

function Client:getDNSView(input, options)
    return self:invokeOperation(input, {
        name = "GetDNSView",
        input_schema = types.GetDNSViewInput,
        output_schema = types.GetDNSViewOutput,
        http_method = "GET",
        http_path = "/dns-views/{dnsViewId}",
    }, options)
end

function Client:getFirewallDomainList(input, options)
    return self:invokeOperation(input, {
        name = "GetFirewallDomainList",
        input_schema = types.GetFirewallDomainListInput,
        output_schema = types.GetFirewallDomainListOutput,
        http_method = "GET",
        http_path = "/firewall-domain-lists/{firewallDomainListId}",
    }, options)
end

function Client:getFirewallRule(input, options)
    return self:invokeOperation(input, {
        name = "GetFirewallRule",
        input_schema = types.GetFirewallRuleInput,
        output_schema = types.GetFirewallRuleOutput,
        http_method = "GET",
        http_path = "/firewall-rules/{firewallRuleId}",
    }, options)
end

function Client:getGlobalResolver(input, options)
    return self:invokeOperation(input, {
        name = "GetGlobalResolver",
        input_schema = types.GetGlobalResolverInput,
        output_schema = types.GetGlobalResolverOutput,
        http_method = "GET",
        http_path = "/global-resolver/{globalResolverId}",
    }, options)
end

function Client:getHostedZoneAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetHostedZoneAssociation",
        input_schema = types.GetHostedZoneAssociationInput,
        output_schema = types.GetHostedZoneAssociationOutput,
        http_method = "GET",
        http_path = "/hosted-zone-associations/{hostedZoneAssociationId}",
    }, options)
end

function Client:getManagedFirewallDomainList(input, options)
    return self:invokeOperation(input, {
        name = "GetManagedFirewallDomainList",
        input_schema = types.GetManagedFirewallDomainListInput,
        output_schema = types.GetManagedFirewallDomainListOutput,
        http_method = "GET",
        http_path = "/managed-firewall-domain-lists/{managedFirewallDomainListId}",
    }, options)
end

function Client:importFirewallDomains(input, options)
    return self:invokeOperation(input, {
        name = "ImportFirewallDomains",
        input_schema = types.ImportFirewallDomainsInput,
        output_schema = types.ImportFirewallDomainsOutput,
        http_method = "PATCH",
        http_path = "/firewall-domain-lists/{firewallDomainListId}/domains/s3_file_url",
    }, options)
end

function Client:listAccessSources(input, options)
    return self:invokeOperation(input, {
        name = "ListAccessSources",
        input_schema = types.ListAccessSourcesInput,
        output_schema = types.ListAccessSourcesOutput,
        http_method = "GET",
        http_path = "/access-sources",
    }, options)
end

function Client:listAccessTokens(input, options)
    return self:invokeOperation(input, {
        name = "ListAccessTokens",
        input_schema = types.ListAccessTokensInput,
        output_schema = types.ListAccessTokensOutput,
        http_method = "GET",
        http_path = "/tokens/dns-view/{dnsViewId}",
    }, options)
end

function Client:listDNSViews(input, options)
    return self:invokeOperation(input, {
        name = "ListDNSViews",
        input_schema = types.ListDNSViewsInput,
        output_schema = types.ListDNSViewsOutput,
        http_method = "GET",
        http_path = "/dns-views/resolver/{globalResolverId}",
    }, options)
end

function Client:listFirewallDomainLists(input, options)
    return self:invokeOperation(input, {
        name = "ListFirewallDomainLists",
        input_schema = types.ListFirewallDomainListsInput,
        output_schema = types.ListFirewallDomainListsOutput,
        http_method = "GET",
        http_path = "/firewall-domain-lists",
    }, options)
end

function Client:listFirewallDomains(input, options)
    return self:invokeOperation(input, {
        name = "ListFirewallDomains",
        input_schema = types.ListFirewallDomainsInput,
        output_schema = types.ListFirewallDomainsOutput,
        http_method = "GET",
        http_path = "/firewall-domain-lists/{firewallDomainListId}/domains",
    }, options)
end

function Client:listFirewallRules(input, options)
    return self:invokeOperation(input, {
        name = "ListFirewallRules",
        input_schema = types.ListFirewallRulesInput,
        output_schema = types.ListFirewallRulesOutput,
        http_method = "GET",
        http_path = "/firewall-rules",
    }, options)
end

function Client:listGlobalResolvers(input, options)
    return self:invokeOperation(input, {
        name = "ListGlobalResolvers",
        input_schema = types.ListGlobalResolversInput,
        output_schema = types.ListGlobalResolversOutput,
        http_method = "GET",
        http_path = "/global-resolver",
    }, options)
end

function Client:listHostedZoneAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListHostedZoneAssociations",
        input_schema = types.ListHostedZoneAssociationsInput,
        output_schema = types.ListHostedZoneAssociationsOutput,
        http_method = "GET",
        http_path = "/hosted-zone-associations/resource-arn/{resourceArn+}",
    }, options)
end

function Client:listManagedFirewallDomainLists(input, options)
    return self:invokeOperation(input, {
        name = "ListManagedFirewallDomainLists",
        input_schema = types.ListManagedFirewallDomainListsInput,
        output_schema = types.ListManagedFirewallDomainListsOutput,
        http_method = "GET",
        http_path = "/list-managed-firewall-domain-lists/{managedFirewallDomainListType}",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/get-all-tags",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tag-resource",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/untag-resource",
    }, options)
end

function Client:updateAccessSource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccessSource",
        input_schema = types.UpdateAccessSourceInput,
        output_schema = types.UpdateAccessSourceOutput,
        http_method = "PATCH",
        http_path = "/access-sources/{accessSourceId}",
    }, options)
end

function Client:updateAccessToken(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccessToken",
        input_schema = types.UpdateAccessTokenInput,
        output_schema = types.UpdateAccessTokenOutput,
        http_method = "PATCH",
        http_path = "/tokens/{accessTokenId}",
    }, options)
end

function Client:updateDNSView(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDNSView",
        input_schema = types.UpdateDNSViewInput,
        output_schema = types.UpdateDNSViewOutput,
        http_method = "PATCH",
        http_path = "/dns-views/{dnsViewId}",
    }, options)
end

function Client:updateFirewallDomains(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFirewallDomains",
        input_schema = types.UpdateFirewallDomainsInput,
        output_schema = types.UpdateFirewallDomainsOutput,
        http_method = "PATCH",
        http_path = "/firewall-domain-lists/{firewallDomainListId}/domains",
    }, options)
end

function Client:updateFirewallRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFirewallRule",
        input_schema = types.UpdateFirewallRuleInput,
        output_schema = types.UpdateFirewallRuleOutput,
        http_method = "PATCH",
        http_path = "/firewall-rules/{firewallRuleId}",
    }, options)
end

function Client:updateGlobalResolver(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGlobalResolver",
        input_schema = types.UpdateGlobalResolverInput,
        output_schema = types.UpdateGlobalResolverOutput,
        http_method = "PATCH",
        http_path = "/global-resolver/{globalResolverId}",
    }, options)
end

function Client:updateHostedZoneAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateHostedZoneAssociation",
        input_schema = types.UpdateHostedZoneAssociationInput,
        output_schema = types.UpdateHostedZoneAssociationOutput,
        http_method = "PATCH",
        http_path = "/hosted-zone-associations/{hostedZoneAssociationId}",
    }, options)
end

return M
