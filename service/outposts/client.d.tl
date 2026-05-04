local types = require("outposts.types")

local record Client
    cancelCapacityTask: function(Client, types.CancelCapacityTaskInput): types.CancelCapacityTaskOutput, table
    cancelOrder: function(Client, types.CancelOrderInput): types.CancelOrderOutput, table
    createOrder: function(Client, types.CreateOrderInput): types.CreateOrderOutput, table
    createOutpost: function(Client, types.CreateOutpostInput): types.CreateOutpostOutput, table
    createRenewal: function(Client, types.CreateRenewalInput): types.CreateRenewalOutput, table
    createSite: function(Client, types.CreateSiteInput): types.CreateSiteOutput, table
    deleteOutpost: function(Client, types.DeleteOutpostInput): types.DeleteOutpostOutput, table
    deleteSite: function(Client, types.DeleteSiteInput): types.DeleteSiteOutput, table
    getCapacityTask: function(Client, types.GetCapacityTaskInput): types.GetCapacityTaskOutput, table
    getCatalogItem: function(Client, types.GetCatalogItemInput): types.GetCatalogItemOutput, table
    getConnection: function(Client, types.GetConnectionInput): types.GetConnectionOutput, table
    getOrder: function(Client, types.GetOrderInput): types.GetOrderOutput, table
    getOutpost: function(Client, types.GetOutpostInput): types.GetOutpostOutput, table
    getOutpostBillingInformation: function(Client, types.GetOutpostBillingInformationInput): types.GetOutpostBillingInformationOutput, table
    getOutpostInstanceTypes: function(Client, types.GetOutpostInstanceTypesInput): types.GetOutpostInstanceTypesOutput, table
    getOutpostSupportedInstanceTypes: function(Client, types.GetOutpostSupportedInstanceTypesInput): types.GetOutpostSupportedInstanceTypesOutput, table
    getRenewalPricing: function(Client, types.GetRenewalPricingInput): types.GetRenewalPricingOutput, table
    getSite: function(Client, types.GetSiteInput): types.GetSiteOutput, table
    getSiteAddress: function(Client, types.GetSiteAddressInput): types.GetSiteAddressOutput, table
    listAssetInstances: function(Client, types.ListAssetInstancesInput): types.ListAssetInstancesOutput, table
    listAssets: function(Client, types.ListAssetsInput): types.ListAssetsOutput, table
    listBlockingInstancesForCapacityTask: function(Client, types.ListBlockingInstancesForCapacityTaskInput): types.ListBlockingInstancesForCapacityTaskOutput, table
    listCapacityTasks: function(Client, types.ListCapacityTasksInput): types.ListCapacityTasksOutput, table
    listCatalogItems: function(Client, types.ListCatalogItemsInput): types.ListCatalogItemsOutput, table
    listOrders: function(Client, types.ListOrdersInput): types.ListOrdersOutput, table
    listOutposts: function(Client, types.ListOutpostsInput): types.ListOutpostsOutput, table
    listSites: function(Client, types.ListSitesInput): types.ListSitesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    startCapacityTask: function(Client, types.StartCapacityTaskInput): types.StartCapacityTaskOutput, table
    startConnection: function(Client, types.StartConnectionInput): types.StartConnectionOutput, table
    startOutpostDecommission: function(Client, types.StartOutpostDecommissionInput): types.StartOutpostDecommissionOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateOutpost: function(Client, types.UpdateOutpostInput): types.UpdateOutpostOutput, table
    updateSite: function(Client, types.UpdateSiteInput): types.UpdateSiteOutput, table
    updateSiteAddress: function(Client, types.UpdateSiteAddressInput): types.UpdateSiteAddressOutput, table
    updateSiteRackPhysicalProperties: function(Client, types.UpdateSiteRackPhysicalPropertiesInput): types.UpdateSiteRackPhysicalPropertiesOutput, table
end

local record M
    new: function(table): Client
end

return M
