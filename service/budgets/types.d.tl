local record CreateBudgetInput
    AccountId: string
    Budget: Budget
    NotificationsWithSubscribers: {NotificationWithSubscribers}
    ResourceTags: {ResourceTag}
end

local record CreateBudgetOutput
end

local record CreateBudgetActionInput
    AccountId: string
    BudgetName: string
    NotificationType: string
    ActionType: string
    ActionThreshold: ActionThreshold
    Definition: Definition
    ExecutionRoleArn: string
    ApprovalModel: string
    Subscribers: {Subscriber}
    ResourceTags: {ResourceTag}
end

local record CreateBudgetActionOutput
    AccountId: string
    BudgetName: string
    ActionId: string
end

local record CreateNotificationInput
    AccountId: string
    BudgetName: string
    Notification: Notification
    Subscribers: {Subscriber}
end

local record CreateNotificationOutput
end

local record CreateSubscriberInput
    AccountId: string
    BudgetName: string
    Notification: Notification
    Subscriber: Subscriber
end

local record CreateSubscriberOutput
end

local record DeleteBudgetInput
    AccountId: string
    BudgetName: string
end

local record DeleteBudgetOutput
end

local record DeleteBudgetActionInput
    AccountId: string
    BudgetName: string
    ActionId: string
end

local record DeleteBudgetActionOutput
    AccountId: string
    BudgetName: string
    Action: Action
end

local record DeleteNotificationInput
    AccountId: string
    BudgetName: string
    Notification: Notification
end

local record DeleteNotificationOutput
end

local record DeleteSubscriberInput
    AccountId: string
    BudgetName: string
    Notification: Notification
    Subscriber: Subscriber
end

local record DeleteSubscriberOutput
end

local record DescribeBudgetInput
    AccountId: string
    BudgetName: string
    ShowFilterExpression: boolean
end

local record DescribeBudgetOutput
    Budget: Budget
end

local record DescribeBudgetActionInput
    AccountId: string
    BudgetName: string
    ActionId: string
end

local record DescribeBudgetActionOutput
    AccountId: string
    BudgetName: string
    Action: Action
end

local record DescribeBudgetActionHistoriesInput
    AccountId: string
    BudgetName: string
    ActionId: string
    TimePeriod: TimePeriod
    MaxResults: number
    NextToken: string
end

local record DescribeBudgetActionHistoriesOutput
    ActionHistories: {ActionHistory}
    NextToken: string
end

local record DescribeBudgetActionsForAccountInput
    AccountId: string
    MaxResults: number
    NextToken: string
end

local record DescribeBudgetActionsForAccountOutput
    Actions: {Action}
    NextToken: string
end

local record DescribeBudgetActionsForBudgetInput
    AccountId: string
    BudgetName: string
    MaxResults: number
    NextToken: string
end

local record DescribeBudgetActionsForBudgetOutput
    Actions: {Action}
    NextToken: string
end

local record DescribeBudgetNotificationsForAccountInput
    AccountId: string
    MaxResults: number
    NextToken: string
end

local record DescribeBudgetNotificationsForAccountOutput
    BudgetNotificationsForAccount: {BudgetNotificationsForAccount}
    NextToken: string
end

local record DescribeBudgetPerformanceHistoryInput
    AccountId: string
    BudgetName: string
    TimePeriod: TimePeriod
    MaxResults: number
    NextToken: string
end

local record DescribeBudgetPerformanceHistoryOutput
    BudgetPerformanceHistory: BudgetPerformanceHistory
    NextToken: string
end

local record DescribeBudgetsInput
    AccountId: string
    MaxResults: number
    NextToken: string
    ShowFilterExpression: boolean
end

local record DescribeBudgetsOutput
    Budgets: {Budget}
    NextToken: string
end

local record DescribeNotificationsForBudgetInput
    AccountId: string
    BudgetName: string
    MaxResults: number
    NextToken: string
end

local record DescribeNotificationsForBudgetOutput
    Notifications: {Notification}
    NextToken: string
end

local record DescribeSubscribersForNotificationInput
    AccountId: string
    BudgetName: string
    Notification: Notification
    MaxResults: number
    NextToken: string
end

local record DescribeSubscribersForNotificationOutput
    Subscribers: {Subscriber}
    NextToken: string
end

local record ExecuteBudgetActionInput
    AccountId: string
    BudgetName: string
    ActionId: string
    ExecutionType: string
end

local record ExecuteBudgetActionOutput
    AccountId: string
    BudgetName: string
    ActionId: string
    ExecutionType: string
end

local record ListTagsForResourceInput
    ResourceARN: string
end

local record ListTagsForResourceOutput
    ResourceTags: {ResourceTag}
end

local record TagResourceInput
    ResourceARN: string
    ResourceTags: {ResourceTag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceARN: string
    ResourceTagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateBudgetInput
    AccountId: string
    NewBudget: Budget
end

local record UpdateBudgetOutput
end

local record UpdateBudgetActionInput
    AccountId: string
    BudgetName: string
    ActionId: string
    NotificationType: string
    ActionThreshold: ActionThreshold
    Definition: Definition
    ExecutionRoleArn: string
    ApprovalModel: string
    Subscribers: {Subscriber}
end

local record UpdateBudgetActionOutput
    AccountId: string
    BudgetName: string
    OldAction: Action
    NewAction: Action
end

local record UpdateNotificationInput
    AccountId: string
    BudgetName: string
    OldNotification: Notification
    NewNotification: Notification
end

local record UpdateNotificationOutput
end

local record UpdateSubscriberInput
    AccountId: string
    BudgetName: string
    Notification: Notification
    OldSubscriber: Subscriber
    NewSubscriber: Subscriber
end

local record UpdateSubscriberOutput
end

local record AccessDeniedException
    Message: string
end

local record BillingViewHealthStatusException
    Message: string
end

local record CreationLimitExceededException
    Message: string
end

local record DuplicateRecordException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record CreationLimitExceededException
    Message: string
end

local record DuplicateRecordException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record CreationLimitExceededException
    Message: string
end

local record DuplicateRecordException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record CreationLimitExceededException
    Message: string
end

local record DuplicateRecordException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ResourceLockedException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ExpiredNextTokenException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BillingViewHealthStatusException
    Message: string
end

local record ExpiredNextTokenException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ExpiredNextTokenException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ExpiredNextTokenException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ExpiredNextTokenException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ResourceLockedException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BillingViewHealthStatusException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ResourceLockedException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DuplicateRecordException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DuplicateRecordException
    Message: string
end

local record InternalErrorException
    Message: string
end

local record InvalidParameterException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local type ExecutionType = "APPROVE_BUDGET_ACTION" | "RETRY_BUDGET_ACTION" | "REVERSE_BUDGET_ACTION" | "RESET_BUDGET_ACTION"

local type ApprovalModel = "AUTOMATIC" | "MANUAL"

local type NotificationType = "ACTUAL" | "FORECASTED"

local type ActionType = "APPLY_IAM_POLICY" | "APPLY_SCP_POLICY" | "RUN_SSM_DOCUMENTS"

local record M
    CreateBudgetInput: CreateBudgetInput
    CreateBudgetOutput: CreateBudgetOutput
    CreateBudgetActionInput: CreateBudgetActionInput
    CreateBudgetActionOutput: CreateBudgetActionOutput
    CreateNotificationInput: CreateNotificationInput
    CreateNotificationOutput: CreateNotificationOutput
    CreateSubscriberInput: CreateSubscriberInput
    CreateSubscriberOutput: CreateSubscriberOutput
    DeleteBudgetInput: DeleteBudgetInput
    DeleteBudgetOutput: DeleteBudgetOutput
    DeleteBudgetActionInput: DeleteBudgetActionInput
    DeleteBudgetActionOutput: DeleteBudgetActionOutput
    DeleteNotificationInput: DeleteNotificationInput
    DeleteNotificationOutput: DeleteNotificationOutput
    DeleteSubscriberInput: DeleteSubscriberInput
    DeleteSubscriberOutput: DeleteSubscriberOutput
    DescribeBudgetInput: DescribeBudgetInput
    DescribeBudgetOutput: DescribeBudgetOutput
    DescribeBudgetActionInput: DescribeBudgetActionInput
    DescribeBudgetActionOutput: DescribeBudgetActionOutput
    DescribeBudgetActionHistoriesInput: DescribeBudgetActionHistoriesInput
    DescribeBudgetActionHistoriesOutput: DescribeBudgetActionHistoriesOutput
    DescribeBudgetActionsForAccountInput: DescribeBudgetActionsForAccountInput
    DescribeBudgetActionsForAccountOutput: DescribeBudgetActionsForAccountOutput
    DescribeBudgetActionsForBudgetInput: DescribeBudgetActionsForBudgetInput
    DescribeBudgetActionsForBudgetOutput: DescribeBudgetActionsForBudgetOutput
    DescribeBudgetNotificationsForAccountInput: DescribeBudgetNotificationsForAccountInput
    DescribeBudgetNotificationsForAccountOutput: DescribeBudgetNotificationsForAccountOutput
    DescribeBudgetPerformanceHistoryInput: DescribeBudgetPerformanceHistoryInput
    DescribeBudgetPerformanceHistoryOutput: DescribeBudgetPerformanceHistoryOutput
    DescribeBudgetsInput: DescribeBudgetsInput
    DescribeBudgetsOutput: DescribeBudgetsOutput
    DescribeNotificationsForBudgetInput: DescribeNotificationsForBudgetInput
    DescribeNotificationsForBudgetOutput: DescribeNotificationsForBudgetOutput
    DescribeSubscribersForNotificationInput: DescribeSubscribersForNotificationInput
    DescribeSubscribersForNotificationOutput: DescribeSubscribersForNotificationOutput
    ExecuteBudgetActionInput: ExecuteBudgetActionInput
    ExecuteBudgetActionOutput: ExecuteBudgetActionOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateBudgetInput: UpdateBudgetInput
    UpdateBudgetOutput: UpdateBudgetOutput
    UpdateBudgetActionInput: UpdateBudgetActionInput
    UpdateBudgetActionOutput: UpdateBudgetActionOutput
    UpdateNotificationInput: UpdateNotificationInput
    UpdateNotificationOutput: UpdateNotificationOutput
    UpdateSubscriberInput: UpdateSubscriberInput
    UpdateSubscriberOutput: UpdateSubscriberOutput
end

return M
