local types = require("iotdataplane.types")

local record Client
    deleteConnection: function(Client, types.DeleteConnectionInput): types.DeleteConnectionOutput, table
    deleteThingShadow: function(Client, types.DeleteThingShadowInput): types.DeleteThingShadowOutput, table
    getRetainedMessage: function(Client, types.GetRetainedMessageInput): types.GetRetainedMessageOutput, table
    getThingShadow: function(Client, types.GetThingShadowInput): types.GetThingShadowOutput, table
    listNamedShadowsForThing: function(Client, types.ListNamedShadowsForThingInput): types.ListNamedShadowsForThingOutput, table
    listRetainedMessages: function(Client, types.ListRetainedMessagesInput): types.ListRetainedMessagesOutput, table
    publish: function(Client, types.PublishInput): types.PublishOutput, table
    updateThingShadow: function(Client, types.UpdateThingShadowInput): types.UpdateThingShadowOutput, table
end

local record M
    new: function(table): Client
end

return M
