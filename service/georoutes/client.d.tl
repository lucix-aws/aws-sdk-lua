local types = require("georoutes.types")

local record Client
    calculateIsolines: function(Client, types.CalculateIsolinesInput): types.CalculateIsolinesOutput, table
    calculateRouteMatrix: function(Client, types.CalculateRouteMatrixInput): types.CalculateRouteMatrixOutput, table
    calculateRoutes: function(Client, types.CalculateRoutesInput): types.CalculateRoutesOutput, table
    optimizeWaypoints: function(Client, types.OptimizeWaypointsInput): types.OptimizeWaypointsOutput, table
    snapToRoads: function(Client, types.SnapToRoadsInput): types.SnapToRoadsOutput, table
end

local record M
    new: function(table): Client
end

return M
