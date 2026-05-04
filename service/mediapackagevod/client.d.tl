local types = require("mediapackagevod.types")

local record Client
    configureLogs: function(Client, types.ConfigureLogsInput): types.ConfigureLogsOutput, table
    createAsset: function(Client, types.CreateAssetInput): types.CreateAssetOutput, table
    createPackagingConfiguration: function(Client, types.CreatePackagingConfigurationInput): types.CreatePackagingConfigurationOutput, table
    createPackagingGroup: function(Client, types.CreatePackagingGroupInput): types.CreatePackagingGroupOutput, table
    deleteAsset: function(Client, types.DeleteAssetInput): types.DeleteAssetOutput, table
    deletePackagingConfiguration: function(Client, types.DeletePackagingConfigurationInput): types.DeletePackagingConfigurationOutput, table
    deletePackagingGroup: function(Client, types.DeletePackagingGroupInput): types.DeletePackagingGroupOutput, table
    describeAsset: function(Client, types.DescribeAssetInput): types.DescribeAssetOutput, table
    describePackagingConfiguration: function(Client, types.DescribePackagingConfigurationInput): types.DescribePackagingConfigurationOutput, table
    describePackagingGroup: function(Client, types.DescribePackagingGroupInput): types.DescribePackagingGroupOutput, table
    listAssets: function(Client, types.ListAssetsInput): types.ListAssetsOutput, table
    listPackagingConfigurations: function(Client, types.ListPackagingConfigurationsInput): types.ListPackagingConfigurationsOutput, table
    listPackagingGroups: function(Client, types.ListPackagingGroupsInput): types.ListPackagingGroupsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updatePackagingGroup: function(Client, types.UpdatePackagingGroupInput): types.UpdatePackagingGroupOutput, table
end

local record M
    new: function(table): Client
end

return M
