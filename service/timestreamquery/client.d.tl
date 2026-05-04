local types = require("timestreamquery.types")

local record Client
    cancelQuery: function(Client, types.CancelQueryInput): types.CancelQueryOutput, table
    createScheduledQuery: function(Client, types.CreateScheduledQueryInput): types.CreateScheduledQueryOutput, table
    deleteScheduledQuery: function(Client, types.DeleteScheduledQueryInput): types.DeleteScheduledQueryOutput, table
    describeAccountSettings: function(Client, types.DescribeAccountSettingsInput): types.DescribeAccountSettingsOutput, table
    describeEndpoints: function(Client, types.DescribeEndpointsInput): types.DescribeEndpointsOutput, table
    describeScheduledQuery: function(Client, types.DescribeScheduledQueryInput): types.DescribeScheduledQueryOutput, table
    executeScheduledQuery: function(Client, types.ExecuteScheduledQueryInput): types.ExecuteScheduledQueryOutput, table
    listScheduledQueries: function(Client, types.ListScheduledQueriesInput): types.ListScheduledQueriesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    prepareQuery: function(Client, types.PrepareQueryInput): types.PrepareQueryOutput, table
    query: function(Client, types.QueryInput): types.QueryOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateAccountSettings: function(Client, types.UpdateAccountSettingsInput): types.UpdateAccountSettingsOutput, table
    updateScheduledQuery: function(Client, types.UpdateScheduledQueryInput): types.UpdateScheduledQueryOutput, table
end

local record M
    new: function(table): Client
end

return M
