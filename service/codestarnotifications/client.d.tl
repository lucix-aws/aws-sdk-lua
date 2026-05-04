local types = require("codestarnotifications.types")

local record Client
    createNotificationRule: function(Client, types.CreateNotificationRuleInput): types.CreateNotificationRuleOutput, table
    deleteNotificationRule: function(Client, types.DeleteNotificationRuleInput): types.DeleteNotificationRuleOutput, table
    deleteTarget: function(Client, types.DeleteTargetInput): types.DeleteTargetOutput, table
    describeNotificationRule: function(Client, types.DescribeNotificationRuleInput): types.DescribeNotificationRuleOutput, table
    listEventTypes: function(Client, types.ListEventTypesInput): types.ListEventTypesOutput, table
    listNotificationRules: function(Client, types.ListNotificationRulesInput): types.ListNotificationRulesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listTargets: function(Client, types.ListTargetsInput): types.ListTargetsOutput, table
    subscribe: function(Client, types.SubscribeInput): types.SubscribeOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    unsubscribe: function(Client, types.UnsubscribeInput): types.UnsubscribeOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateNotificationRule: function(Client, types.UpdateNotificationRuleInput): types.UpdateNotificationRuleOutput, table
end

local record M
    new: function(table): Client
end

return M
