local types = require("budgets.types")

local record Client
    createBudget: function(Client, types.CreateBudgetInput): types.CreateBudgetOutput, table
    createBudgetAction: function(Client, types.CreateBudgetActionInput): types.CreateBudgetActionOutput, table
    createNotification: function(Client, types.CreateNotificationInput): types.CreateNotificationOutput, table
    createSubscriber: function(Client, types.CreateSubscriberInput): types.CreateSubscriberOutput, table
    deleteBudget: function(Client, types.DeleteBudgetInput): types.DeleteBudgetOutput, table
    deleteBudgetAction: function(Client, types.DeleteBudgetActionInput): types.DeleteBudgetActionOutput, table
    deleteNotification: function(Client, types.DeleteNotificationInput): types.DeleteNotificationOutput, table
    deleteSubscriber: function(Client, types.DeleteSubscriberInput): types.DeleteSubscriberOutput, table
    describeBudget: function(Client, types.DescribeBudgetInput): types.DescribeBudgetOutput, table
    describeBudgetAction: function(Client, types.DescribeBudgetActionInput): types.DescribeBudgetActionOutput, table
    describeBudgetActionHistories: function(Client, types.DescribeBudgetActionHistoriesInput): types.DescribeBudgetActionHistoriesOutput, table
    describeBudgetActionsForAccount: function(Client, types.DescribeBudgetActionsForAccountInput): types.DescribeBudgetActionsForAccountOutput, table
    describeBudgetActionsForBudget: function(Client, types.DescribeBudgetActionsForBudgetInput): types.DescribeBudgetActionsForBudgetOutput, table
    describeBudgetNotificationsForAccount: function(Client, types.DescribeBudgetNotificationsForAccountInput): types.DescribeBudgetNotificationsForAccountOutput, table
    describeBudgetPerformanceHistory: function(Client, types.DescribeBudgetPerformanceHistoryInput): types.DescribeBudgetPerformanceHistoryOutput, table
    describeBudgets: function(Client, types.DescribeBudgetsInput): types.DescribeBudgetsOutput, table
    describeNotificationsForBudget: function(Client, types.DescribeNotificationsForBudgetInput): types.DescribeNotificationsForBudgetOutput, table
    describeSubscribersForNotification: function(Client, types.DescribeSubscribersForNotificationInput): types.DescribeSubscribersForNotificationOutput, table
    executeBudgetAction: function(Client, types.ExecuteBudgetActionInput): types.ExecuteBudgetActionOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateBudget: function(Client, types.UpdateBudgetInput): types.UpdateBudgetOutput, table
    updateBudgetAction: function(Client, types.UpdateBudgetActionInput): types.UpdateBudgetActionOutput, table
    updateNotification: function(Client, types.UpdateNotificationInput): types.UpdateNotificationOutput, table
    updateSubscriber: function(Client, types.UpdateSubscriberInput): types.UpdateSubscriberOutput, table
end

local record M
    new: function(table): Client
end

return M
