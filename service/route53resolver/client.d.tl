local types = require("route53resolver.types")

local record Client
    associateFirewallRuleGroup: function(Client, types.AssociateFirewallRuleGroupInput): types.AssociateFirewallRuleGroupOutput, table
    associateResolverEndpointIpAddress: function(Client, types.AssociateResolverEndpointIpAddressInput): types.AssociateResolverEndpointIpAddressOutput, table
    associateResolverQueryLogConfig: function(Client, types.AssociateResolverQueryLogConfigInput): types.AssociateResolverQueryLogConfigOutput, table
    associateResolverRule: function(Client, types.AssociateResolverRuleInput): types.AssociateResolverRuleOutput, table
    createFirewallDomainList: function(Client, types.CreateFirewallDomainListInput): types.CreateFirewallDomainListOutput, table
    createFirewallRule: function(Client, types.CreateFirewallRuleInput): types.CreateFirewallRuleOutput, table
    createFirewallRuleGroup: function(Client, types.CreateFirewallRuleGroupInput): types.CreateFirewallRuleGroupOutput, table
    createOutpostResolver: function(Client, types.CreateOutpostResolverInput): types.CreateOutpostResolverOutput, table
    createResolverEndpoint: function(Client, types.CreateResolverEndpointInput): types.CreateResolverEndpointOutput, table
    createResolverQueryLogConfig: function(Client, types.CreateResolverQueryLogConfigInput): types.CreateResolverQueryLogConfigOutput, table
    createResolverRule: function(Client, types.CreateResolverRuleInput): types.CreateResolverRuleOutput, table
    deleteFirewallDomainList: function(Client, types.DeleteFirewallDomainListInput): types.DeleteFirewallDomainListOutput, table
    deleteFirewallRule: function(Client, types.DeleteFirewallRuleInput): types.DeleteFirewallRuleOutput, table
    deleteFirewallRuleGroup: function(Client, types.DeleteFirewallRuleGroupInput): types.DeleteFirewallRuleGroupOutput, table
    deleteOutpostResolver: function(Client, types.DeleteOutpostResolverInput): types.DeleteOutpostResolverOutput, table
    deleteResolverEndpoint: function(Client, types.DeleteResolverEndpointInput): types.DeleteResolverEndpointOutput, table
    deleteResolverQueryLogConfig: function(Client, types.DeleteResolverQueryLogConfigInput): types.DeleteResolverQueryLogConfigOutput, table
    deleteResolverRule: function(Client, types.DeleteResolverRuleInput): types.DeleteResolverRuleOutput, table
    disassociateFirewallRuleGroup: function(Client, types.DisassociateFirewallRuleGroupInput): types.DisassociateFirewallRuleGroupOutput, table
    disassociateResolverEndpointIpAddress: function(Client, types.DisassociateResolverEndpointIpAddressInput): types.DisassociateResolverEndpointIpAddressOutput, table
    disassociateResolverQueryLogConfig: function(Client, types.DisassociateResolverQueryLogConfigInput): types.DisassociateResolverQueryLogConfigOutput, table
    disassociateResolverRule: function(Client, types.DisassociateResolverRuleInput): types.DisassociateResolverRuleOutput, table
    getFirewallConfig: function(Client, types.GetFirewallConfigInput): types.GetFirewallConfigOutput, table
    getFirewallDomainList: function(Client, types.GetFirewallDomainListInput): types.GetFirewallDomainListOutput, table
    getFirewallRuleGroup: function(Client, types.GetFirewallRuleGroupInput): types.GetFirewallRuleGroupOutput, table
    getFirewallRuleGroupAssociation: function(Client, types.GetFirewallRuleGroupAssociationInput): types.GetFirewallRuleGroupAssociationOutput, table
    getFirewallRuleGroupPolicy: function(Client, types.GetFirewallRuleGroupPolicyInput): types.GetFirewallRuleGroupPolicyOutput, table
    getOutpostResolver: function(Client, types.GetOutpostResolverInput): types.GetOutpostResolverOutput, table
    getResolverConfig: function(Client, types.GetResolverConfigInput): types.GetResolverConfigOutput, table
    getResolverDnssecConfig: function(Client, types.GetResolverDnssecConfigInput): types.GetResolverDnssecConfigOutput, table
    getResolverEndpoint: function(Client, types.GetResolverEndpointInput): types.GetResolverEndpointOutput, table
    getResolverQueryLogConfig: function(Client, types.GetResolverQueryLogConfigInput): types.GetResolverQueryLogConfigOutput, table
    getResolverQueryLogConfigAssociation: function(Client, types.GetResolverQueryLogConfigAssociationInput): types.GetResolverQueryLogConfigAssociationOutput, table
    getResolverQueryLogConfigPolicy: function(Client, types.GetResolverQueryLogConfigPolicyInput): types.GetResolverQueryLogConfigPolicyOutput, table
    getResolverRule: function(Client, types.GetResolverRuleInput): types.GetResolverRuleOutput, table
    getResolverRuleAssociation: function(Client, types.GetResolverRuleAssociationInput): types.GetResolverRuleAssociationOutput, table
    getResolverRulePolicy: function(Client, types.GetResolverRulePolicyInput): types.GetResolverRulePolicyOutput, table
    importFirewallDomains: function(Client, types.ImportFirewallDomainsInput): types.ImportFirewallDomainsOutput, table
    listFirewallConfigs: function(Client, types.ListFirewallConfigsInput): types.ListFirewallConfigsOutput, table
    listFirewallDomainLists: function(Client, types.ListFirewallDomainListsInput): types.ListFirewallDomainListsOutput, table
    listFirewallDomains: function(Client, types.ListFirewallDomainsInput): types.ListFirewallDomainsOutput, table
    listFirewallRuleGroupAssociations: function(Client, types.ListFirewallRuleGroupAssociationsInput): types.ListFirewallRuleGroupAssociationsOutput, table
    listFirewallRuleGroups: function(Client, types.ListFirewallRuleGroupsInput): types.ListFirewallRuleGroupsOutput, table
    listFirewallRules: function(Client, types.ListFirewallRulesInput): types.ListFirewallRulesOutput, table
    listOutpostResolvers: function(Client, types.ListOutpostResolversInput): types.ListOutpostResolversOutput, table
    listResolverConfigs: function(Client, types.ListResolverConfigsInput): types.ListResolverConfigsOutput, table
    listResolverDnssecConfigs: function(Client, types.ListResolverDnssecConfigsInput): types.ListResolverDnssecConfigsOutput, table
    listResolverEndpointIpAddresses: function(Client, types.ListResolverEndpointIpAddressesInput): types.ListResolverEndpointIpAddressesOutput, table
    listResolverEndpoints: function(Client, types.ListResolverEndpointsInput): types.ListResolverEndpointsOutput, table
    listResolverQueryLogConfigAssociations: function(Client, types.ListResolverQueryLogConfigAssociationsInput): types.ListResolverQueryLogConfigAssociationsOutput, table
    listResolverQueryLogConfigs: function(Client, types.ListResolverQueryLogConfigsInput): types.ListResolverQueryLogConfigsOutput, table
    listResolverRuleAssociations: function(Client, types.ListResolverRuleAssociationsInput): types.ListResolverRuleAssociationsOutput, table
    listResolverRules: function(Client, types.ListResolverRulesInput): types.ListResolverRulesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    putFirewallRuleGroupPolicy: function(Client, types.PutFirewallRuleGroupPolicyInput): types.PutFirewallRuleGroupPolicyOutput, table
    putResolverQueryLogConfigPolicy: function(Client, types.PutResolverQueryLogConfigPolicyInput): types.PutResolverQueryLogConfigPolicyOutput, table
    putResolverRulePolicy: function(Client, types.PutResolverRulePolicyInput): types.PutResolverRulePolicyOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateFirewallConfig: function(Client, types.UpdateFirewallConfigInput): types.UpdateFirewallConfigOutput, table
    updateFirewallDomains: function(Client, types.UpdateFirewallDomainsInput): types.UpdateFirewallDomainsOutput, table
    updateFirewallRule: function(Client, types.UpdateFirewallRuleInput): types.UpdateFirewallRuleOutput, table
    updateFirewallRuleGroupAssociation: function(Client, types.UpdateFirewallRuleGroupAssociationInput): types.UpdateFirewallRuleGroupAssociationOutput, table
    updateOutpostResolver: function(Client, types.UpdateOutpostResolverInput): types.UpdateOutpostResolverOutput, table
    updateResolverConfig: function(Client, types.UpdateResolverConfigInput): types.UpdateResolverConfigOutput, table
    updateResolverDnssecConfig: function(Client, types.UpdateResolverDnssecConfigInput): types.UpdateResolverDnssecConfigOutput, table
    updateResolverEndpoint: function(Client, types.UpdateResolverEndpointInput): types.UpdateResolverEndpointOutput, table
    updateResolverRule: function(Client, types.UpdateResolverRuleInput): types.UpdateResolverRuleOutput, table
end

local record M
    new: function(table): Client
end

return M
