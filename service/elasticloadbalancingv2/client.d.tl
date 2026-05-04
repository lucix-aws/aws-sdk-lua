local types = require("elasticloadbalancingv2.types")

local record Client
    addListenerCertificates: function(Client, types.AddListenerCertificatesInput): types.AddListenerCertificatesOutput, table
    addTags: function(Client, types.AddTagsInput): types.AddTagsOutput, table
    addTrustStoreRevocations: function(Client, types.AddTrustStoreRevocationsInput): types.AddTrustStoreRevocationsOutput, table
    createListener: function(Client, types.CreateListenerInput): types.CreateListenerOutput, table
    createLoadBalancer: function(Client, types.CreateLoadBalancerInput): types.CreateLoadBalancerOutput, table
    createRule: function(Client, types.CreateRuleInput): types.CreateRuleOutput, table
    createTargetGroup: function(Client, types.CreateTargetGroupInput): types.CreateTargetGroupOutput, table
    createTrustStore: function(Client, types.CreateTrustStoreInput): types.CreateTrustStoreOutput, table
    deleteListener: function(Client, types.DeleteListenerInput): types.DeleteListenerOutput, table
    deleteLoadBalancer: function(Client, types.DeleteLoadBalancerInput): types.DeleteLoadBalancerOutput, table
    deleteRule: function(Client, types.DeleteRuleInput): types.DeleteRuleOutput, table
    deleteSharedTrustStoreAssociation: function(Client, types.DeleteSharedTrustStoreAssociationInput): types.DeleteSharedTrustStoreAssociationOutput, table
    deleteTargetGroup: function(Client, types.DeleteTargetGroupInput): types.DeleteTargetGroupOutput, table
    deleteTrustStore: function(Client, types.DeleteTrustStoreInput): types.DeleteTrustStoreOutput, table
    deregisterTargets: function(Client, types.DeregisterTargetsInput): types.DeregisterTargetsOutput, table
    describeAccountLimits: function(Client, types.DescribeAccountLimitsInput): types.DescribeAccountLimitsOutput, table
    describeCapacityReservation: function(Client, types.DescribeCapacityReservationInput): types.DescribeCapacityReservationOutput, table
    describeListenerAttributes: function(Client, types.DescribeListenerAttributesInput): types.DescribeListenerAttributesOutput, table
    describeListenerCertificates: function(Client, types.DescribeListenerCertificatesInput): types.DescribeListenerCertificatesOutput, table
    describeListeners: function(Client, types.DescribeListenersInput): types.DescribeListenersOutput, table
    describeLoadBalancerAttributes: function(Client, types.DescribeLoadBalancerAttributesInput): types.DescribeLoadBalancerAttributesOutput, table
    describeLoadBalancers: function(Client, types.DescribeLoadBalancersInput): types.DescribeLoadBalancersOutput, table
    describeRules: function(Client, types.DescribeRulesInput): types.DescribeRulesOutput, table
    describeSSLPolicies: function(Client, types.DescribeSSLPoliciesInput): types.DescribeSSLPoliciesOutput, table
    describeTags: function(Client, types.DescribeTagsInput): types.DescribeTagsOutput, table
    describeTargetGroupAttributes: function(Client, types.DescribeTargetGroupAttributesInput): types.DescribeTargetGroupAttributesOutput, table
    describeTargetGroups: function(Client, types.DescribeTargetGroupsInput): types.DescribeTargetGroupsOutput, table
    describeTargetHealth: function(Client, types.DescribeTargetHealthInput): types.DescribeTargetHealthOutput, table
    describeTrustStoreAssociations: function(Client, types.DescribeTrustStoreAssociationsInput): types.DescribeTrustStoreAssociationsOutput, table
    describeTrustStoreRevocations: function(Client, types.DescribeTrustStoreRevocationsInput): types.DescribeTrustStoreRevocationsOutput, table
    describeTrustStores: function(Client, types.DescribeTrustStoresInput): types.DescribeTrustStoresOutput, table
    getResourcePolicy: function(Client, types.GetResourcePolicyInput): types.GetResourcePolicyOutput, table
    getTrustStoreCaCertificatesBundle: function(Client, types.GetTrustStoreCaCertificatesBundleInput): types.GetTrustStoreCaCertificatesBundleOutput, table
    getTrustStoreRevocationContent: function(Client, types.GetTrustStoreRevocationContentInput): types.GetTrustStoreRevocationContentOutput, table
    modifyCapacityReservation: function(Client, types.ModifyCapacityReservationInput): types.ModifyCapacityReservationOutput, table
    modifyIpPools: function(Client, types.ModifyIpPoolsInput): types.ModifyIpPoolsOutput, table
    modifyListener: function(Client, types.ModifyListenerInput): types.ModifyListenerOutput, table
    modifyListenerAttributes: function(Client, types.ModifyListenerAttributesInput): types.ModifyListenerAttributesOutput, table
    modifyLoadBalancerAttributes: function(Client, types.ModifyLoadBalancerAttributesInput): types.ModifyLoadBalancerAttributesOutput, table
    modifyRule: function(Client, types.ModifyRuleInput): types.ModifyRuleOutput, table
    modifyTargetGroup: function(Client, types.ModifyTargetGroupInput): types.ModifyTargetGroupOutput, table
    modifyTargetGroupAttributes: function(Client, types.ModifyTargetGroupAttributesInput): types.ModifyTargetGroupAttributesOutput, table
    modifyTrustStore: function(Client, types.ModifyTrustStoreInput): types.ModifyTrustStoreOutput, table
    registerTargets: function(Client, types.RegisterTargetsInput): types.RegisterTargetsOutput, table
    removeListenerCertificates: function(Client, types.RemoveListenerCertificatesInput): types.RemoveListenerCertificatesOutput, table
    removeTags: function(Client, types.RemoveTagsInput): types.RemoveTagsOutput, table
    removeTrustStoreRevocations: function(Client, types.RemoveTrustStoreRevocationsInput): types.RemoveTrustStoreRevocationsOutput, table
    setIpAddressType: function(Client, types.SetIpAddressTypeInput): types.SetIpAddressTypeOutput, table
    setRulePriorities: function(Client, types.SetRulePrioritiesInput): types.SetRulePrioritiesOutput, table
    setSecurityGroups: function(Client, types.SetSecurityGroupsInput): types.SetSecurityGroupsOutput, table
    setSubnets: function(Client, types.SetSubnetsInput): types.SetSubnetsOutput, table
end

local record M
    new: function(table): Client
end

return M
