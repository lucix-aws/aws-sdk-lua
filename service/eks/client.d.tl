local types = require("eks.types")

local record Client
    associateAccessPolicy: function(Client, types.AssociateAccessPolicyInput): types.AssociateAccessPolicyOutput, table
    associateEncryptionConfig: function(Client, types.AssociateEncryptionConfigInput): types.AssociateEncryptionConfigOutput, table
    associateIdentityProviderConfig: function(Client, types.AssociateIdentityProviderConfigInput): types.AssociateIdentityProviderConfigOutput, table
    createAccessEntry: function(Client, types.CreateAccessEntryInput): types.CreateAccessEntryOutput, table
    createAddon: function(Client, types.CreateAddonInput): types.CreateAddonOutput, table
    createCapability: function(Client, types.CreateCapabilityInput): types.CreateCapabilityOutput, table
    createCluster: function(Client, types.CreateClusterInput): types.CreateClusterOutput, table
    createEksAnywhereSubscription: function(Client, types.CreateEksAnywhereSubscriptionInput): types.CreateEksAnywhereSubscriptionOutput, table
    createFargateProfile: function(Client, types.CreateFargateProfileInput): types.CreateFargateProfileOutput, table
    createNodegroup: function(Client, types.CreateNodegroupInput): types.CreateNodegroupOutput, table
    createPodIdentityAssociation: function(Client, types.CreatePodIdentityAssociationInput): types.CreatePodIdentityAssociationOutput, table
    deleteAccessEntry: function(Client, types.DeleteAccessEntryInput): types.DeleteAccessEntryOutput, table
    deleteAddon: function(Client, types.DeleteAddonInput): types.DeleteAddonOutput, table
    deleteCapability: function(Client, types.DeleteCapabilityInput): types.DeleteCapabilityOutput, table
    deleteCluster: function(Client, types.DeleteClusterInput): types.DeleteClusterOutput, table
    deleteEksAnywhereSubscription: function(Client, types.DeleteEksAnywhereSubscriptionInput): types.DeleteEksAnywhereSubscriptionOutput, table
    deleteFargateProfile: function(Client, types.DeleteFargateProfileInput): types.DeleteFargateProfileOutput, table
    deleteNodegroup: function(Client, types.DeleteNodegroupInput): types.DeleteNodegroupOutput, table
    deletePodIdentityAssociation: function(Client, types.DeletePodIdentityAssociationInput): types.DeletePodIdentityAssociationOutput, table
    deregisterCluster: function(Client, types.DeregisterClusterInput): types.DeregisterClusterOutput, table
    describeAccessEntry: function(Client, types.DescribeAccessEntryInput): types.DescribeAccessEntryOutput, table
    describeAddon: function(Client, types.DescribeAddonInput): types.DescribeAddonOutput, table
    describeAddonConfiguration: function(Client, types.DescribeAddonConfigurationInput): types.DescribeAddonConfigurationOutput, table
    describeAddonVersions: function(Client, types.DescribeAddonVersionsInput): types.DescribeAddonVersionsOutput, table
    describeCapability: function(Client, types.DescribeCapabilityInput): types.DescribeCapabilityOutput, table
    describeCluster: function(Client, types.DescribeClusterInput): types.DescribeClusterOutput, table
    describeClusterVersions: function(Client, types.DescribeClusterVersionsInput): types.DescribeClusterVersionsOutput, table
    describeEksAnywhereSubscription: function(Client, types.DescribeEksAnywhereSubscriptionInput): types.DescribeEksAnywhereSubscriptionOutput, table
    describeFargateProfile: function(Client, types.DescribeFargateProfileInput): types.DescribeFargateProfileOutput, table
    describeIdentityProviderConfig: function(Client, types.DescribeIdentityProviderConfigInput): types.DescribeIdentityProviderConfigOutput, table
    describeInsight: function(Client, types.DescribeInsightInput): types.DescribeInsightOutput, table
    describeInsightsRefresh: function(Client, types.DescribeInsightsRefreshInput): types.DescribeInsightsRefreshOutput, table
    describeNodegroup: function(Client, types.DescribeNodegroupInput): types.DescribeNodegroupOutput, table
    describePodIdentityAssociation: function(Client, types.DescribePodIdentityAssociationInput): types.DescribePodIdentityAssociationOutput, table
    describeUpdate: function(Client, types.DescribeUpdateInput): types.DescribeUpdateOutput, table
    disassociateAccessPolicy: function(Client, types.DisassociateAccessPolicyInput): types.DisassociateAccessPolicyOutput, table
    disassociateIdentityProviderConfig: function(Client, types.DisassociateIdentityProviderConfigInput): types.DisassociateIdentityProviderConfigOutput, table
    listAccessEntries: function(Client, types.ListAccessEntriesInput): types.ListAccessEntriesOutput, table
    listAccessPolicies: function(Client, types.ListAccessPoliciesInput): types.ListAccessPoliciesOutput, table
    listAddons: function(Client, types.ListAddonsInput): types.ListAddonsOutput, table
    listAssociatedAccessPolicies: function(Client, types.ListAssociatedAccessPoliciesInput): types.ListAssociatedAccessPoliciesOutput, table
    listCapabilities: function(Client, types.ListCapabilitiesInput): types.ListCapabilitiesOutput, table
    listClusters: function(Client, types.ListClustersInput): types.ListClustersOutput, table
    listEksAnywhereSubscriptions: function(Client, types.ListEksAnywhereSubscriptionsInput): types.ListEksAnywhereSubscriptionsOutput, table
    listFargateProfiles: function(Client, types.ListFargateProfilesInput): types.ListFargateProfilesOutput, table
    listIdentityProviderConfigs: function(Client, types.ListIdentityProviderConfigsInput): types.ListIdentityProviderConfigsOutput, table
    listInsights: function(Client, types.ListInsightsInput): types.ListInsightsOutput, table
    listNodegroups: function(Client, types.ListNodegroupsInput): types.ListNodegroupsOutput, table
    listPodIdentityAssociations: function(Client, types.ListPodIdentityAssociationsInput): types.ListPodIdentityAssociationsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listUpdates: function(Client, types.ListUpdatesInput): types.ListUpdatesOutput, table
    registerCluster: function(Client, types.RegisterClusterInput): types.RegisterClusterOutput, table
    startInsightsRefresh: function(Client, types.StartInsightsRefreshInput): types.StartInsightsRefreshOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateAccessEntry: function(Client, types.UpdateAccessEntryInput): types.UpdateAccessEntryOutput, table
    updateAddon: function(Client, types.UpdateAddonInput): types.UpdateAddonOutput, table
    updateCapability: function(Client, types.UpdateCapabilityInput): types.UpdateCapabilityOutput, table
    updateClusterConfig: function(Client, types.UpdateClusterConfigInput): types.UpdateClusterConfigOutput, table
    updateClusterVersion: function(Client, types.UpdateClusterVersionInput): types.UpdateClusterVersionOutput, table
    updateEksAnywhereSubscription: function(Client, types.UpdateEksAnywhereSubscriptionInput): types.UpdateEksAnywhereSubscriptionOutput, table
    updateNodegroupConfig: function(Client, types.UpdateNodegroupConfigInput): types.UpdateNodegroupConfigOutput, table
    updateNodegroupVersion: function(Client, types.UpdateNodegroupVersionInput): types.UpdateNodegroupVersionOutput, table
    updatePodIdentityAssociation: function(Client, types.UpdatePodIdentityAssociationInput): types.UpdatePodIdentityAssociationOutput, table
end

local record M
    new: function(table): Client
end

return M
