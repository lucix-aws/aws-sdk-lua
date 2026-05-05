local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("route53globalresolver.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("route53globalresolver.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "EC2DNSGlobalResolverCustomerAPI"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "route53globalresolver", signing_region = cfg.region } }
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

function Client:associateHostedZone(input, options)
    return self:invokeOperation(input, {
        name = "AssociateHostedZone",
        input_schema = schemas.AssociateHostedZoneInput,
        output_schema = schemas.AssociateHostedZoneOutput,
        http_method = "POST",
        http_path = "/hosted-zone-associations/{hostedZoneId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchCreateFirewallRule(input, options)
    return self:invokeOperation(input, {
        name = "BatchCreateFirewallRule",
        input_schema = schemas.BatchCreateFirewallRuleInput,
        output_schema = schemas.BatchCreateFirewallRuleOutput,
        http_method = "POST",
        http_path = "/firewall-rules/batch-create",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDeleteFirewallRule(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteFirewallRule",
        input_schema = schemas.BatchDeleteFirewallRuleInput,
        output_schema = schemas.BatchDeleteFirewallRuleOutput,
        http_method = "POST",
        http_path = "/firewall-rules/batch-delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchUpdateFirewallRule(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateFirewallRule",
        input_schema = schemas.BatchUpdateFirewallRuleInput,
        output_schema = schemas.BatchUpdateFirewallRuleOutput,
        http_method = "POST",
        http_path = "/firewall-rules/batch-update",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAccessSource(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccessSource",
        input_schema = schemas.CreateAccessSourceInput,
        output_schema = schemas.CreateAccessSourceOutput,
        http_method = "POST",
        http_path = "/access-sources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAccessToken(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccessToken",
        input_schema = schemas.CreateAccessTokenInput,
        output_schema = schemas.CreateAccessTokenOutput,
        http_method = "POST",
        http_path = "/tokens/{dnsViewId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDNSView(input, options)
    return self:invokeOperation(input, {
        name = "CreateDNSView",
        input_schema = schemas.CreateDNSViewInput,
        output_schema = schemas.CreateDNSViewOutput,
        http_method = "POST",
        http_path = "/dns-views/{globalResolverId}",
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
        http_path = "/firewall-domain-lists/{globalResolverId}",
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
        http_path = "/firewall-rules",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGlobalResolver(input, options)
    return self:invokeOperation(input, {
        name = "CreateGlobalResolver",
        input_schema = schemas.CreateGlobalResolverInput,
        output_schema = schemas.CreateGlobalResolverOutput,
        http_method = "POST",
        http_path = "/global-resolver",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAccessSource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessSource",
        input_schema = schemas.DeleteAccessSourceInput,
        output_schema = schemas.DeleteAccessSourceOutput,
        http_method = "DELETE",
        http_path = "/access-sources/{accessSourceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAccessToken(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessToken",
        input_schema = schemas.DeleteAccessTokenInput,
        output_schema = schemas.DeleteAccessTokenOutput,
        http_method = "DELETE",
        http_path = "/tokens/{accessTokenId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDNSView(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDNSView",
        input_schema = schemas.DeleteDNSViewInput,
        output_schema = schemas.DeleteDNSViewOutput,
        http_method = "DELETE",
        http_path = "/dns-views/{dnsViewId}",
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
        http_method = "DELETE",
        http_path = "/firewall-domain-lists/{firewallDomainListId}",
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
        http_method = "DELETE",
        http_path = "/firewall-rules/{firewallRuleId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGlobalResolver(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGlobalResolver",
        input_schema = schemas.DeleteGlobalResolverInput,
        output_schema = schemas.DeleteGlobalResolverOutput,
        http_method = "DELETE",
        http_path = "/global-resolver/{globalResolverId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableDNSView(input, options)
    return self:invokeOperation(input, {
        name = "DisableDNSView",
        input_schema = schemas.DisableDNSViewInput,
        output_schema = schemas.DisableDNSViewOutput,
        http_method = "PATCH",
        http_path = "/dns-views/{dnsViewId}/disable",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateHostedZone(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateHostedZone",
        input_schema = schemas.DisassociateHostedZoneInput,
        output_schema = schemas.DisassociateHostedZoneOutput,
        http_method = "DELETE",
        http_path = "/hosted-zone-associations/hosted-zone/{hostedZoneId}/resource-arn/{resourceArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableDNSView(input, options)
    return self:invokeOperation(input, {
        name = "EnableDNSView",
        input_schema = schemas.EnableDNSViewInput,
        output_schema = schemas.EnableDNSViewOutput,
        http_method = "PATCH",
        http_path = "/dns-views/{dnsViewId}/enable",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccessSource(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessSource",
        input_schema = schemas.GetAccessSourceInput,
        output_schema = schemas.GetAccessSourceOutput,
        http_method = "GET",
        http_path = "/access-sources/{accessSourceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccessToken(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessToken",
        input_schema = schemas.GetAccessTokenInput,
        output_schema = schemas.GetAccessTokenOutput,
        http_method = "GET",
        http_path = "/tokens/{accessTokenId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDNSView(input, options)
    return self:invokeOperation(input, {
        name = "GetDNSView",
        input_schema = schemas.GetDNSViewInput,
        output_schema = schemas.GetDNSViewOutput,
        http_method = "GET",
        http_path = "/dns-views/{dnsViewId}",
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
        http_method = "GET",
        http_path = "/firewall-domain-lists/{firewallDomainListId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFirewallRule(input, options)
    return self:invokeOperation(input, {
        name = "GetFirewallRule",
        input_schema = schemas.GetFirewallRuleInput,
        output_schema = schemas.GetFirewallRuleOutput,
        http_method = "GET",
        http_path = "/firewall-rules/{firewallRuleId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGlobalResolver(input, options)
    return self:invokeOperation(input, {
        name = "GetGlobalResolver",
        input_schema = schemas.GetGlobalResolverInput,
        output_schema = schemas.GetGlobalResolverOutput,
        http_method = "GET",
        http_path = "/global-resolver/{globalResolverId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getHostedZoneAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetHostedZoneAssociation",
        input_schema = schemas.GetHostedZoneAssociationInput,
        output_schema = schemas.GetHostedZoneAssociationOutput,
        http_method = "GET",
        http_path = "/hosted-zone-associations/{hostedZoneAssociationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getManagedFirewallDomainList(input, options)
    return self:invokeOperation(input, {
        name = "GetManagedFirewallDomainList",
        input_schema = schemas.GetManagedFirewallDomainListInput,
        output_schema = schemas.GetManagedFirewallDomainListOutput,
        http_method = "GET",
        http_path = "/managed-firewall-domain-lists/{managedFirewallDomainListId}",
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
        http_method = "PATCH",
        http_path = "/firewall-domain-lists/{firewallDomainListId}/domains/s3_file_url",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccessSources(input, options)
    return self:invokeOperation(input, {
        name = "ListAccessSources",
        input_schema = schemas.ListAccessSourcesInput,
        output_schema = schemas.ListAccessSourcesOutput,
        http_method = "GET",
        http_path = "/access-sources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccessTokens(input, options)
    return self:invokeOperation(input, {
        name = "ListAccessTokens",
        input_schema = schemas.ListAccessTokensInput,
        output_schema = schemas.ListAccessTokensOutput,
        http_method = "GET",
        http_path = "/tokens/dns-view/{dnsViewId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDNSViews(input, options)
    return self:invokeOperation(input, {
        name = "ListDNSViews",
        input_schema = schemas.ListDNSViewsInput,
        output_schema = schemas.ListDNSViewsOutput,
        http_method = "GET",
        http_path = "/dns-views/resolver/{globalResolverId}",
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
        http_method = "GET",
        http_path = "/firewall-domain-lists",
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
        http_method = "GET",
        http_path = "/firewall-domain-lists/{firewallDomainListId}/domains",
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
        http_method = "GET",
        http_path = "/firewall-rules",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGlobalResolvers(input, options)
    return self:invokeOperation(input, {
        name = "ListGlobalResolvers",
        input_schema = schemas.ListGlobalResolversInput,
        output_schema = schemas.ListGlobalResolversOutput,
        http_method = "GET",
        http_path = "/global-resolver",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listHostedZoneAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListHostedZoneAssociations",
        input_schema = schemas.ListHostedZoneAssociationsInput,
        output_schema = schemas.ListHostedZoneAssociationsOutput,
        http_method = "GET",
        http_path = "/hosted-zone-associations/resource-arn/{resourceArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listManagedFirewallDomainLists(input, options)
    return self:invokeOperation(input, {
        name = "ListManagedFirewallDomainLists",
        input_schema = schemas.ListManagedFirewallDomainListsInput,
        output_schema = schemas.ListManagedFirewallDomainListsOutput,
        http_method = "GET",
        http_path = "/list-managed-firewall-domain-lists/{managedFirewallDomainListType}",
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
        http_path = "/get-all-tags",
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
        http_path = "/tag-resource",
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
        http_path = "/untag-resource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAccessSource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccessSource",
        input_schema = schemas.UpdateAccessSourceInput,
        output_schema = schemas.UpdateAccessSourceOutput,
        http_method = "PATCH",
        http_path = "/access-sources/{accessSourceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAccessToken(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccessToken",
        input_schema = schemas.UpdateAccessTokenInput,
        output_schema = schemas.UpdateAccessTokenOutput,
        http_method = "PATCH",
        http_path = "/tokens/{accessTokenId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDNSView(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDNSView",
        input_schema = schemas.UpdateDNSViewInput,
        output_schema = schemas.UpdateDNSViewOutput,
        http_method = "PATCH",
        http_path = "/dns-views/{dnsViewId}",
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
        http_method = "PATCH",
        http_path = "/firewall-domain-lists/{firewallDomainListId}/domains",
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
        http_method = "PATCH",
        http_path = "/firewall-rules/{firewallRuleId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGlobalResolver(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGlobalResolver",
        input_schema = schemas.UpdateGlobalResolverInput,
        output_schema = schemas.UpdateGlobalResolverOutput,
        http_method = "PATCH",
        http_path = "/global-resolver/{globalResolverId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateHostedZoneAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateHostedZoneAssociation",
        input_schema = schemas.UpdateHostedZoneAssociationInput,
        output_schema = schemas.UpdateHostedZoneAssociationOutput,
        http_method = "PATCH",
        http_path = "/hosted-zone-associations/{hostedZoneAssociationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
