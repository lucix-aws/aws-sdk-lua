local types = require("vpclattice.types")

local record Client
    batchUpdateRule: function(Client, types.BatchUpdateRuleInput): types.BatchUpdateRuleOutput, table
    createAccessLogSubscription: function(Client, types.CreateAccessLogSubscriptionInput): types.CreateAccessLogSubscriptionOutput, table
    createListener: function(Client, types.CreateListenerInput): types.CreateListenerOutput, table
    createResourceConfiguration: function(Client, types.CreateResourceConfigurationInput): types.CreateResourceConfigurationOutput, table
    createResourceGateway: function(Client, types.CreateResourceGatewayInput): types.CreateResourceGatewayOutput, table
    createRule: function(Client, types.CreateRuleInput): types.CreateRuleOutput, table
    createService: function(Client, types.CreateServiceInput): types.CreateServiceOutput, table
    createServiceNetwork: function(Client, types.CreateServiceNetworkInput): types.CreateServiceNetworkOutput, table
    createServiceNetworkResourceAssociation: function(Client, types.CreateServiceNetworkResourceAssociationInput): types.CreateServiceNetworkResourceAssociationOutput, table
    createServiceNetworkServiceAssociation: function(Client, types.CreateServiceNetworkServiceAssociationInput): types.CreateServiceNetworkServiceAssociationOutput, table
    createServiceNetworkVpcAssociation: function(Client, types.CreateServiceNetworkVpcAssociationInput): types.CreateServiceNetworkVpcAssociationOutput, table
    createTargetGroup: function(Client, types.CreateTargetGroupInput): types.CreateTargetGroupOutput, table
    deleteAccessLogSubscription: function(Client, types.DeleteAccessLogSubscriptionInput): types.DeleteAccessLogSubscriptionOutput, table
    deleteAuthPolicy: function(Client, types.DeleteAuthPolicyInput): types.DeleteAuthPolicyOutput, table
    deleteDomainVerification: function(Client, types.DeleteDomainVerificationInput): types.DeleteDomainVerificationOutput, table
    deleteListener: function(Client, types.DeleteListenerInput): types.DeleteListenerOutput, table
    deleteResourceConfiguration: function(Client, types.DeleteResourceConfigurationInput): types.DeleteResourceConfigurationOutput, table
    deleteResourceEndpointAssociation: function(Client, types.DeleteResourceEndpointAssociationInput): types.DeleteResourceEndpointAssociationOutput, table
    deleteResourceGateway: function(Client, types.DeleteResourceGatewayInput): types.DeleteResourceGatewayOutput, table
    deleteResourcePolicy: function(Client, types.DeleteResourcePolicyInput): types.DeleteResourcePolicyOutput, table
    deleteRule: function(Client, types.DeleteRuleInput): types.DeleteRuleOutput, table
    deleteService: function(Client, types.DeleteServiceInput): types.DeleteServiceOutput, table
    deleteServiceNetwork: function(Client, types.DeleteServiceNetworkInput): types.DeleteServiceNetworkOutput, table
    deleteServiceNetworkResourceAssociation: function(Client, types.DeleteServiceNetworkResourceAssociationInput): types.DeleteServiceNetworkResourceAssociationOutput, table
    deleteServiceNetworkServiceAssociation: function(Client, types.DeleteServiceNetworkServiceAssociationInput): types.DeleteServiceNetworkServiceAssociationOutput, table
    deleteServiceNetworkVpcAssociation: function(Client, types.DeleteServiceNetworkVpcAssociationInput): types.DeleteServiceNetworkVpcAssociationOutput, table
    deleteTargetGroup: function(Client, types.DeleteTargetGroupInput): types.DeleteTargetGroupOutput, table
    deregisterTargets: function(Client, types.DeregisterTargetsInput): types.DeregisterTargetsOutput, table
    getAccessLogSubscription: function(Client, types.GetAccessLogSubscriptionInput): types.GetAccessLogSubscriptionOutput, table
    getAuthPolicy: function(Client, types.GetAuthPolicyInput): types.GetAuthPolicyOutput, table
    getDomainVerification: function(Client, types.GetDomainVerificationInput): types.GetDomainVerificationOutput, table
    getListener: function(Client, types.GetListenerInput): types.GetListenerOutput, table
    getResourceConfiguration: function(Client, types.GetResourceConfigurationInput): types.GetResourceConfigurationOutput, table
    getResourceGateway: function(Client, types.GetResourceGatewayInput): types.GetResourceGatewayOutput, table
    getResourcePolicy: function(Client, types.GetResourcePolicyInput): types.GetResourcePolicyOutput, table
    getRule: function(Client, types.GetRuleInput): types.GetRuleOutput, table
    getService: function(Client, types.GetServiceInput): types.GetServiceOutput, table
    getServiceNetwork: function(Client, types.GetServiceNetworkInput): types.GetServiceNetworkOutput, table
    getServiceNetworkResourceAssociation: function(Client, types.GetServiceNetworkResourceAssociationInput): types.GetServiceNetworkResourceAssociationOutput, table
    getServiceNetworkServiceAssociation: function(Client, types.GetServiceNetworkServiceAssociationInput): types.GetServiceNetworkServiceAssociationOutput, table
    getServiceNetworkVpcAssociation: function(Client, types.GetServiceNetworkVpcAssociationInput): types.GetServiceNetworkVpcAssociationOutput, table
    getTargetGroup: function(Client, types.GetTargetGroupInput): types.GetTargetGroupOutput, table
    listAccessLogSubscriptions: function(Client, types.ListAccessLogSubscriptionsInput): types.ListAccessLogSubscriptionsOutput, table
    listDomainVerifications: function(Client, types.ListDomainVerificationsInput): types.ListDomainVerificationsOutput, table
    listListeners: function(Client, types.ListListenersInput): types.ListListenersOutput, table
    listResourceConfigurations: function(Client, types.ListResourceConfigurationsInput): types.ListResourceConfigurationsOutput, table
    listResourceEndpointAssociations: function(Client, types.ListResourceEndpointAssociationsInput): types.ListResourceEndpointAssociationsOutput, table
    listResourceGateways: function(Client, types.ListResourceGatewaysInput): types.ListResourceGatewaysOutput, table
    listRules: function(Client, types.ListRulesInput): types.ListRulesOutput, table
    listServiceNetworkResourceAssociations: function(Client, types.ListServiceNetworkResourceAssociationsInput): types.ListServiceNetworkResourceAssociationsOutput, table
    listServiceNetworks: function(Client, types.ListServiceNetworksInput): types.ListServiceNetworksOutput, table
    listServiceNetworkServiceAssociations: function(Client, types.ListServiceNetworkServiceAssociationsInput): types.ListServiceNetworkServiceAssociationsOutput, table
    listServiceNetworkVpcAssociations: function(Client, types.ListServiceNetworkVpcAssociationsInput): types.ListServiceNetworkVpcAssociationsOutput, table
    listServiceNetworkVpcEndpointAssociations: function(Client, types.ListServiceNetworkVpcEndpointAssociationsInput): types.ListServiceNetworkVpcEndpointAssociationsOutput, table
    listServices: function(Client, types.ListServicesInput): types.ListServicesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listTargetGroups: function(Client, types.ListTargetGroupsInput): types.ListTargetGroupsOutput, table
    listTargets: function(Client, types.ListTargetsInput): types.ListTargetsOutput, table
    putAuthPolicy: function(Client, types.PutAuthPolicyInput): types.PutAuthPolicyOutput, table
    putResourcePolicy: function(Client, types.PutResourcePolicyInput): types.PutResourcePolicyOutput, table
    registerTargets: function(Client, types.RegisterTargetsInput): types.RegisterTargetsOutput, table
    startDomainVerification: function(Client, types.StartDomainVerificationInput): types.StartDomainVerificationOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateAccessLogSubscription: function(Client, types.UpdateAccessLogSubscriptionInput): types.UpdateAccessLogSubscriptionOutput, table
    updateListener: function(Client, types.UpdateListenerInput): types.UpdateListenerOutput, table
    updateResourceConfiguration: function(Client, types.UpdateResourceConfigurationInput): types.UpdateResourceConfigurationOutput, table
    updateResourceGateway: function(Client, types.UpdateResourceGatewayInput): types.UpdateResourceGatewayOutput, table
    updateRule: function(Client, types.UpdateRuleInput): types.UpdateRuleOutput, table
    updateService: function(Client, types.UpdateServiceInput): types.UpdateServiceOutput, table
    updateServiceNetwork: function(Client, types.UpdateServiceNetworkInput): types.UpdateServiceNetworkOutput, table
    updateServiceNetworkVpcAssociation: function(Client, types.UpdateServiceNetworkVpcAssociationInput): types.UpdateServiceNetworkVpcAssociationOutput, table
    updateTargetGroup: function(Client, types.UpdateTargetGroupInput): types.UpdateTargetGroupOutput, table
end

local record M
    new: function(table): Client
end

return M
