local types = require("globalaccelerator.types")

local record Client
    addCustomRoutingEndpoints: function(Client, types.AddCustomRoutingEndpointsInput): types.AddCustomRoutingEndpointsOutput, table
    addEndpoints: function(Client, types.AddEndpointsInput): types.AddEndpointsOutput, table
    advertiseByoipCidr: function(Client, types.AdvertiseByoipCidrInput): types.AdvertiseByoipCidrOutput, table
    allowCustomRoutingTraffic: function(Client, types.AllowCustomRoutingTrafficInput): types.AllowCustomRoutingTrafficOutput, table
    createAccelerator: function(Client, types.CreateAcceleratorInput): types.CreateAcceleratorOutput, table
    createCrossAccountAttachment: function(Client, types.CreateCrossAccountAttachmentInput): types.CreateCrossAccountAttachmentOutput, table
    createCustomRoutingAccelerator: function(Client, types.CreateCustomRoutingAcceleratorInput): types.CreateCustomRoutingAcceleratorOutput, table
    createCustomRoutingEndpointGroup: function(Client, types.CreateCustomRoutingEndpointGroupInput): types.CreateCustomRoutingEndpointGroupOutput, table
    createCustomRoutingListener: function(Client, types.CreateCustomRoutingListenerInput): types.CreateCustomRoutingListenerOutput, table
    createEndpointGroup: function(Client, types.CreateEndpointGroupInput): types.CreateEndpointGroupOutput, table
    createListener: function(Client, types.CreateListenerInput): types.CreateListenerOutput, table
    deleteAccelerator: function(Client, types.DeleteAcceleratorInput): types.DeleteAcceleratorOutput, table
    deleteCrossAccountAttachment: function(Client, types.DeleteCrossAccountAttachmentInput): types.DeleteCrossAccountAttachmentOutput, table
    deleteCustomRoutingAccelerator: function(Client, types.DeleteCustomRoutingAcceleratorInput): types.DeleteCustomRoutingAcceleratorOutput, table
    deleteCustomRoutingEndpointGroup: function(Client, types.DeleteCustomRoutingEndpointGroupInput): types.DeleteCustomRoutingEndpointGroupOutput, table
    deleteCustomRoutingListener: function(Client, types.DeleteCustomRoutingListenerInput): types.DeleteCustomRoutingListenerOutput, table
    deleteEndpointGroup: function(Client, types.DeleteEndpointGroupInput): types.DeleteEndpointGroupOutput, table
    deleteListener: function(Client, types.DeleteListenerInput): types.DeleteListenerOutput, table
    denyCustomRoutingTraffic: function(Client, types.DenyCustomRoutingTrafficInput): types.DenyCustomRoutingTrafficOutput, table
    deprovisionByoipCidr: function(Client, types.DeprovisionByoipCidrInput): types.DeprovisionByoipCidrOutput, table
    describeAccelerator: function(Client, types.DescribeAcceleratorInput): types.DescribeAcceleratorOutput, table
    describeAcceleratorAttributes: function(Client, types.DescribeAcceleratorAttributesInput): types.DescribeAcceleratorAttributesOutput, table
    describeCrossAccountAttachment: function(Client, types.DescribeCrossAccountAttachmentInput): types.DescribeCrossAccountAttachmentOutput, table
    describeCustomRoutingAccelerator: function(Client, types.DescribeCustomRoutingAcceleratorInput): types.DescribeCustomRoutingAcceleratorOutput, table
    describeCustomRoutingAcceleratorAttributes: function(Client, types.DescribeCustomRoutingAcceleratorAttributesInput): types.DescribeCustomRoutingAcceleratorAttributesOutput, table
    describeCustomRoutingEndpointGroup: function(Client, types.DescribeCustomRoutingEndpointGroupInput): types.DescribeCustomRoutingEndpointGroupOutput, table
    describeCustomRoutingListener: function(Client, types.DescribeCustomRoutingListenerInput): types.DescribeCustomRoutingListenerOutput, table
    describeEndpointGroup: function(Client, types.DescribeEndpointGroupInput): types.DescribeEndpointGroupOutput, table
    describeListener: function(Client, types.DescribeListenerInput): types.DescribeListenerOutput, table
    listAccelerators: function(Client, types.ListAcceleratorsInput): types.ListAcceleratorsOutput, table
    listByoipCidrs: function(Client, types.ListByoipCidrsInput): types.ListByoipCidrsOutput, table
    listCrossAccountAttachments: function(Client, types.ListCrossAccountAttachmentsInput): types.ListCrossAccountAttachmentsOutput, table
    listCrossAccountResourceAccounts: function(Client, types.ListCrossAccountResourceAccountsInput): types.ListCrossAccountResourceAccountsOutput, table
    listCrossAccountResources: function(Client, types.ListCrossAccountResourcesInput): types.ListCrossAccountResourcesOutput, table
    listCustomRoutingAccelerators: function(Client, types.ListCustomRoutingAcceleratorsInput): types.ListCustomRoutingAcceleratorsOutput, table
    listCustomRoutingEndpointGroups: function(Client, types.ListCustomRoutingEndpointGroupsInput): types.ListCustomRoutingEndpointGroupsOutput, table
    listCustomRoutingListeners: function(Client, types.ListCustomRoutingListenersInput): types.ListCustomRoutingListenersOutput, table
    listCustomRoutingPortMappings: function(Client, types.ListCustomRoutingPortMappingsInput): types.ListCustomRoutingPortMappingsOutput, table
    listCustomRoutingPortMappingsByDestination: function(Client, types.ListCustomRoutingPortMappingsByDestinationInput): types.ListCustomRoutingPortMappingsByDestinationOutput, table
    listEndpointGroups: function(Client, types.ListEndpointGroupsInput): types.ListEndpointGroupsOutput, table
    listListeners: function(Client, types.ListListenersInput): types.ListListenersOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    provisionByoipCidr: function(Client, types.ProvisionByoipCidrInput): types.ProvisionByoipCidrOutput, table
    removeCustomRoutingEndpoints: function(Client, types.RemoveCustomRoutingEndpointsInput): types.RemoveCustomRoutingEndpointsOutput, table
    removeEndpoints: function(Client, types.RemoveEndpointsInput): types.RemoveEndpointsOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateAccelerator: function(Client, types.UpdateAcceleratorInput): types.UpdateAcceleratorOutput, table
    updateAcceleratorAttributes: function(Client, types.UpdateAcceleratorAttributesInput): types.UpdateAcceleratorAttributesOutput, table
    updateCrossAccountAttachment: function(Client, types.UpdateCrossAccountAttachmentInput): types.UpdateCrossAccountAttachmentOutput, table
    updateCustomRoutingAccelerator: function(Client, types.UpdateCustomRoutingAcceleratorInput): types.UpdateCustomRoutingAcceleratorOutput, table
    updateCustomRoutingAcceleratorAttributes: function(Client, types.UpdateCustomRoutingAcceleratorAttributesInput): types.UpdateCustomRoutingAcceleratorAttributesOutput, table
    updateCustomRoutingListener: function(Client, types.UpdateCustomRoutingListenerInput): types.UpdateCustomRoutingListenerOutput, table
    updateEndpointGroup: function(Client, types.UpdateEndpointGroupInput): types.UpdateEndpointGroupOutput, table
    updateListener: function(Client, types.UpdateListenerInput): types.UpdateListenerOutput, table
    withdrawByoipCidr: function(Client, types.WithdrawByoipCidrInput): types.WithdrawByoipCidrOutput, table
end

local record M
    new: function(table): Client
end

return M
