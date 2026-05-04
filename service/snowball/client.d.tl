local types = require("snowball.types")

local record Client
    cancelCluster: function(Client, types.CancelClusterInput): types.CancelClusterOutput, table
    cancelJob: function(Client, types.CancelJobInput): types.CancelJobOutput, table
    createAddress: function(Client, types.CreateAddressInput): types.CreateAddressOutput, table
    createCluster: function(Client, types.CreateClusterInput): types.CreateClusterOutput, table
    createJob: function(Client, types.CreateJobInput): types.CreateJobOutput, table
    createLongTermPricing: function(Client, types.CreateLongTermPricingInput): types.CreateLongTermPricingOutput, table
    createReturnShippingLabel: function(Client, types.CreateReturnShippingLabelInput): types.CreateReturnShippingLabelOutput, table
    describeAddress: function(Client, types.DescribeAddressInput): types.DescribeAddressOutput, table
    describeAddresses: function(Client, types.DescribeAddressesInput): types.DescribeAddressesOutput, table
    describeCluster: function(Client, types.DescribeClusterInput): types.DescribeClusterOutput, table
    describeJob: function(Client, types.DescribeJobInput): types.DescribeJobOutput, table
    describeReturnShippingLabel: function(Client, types.DescribeReturnShippingLabelInput): types.DescribeReturnShippingLabelOutput, table
    getJobManifest: function(Client, types.GetJobManifestInput): types.GetJobManifestOutput, table
    getJobUnlockCode: function(Client, types.GetJobUnlockCodeInput): types.GetJobUnlockCodeOutput, table
    getSnowballUsage: function(Client, types.GetSnowballUsageInput): types.GetSnowballUsageOutput, table
    getSoftwareUpdates: function(Client, types.GetSoftwareUpdatesInput): types.GetSoftwareUpdatesOutput, table
    listClusterJobs: function(Client, types.ListClusterJobsInput): types.ListClusterJobsOutput, table
    listClusters: function(Client, types.ListClustersInput): types.ListClustersOutput, table
    listCompatibleImages: function(Client, types.ListCompatibleImagesInput): types.ListCompatibleImagesOutput, table
    listJobs: function(Client, types.ListJobsInput): types.ListJobsOutput, table
    listLongTermPricing: function(Client, types.ListLongTermPricingInput): types.ListLongTermPricingOutput, table
    listPickupLocations: function(Client, types.ListPickupLocationsInput): types.ListPickupLocationsOutput, table
    listServiceVersions: function(Client, types.ListServiceVersionsInput): types.ListServiceVersionsOutput, table
    updateCluster: function(Client, types.UpdateClusterInput): types.UpdateClusterOutput, table
    updateJob: function(Client, types.UpdateJobInput): types.UpdateJobOutput, table
    updateJobShipmentState: function(Client, types.UpdateJobShipmentStateInput): types.UpdateJobShipmentStateOutput, table
    updateLongTermPricing: function(Client, types.UpdateLongTermPricingInput): types.UpdateLongTermPricingOutput, table
end

local record M
    new: function(table): Client
end

return M
