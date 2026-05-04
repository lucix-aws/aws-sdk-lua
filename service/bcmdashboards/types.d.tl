local record CreateDashboardInput
    name: string
    description: string
    widgets: {Widget}
    resourceTags: {ResourceTag}
end

local record CreateDashboardOutput
    arn: string
end

local record CreateScheduledReportInput
    scheduledReport: ScheduledReportInput
    resourceTags: {ResourceTag}
    clientToken: string
end

local record CreateScheduledReportOutput
    arn: string
end

local record DeleteDashboardInput
    arn: string
end

local record DeleteDashboardOutput
    arn: string
end

local record DeleteScheduledReportInput
    arn: string
end

local record DeleteScheduledReportOutput
    arn: string
end

local record ExecuteScheduledReportInput
    arn: string
    clientToken: string
    dryRun: boolean
end

local record ExecuteScheduledReportOutput
    healthStatus: HealthStatus
    executionTriggered: boolean
end

local record GetDashboardInput
    arn: string
end

local record GetDashboardOutput
    arn: string
    name: string
    description: string
    type: string
    widgets: {Widget}
    createdAt: number
    updatedAt: number
end

local record GetResourcePolicyInput
    resourceArn: string
end

local record GetResourcePolicyOutput
    resourceArn: string
    policyDocument: string
end

local record GetScheduledReportInput
    arn: string
end

local record GetScheduledReportOutput
    scheduledReport: ScheduledReport
end

local record ListDashboardsInput
    maxResults: number
    nextToken: string
end

local record ListDashboardsOutput
    dashboards: {DashboardReference}
    nextToken: string
end

local record ListScheduledReportsInput
    nextToken: string
    maxResults: number
end

local record ListScheduledReportsOutput
    scheduledReports: {ScheduledReportSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    resourceTags: {ResourceTag}
end

local record TagResourceInput
    resourceArn: string
    resourceTags: {ResourceTag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceArn: string
    resourceTagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateDashboardInput
    arn: string
    name: string
    description: string
    widgets: {Widget}
end

local record UpdateDashboardOutput
    arn: string
end

local record UpdateScheduledReportInput
    arn: string
    name: string
    description: string
    dashboardArn: string
    scheduledReportExecutionRoleArn: string
    scheduleConfig: ScheduleConfig
    widgetIds: {string}
    widgetDateRangeOverride: DateTimeRange
    clearWidgetIds: boolean
    clearWidgetDateRangeOverride: boolean
end

local record UpdateScheduledReportOutput
    arn: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
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

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
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

local record AccessDeniedException
    message: string
end

local record ConflictException
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

local record AccessDeniedException
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

local record ThrottlingException
    message: string
end

local record ValidationException
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

local record AccessDeniedException
    message: string
end

local record ConflictException
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

local type DashboardType = "CUSTOM"

local record M
    CreateDashboardInput: CreateDashboardInput
    CreateDashboardOutput: CreateDashboardOutput
    CreateScheduledReportInput: CreateScheduledReportInput
    CreateScheduledReportOutput: CreateScheduledReportOutput
    DeleteDashboardInput: DeleteDashboardInput
    DeleteDashboardOutput: DeleteDashboardOutput
    DeleteScheduledReportInput: DeleteScheduledReportInput
    DeleteScheduledReportOutput: DeleteScheduledReportOutput
    ExecuteScheduledReportInput: ExecuteScheduledReportInput
    ExecuteScheduledReportOutput: ExecuteScheduledReportOutput
    GetDashboardInput: GetDashboardInput
    GetDashboardOutput: GetDashboardOutput
    GetResourcePolicyInput: GetResourcePolicyInput
    GetResourcePolicyOutput: GetResourcePolicyOutput
    GetScheduledReportInput: GetScheduledReportInput
    GetScheduledReportOutput: GetScheduledReportOutput
    ListDashboardsInput: ListDashboardsInput
    ListDashboardsOutput: ListDashboardsOutput
    ListScheduledReportsInput: ListScheduledReportsInput
    ListScheduledReportsOutput: ListScheduledReportsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateDashboardInput: UpdateDashboardInput
    UpdateDashboardOutput: UpdateDashboardOutput
    UpdateScheduledReportInput: UpdateScheduledReportInput
    UpdateScheduledReportOutput: UpdateScheduledReportOutput
end

return M
