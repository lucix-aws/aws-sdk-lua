local record GetAccountActivityInput
    activityId: string
    languageCode: string
end

local record GetAccountActivityOutput
    activityId: string
    title: string
    description: string
    status: string
    instructionsUrl: string
    reward: ActivityReward
    estimatedTimeToCompleteInMinutes: number
    expiresAt: number
    startedAt: number
    completedAt: number
end

local record GetAccountPlanStateInput
end

local record GetAccountPlanStateOutput
    accountId: string
    accountPlanType: string
    accountPlanStatus: string
    accountPlanRemainingCredits: MonetaryAmount
    accountPlanExpirationDate: number
end

local record GetFreeTierUsageInput
    filter: Expression
    maxResults: number
    nextToken: string
end

local record GetFreeTierUsageOutput
    freeTierUsages: {FreeTierUsage}
    nextToken: string
end

local record ListAccountActivitiesInput
    filterActivityStatuses: {string}
    nextToken: string
    maxResults: number
    languageCode: string
end

local record ListAccountActivitiesOutput
    activities: {ActivitySummary}
    nextToken: string
end

local record UpgradeAccountPlanInput
    accountPlanType: string
end

local record UpgradeAccountPlanOutput
    accountId: string
    accountPlanType: string
    accountPlanStatus: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local type AccountPlanStatus = "NOT_STARTED" | "ACTIVE" | "EXPIRED"

local type ActivityStatus = "NOT_STARTED" | "IN_PROGRESS" | "COMPLETED" | "EXPIRING"

local type LanguageCode = "en-US" | "en-GB" | "id-ID" | "de-DE" | "es-ES" | "fr-FR" | "ja-JP" | "it-IT" | "pt-PT" | "ko-KR" | "zh-CN" | "zh-TW" | "tr-TR"

local type AccountPlanType = "FREE" | "PAID"

local record M
    GetAccountActivityInput: GetAccountActivityInput
    GetAccountActivityOutput: GetAccountActivityOutput
    GetAccountPlanStateInput: GetAccountPlanStateInput
    GetAccountPlanStateOutput: GetAccountPlanStateOutput
    GetFreeTierUsageInput: GetFreeTierUsageInput
    GetFreeTierUsageOutput: GetFreeTierUsageOutput
    ListAccountActivitiesInput: ListAccountActivitiesInput
    ListAccountActivitiesOutput: ListAccountActivitiesOutput
    UpgradeAccountPlanInput: UpgradeAccountPlanInput
    UpgradeAccountPlanOutput: UpgradeAccountPlanOutput
end

return M
