local types = require("elasticsearchservice.types")

local record Client
    acceptInboundCrossClusterSearchConnection: function(Client, types.AcceptInboundCrossClusterSearchConnectionInput): types.AcceptInboundCrossClusterSearchConnectionOutput, table
    addTags: function(Client, types.AddTagsInput): types.AddTagsOutput, table
    associatePackage: function(Client, types.AssociatePackageInput): types.AssociatePackageOutput, table
    authorizeVpcEndpointAccess: function(Client, types.AuthorizeVpcEndpointAccessInput): types.AuthorizeVpcEndpointAccessOutput, table
    cancelDomainConfigChange: function(Client, types.CancelDomainConfigChangeInput): types.CancelDomainConfigChangeOutput, table
    cancelElasticsearchServiceSoftwareUpdate: function(Client, types.CancelElasticsearchServiceSoftwareUpdateInput): types.CancelElasticsearchServiceSoftwareUpdateOutput, table
    createElasticsearchDomain: function(Client, types.CreateElasticsearchDomainInput): types.CreateElasticsearchDomainOutput, table
    createOutboundCrossClusterSearchConnection: function(Client, types.CreateOutboundCrossClusterSearchConnectionInput): types.CreateOutboundCrossClusterSearchConnectionOutput, table
    createPackage: function(Client, types.CreatePackageInput): types.CreatePackageOutput, table
    createVpcEndpoint: function(Client, types.CreateVpcEndpointInput): types.CreateVpcEndpointOutput, table
    deleteElasticsearchDomain: function(Client, types.DeleteElasticsearchDomainInput): types.DeleteElasticsearchDomainOutput, table
    deleteElasticsearchServiceRole: function(Client, types.DeleteElasticsearchServiceRoleInput): types.DeleteElasticsearchServiceRoleOutput, table
    deleteInboundCrossClusterSearchConnection: function(Client, types.DeleteInboundCrossClusterSearchConnectionInput): types.DeleteInboundCrossClusterSearchConnectionOutput, table
    deleteOutboundCrossClusterSearchConnection: function(Client, types.DeleteOutboundCrossClusterSearchConnectionInput): types.DeleteOutboundCrossClusterSearchConnectionOutput, table
    deletePackage: function(Client, types.DeletePackageInput): types.DeletePackageOutput, table
    deleteVpcEndpoint: function(Client, types.DeleteVpcEndpointInput): types.DeleteVpcEndpointOutput, table
    describeDomainAutoTunes: function(Client, types.DescribeDomainAutoTunesInput): types.DescribeDomainAutoTunesOutput, table
    describeDomainChangeProgress: function(Client, types.DescribeDomainChangeProgressInput): types.DescribeDomainChangeProgressOutput, table
    describeElasticsearchDomain: function(Client, types.DescribeElasticsearchDomainInput): types.DescribeElasticsearchDomainOutput, table
    describeElasticsearchDomainConfig: function(Client, types.DescribeElasticsearchDomainConfigInput): types.DescribeElasticsearchDomainConfigOutput, table
    describeElasticsearchDomains: function(Client, types.DescribeElasticsearchDomainsInput): types.DescribeElasticsearchDomainsOutput, table
    describeElasticsearchInstanceTypeLimits: function(Client, types.DescribeElasticsearchInstanceTypeLimitsInput): types.DescribeElasticsearchInstanceTypeLimitsOutput, table
    describeInboundCrossClusterSearchConnections: function(Client, types.DescribeInboundCrossClusterSearchConnectionsInput): types.DescribeInboundCrossClusterSearchConnectionsOutput, table
    describeOutboundCrossClusterSearchConnections: function(Client, types.DescribeOutboundCrossClusterSearchConnectionsInput): types.DescribeOutboundCrossClusterSearchConnectionsOutput, table
    describePackages: function(Client, types.DescribePackagesInput): types.DescribePackagesOutput, table
    describeReservedElasticsearchInstanceOfferings: function(Client, types.DescribeReservedElasticsearchInstanceOfferingsInput): types.DescribeReservedElasticsearchInstanceOfferingsOutput, table
    describeReservedElasticsearchInstances: function(Client, types.DescribeReservedElasticsearchInstancesInput): types.DescribeReservedElasticsearchInstancesOutput, table
    describeVpcEndpoints: function(Client, types.DescribeVpcEndpointsInput): types.DescribeVpcEndpointsOutput, table
    dissociatePackage: function(Client, types.DissociatePackageInput): types.DissociatePackageOutput, table
    getCompatibleElasticsearchVersions: function(Client, types.GetCompatibleElasticsearchVersionsInput): types.GetCompatibleElasticsearchVersionsOutput, table
    getPackageVersionHistory: function(Client, types.GetPackageVersionHistoryInput): types.GetPackageVersionHistoryOutput, table
    getUpgradeHistory: function(Client, types.GetUpgradeHistoryInput): types.GetUpgradeHistoryOutput, table
    getUpgradeStatus: function(Client, types.GetUpgradeStatusInput): types.GetUpgradeStatusOutput, table
    listDomainNames: function(Client, types.ListDomainNamesInput): types.ListDomainNamesOutput, table
    listDomainsForPackage: function(Client, types.ListDomainsForPackageInput): types.ListDomainsForPackageOutput, table
    listElasticsearchInstanceTypes: function(Client, types.ListElasticsearchInstanceTypesInput): types.ListElasticsearchInstanceTypesOutput, table
    listElasticsearchVersions: function(Client, types.ListElasticsearchVersionsInput): types.ListElasticsearchVersionsOutput, table
    listPackagesForDomain: function(Client, types.ListPackagesForDomainInput): types.ListPackagesForDomainOutput, table
    listTags: function(Client, types.ListTagsInput): types.ListTagsOutput, table
    listVpcEndpointAccess: function(Client, types.ListVpcEndpointAccessInput): types.ListVpcEndpointAccessOutput, table
    listVpcEndpoints: function(Client, types.ListVpcEndpointsInput): types.ListVpcEndpointsOutput, table
    listVpcEndpointsForDomain: function(Client, types.ListVpcEndpointsForDomainInput): types.ListVpcEndpointsForDomainOutput, table
    purchaseReservedElasticsearchInstanceOffering: function(Client, types.PurchaseReservedElasticsearchInstanceOfferingInput): types.PurchaseReservedElasticsearchInstanceOfferingOutput, table
    rejectInboundCrossClusterSearchConnection: function(Client, types.RejectInboundCrossClusterSearchConnectionInput): types.RejectInboundCrossClusterSearchConnectionOutput, table
    removeTags: function(Client, types.RemoveTagsInput): types.RemoveTagsOutput, table
    revokeVpcEndpointAccess: function(Client, types.RevokeVpcEndpointAccessInput): types.RevokeVpcEndpointAccessOutput, table
    startElasticsearchServiceSoftwareUpdate: function(Client, types.StartElasticsearchServiceSoftwareUpdateInput): types.StartElasticsearchServiceSoftwareUpdateOutput, table
    updateElasticsearchDomainConfig: function(Client, types.UpdateElasticsearchDomainConfigInput): types.UpdateElasticsearchDomainConfigOutput, table
    updatePackage: function(Client, types.UpdatePackageInput): types.UpdatePackageOutput, table
    updateVpcEndpoint: function(Client, types.UpdateVpcEndpointInput): types.UpdateVpcEndpointOutput, table
    upgradeElasticsearchDomain: function(Client, types.UpgradeElasticsearchDomainInput): types.UpgradeElasticsearchDomainOutput, table
end

local record M
    new: function(table): Client
end

return M
