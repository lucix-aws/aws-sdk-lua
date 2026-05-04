local types = require("internetmonitor.types")

local record Client
    createMonitor: function(Client, types.CreateMonitorInput): types.CreateMonitorOutput, table
    deleteMonitor: function(Client, types.DeleteMonitorInput): types.DeleteMonitorOutput, table
    getHealthEvent: function(Client, types.GetHealthEventInput): types.GetHealthEventOutput, table
    getInternetEvent: function(Client, types.GetInternetEventInput): types.GetInternetEventOutput, table
    getMonitor: function(Client, types.GetMonitorInput): types.GetMonitorOutput, table
    getQueryResults: function(Client, types.GetQueryResultsInput): types.GetQueryResultsOutput, table
    getQueryStatus: function(Client, types.GetQueryStatusInput): types.GetQueryStatusOutput, table
    listHealthEvents: function(Client, types.ListHealthEventsInput): types.ListHealthEventsOutput, table
    listInternetEvents: function(Client, types.ListInternetEventsInput): types.ListInternetEventsOutput, table
    listMonitors: function(Client, types.ListMonitorsInput): types.ListMonitorsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    startQuery: function(Client, types.StartQueryInput): types.StartQueryOutput, table
    stopQuery: function(Client, types.StopQueryInput): types.StopQueryOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateMonitor: function(Client, types.UpdateMonitorInput): types.UpdateMonitorOutput, table
end

local record M
    new: function(table): Client
end

return M
