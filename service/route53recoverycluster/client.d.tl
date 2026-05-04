local types = require("route53recoverycluster.types")

local record Client
    getRoutingControlState: function(Client, types.GetRoutingControlStateInput): types.GetRoutingControlStateOutput, table
    listRoutingControls: function(Client, types.ListRoutingControlsInput): types.ListRoutingControlsOutput, table
    updateRoutingControlState: function(Client, types.UpdateRoutingControlStateInput): types.UpdateRoutingControlStateOutput, table
    updateRoutingControlStates: function(Client, types.UpdateRoutingControlStatesInput): types.UpdateRoutingControlStatesOutput, table
end

local record M
    new: function(table): Client
end

return M
