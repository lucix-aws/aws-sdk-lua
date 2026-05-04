local types = require("migrationhubconfig.types")

local record Client
    createHomeRegionControl: function(Client, types.CreateHomeRegionControlInput): types.CreateHomeRegionControlOutput, table
    deleteHomeRegionControl: function(Client, types.DeleteHomeRegionControlInput): types.DeleteHomeRegionControlOutput, table
    describeHomeRegionControls: function(Client, types.DescribeHomeRegionControlsInput): types.DescribeHomeRegionControlsOutput, table
    getHomeRegion: function(Client, types.GetHomeRegionInput): types.GetHomeRegionOutput, table
end

local record M
    new: function(table): Client
end

return M
