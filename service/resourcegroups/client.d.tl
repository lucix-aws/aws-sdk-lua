local types = require("resourcegroups.types")

local record Client
    cancelTagSyncTask: function(Client, types.CancelTagSyncTaskInput): types.CancelTagSyncTaskOutput, table
    createGroup: function(Client, types.CreateGroupInput): types.CreateGroupOutput, table
    deleteGroup: function(Client, types.DeleteGroupInput): types.DeleteGroupOutput, table
    getAccountSettings: function(Client, types.GetAccountSettingsInput): types.GetAccountSettingsOutput, table
    getGroup: function(Client, types.GetGroupInput): types.GetGroupOutput, table
    getGroupConfiguration: function(Client, types.GetGroupConfigurationInput): types.GetGroupConfigurationOutput, table
    getGroupQuery: function(Client, types.GetGroupQueryInput): types.GetGroupQueryOutput, table
    getTags: function(Client, types.GetTagsInput): types.GetTagsOutput, table
    getTagSyncTask: function(Client, types.GetTagSyncTaskInput): types.GetTagSyncTaskOutput, table
    groupResources: function(Client, types.GroupResourcesInput): types.GroupResourcesOutput, table
    listGroupingStatuses: function(Client, types.ListGroupingStatusesInput): types.ListGroupingStatusesOutput, table
    listGroupResources: function(Client, types.ListGroupResourcesInput): types.ListGroupResourcesOutput, table
    listGroups: function(Client, types.ListGroupsInput): types.ListGroupsOutput, table
    listTagSyncTasks: function(Client, types.ListTagSyncTasksInput): types.ListTagSyncTasksOutput, table
    putGroupConfiguration: function(Client, types.PutGroupConfigurationInput): types.PutGroupConfigurationOutput, table
    searchResources: function(Client, types.SearchResourcesInput): types.SearchResourcesOutput, table
    startTagSyncTask: function(Client, types.StartTagSyncTaskInput): types.StartTagSyncTaskOutput, table
    tag: function(Client, types.TagInput): types.TagOutput, table
    ungroupResources: function(Client, types.UngroupResourcesInput): types.UngroupResourcesOutput, table
    untag: function(Client, types.UntagInput): types.UntagOutput, table
    updateAccountSettings: function(Client, types.UpdateAccountSettingsInput): types.UpdateAccountSettingsOutput, table
    updateGroup: function(Client, types.UpdateGroupInput): types.UpdateGroupOutput, table
    updateGroupQuery: function(Client, types.UpdateGroupQueryInput): types.UpdateGroupQueryOutput, table
end

local record M
    new: function(table): Client
end

return M
