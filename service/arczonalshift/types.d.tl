local record CancelPracticeRunInput
    zonalShiftId: string
end

local record CancelPracticeRunOutput
    zonalShiftId: string
    resourceIdentifier: string
    awayFrom: string
    expiryTime: number
    startTime: number
    status: string
    comment: string
end

local record CancelZonalShiftInput
    zonalShiftId: string
end

local record CancelZonalShiftOutput
    zonalShiftId: string
    resourceIdentifier: string
    awayFrom: string
    expiryTime: number
    startTime: number
    status: string
    comment: string
end

local record CreatePracticeRunConfigurationInput
    resourceIdentifier: string
    blockedWindows: {string}
    blockedDates: {string}
    blockingAlarms: {ControlCondition}
    allowedWindows: {string}
    outcomeAlarms: {ControlCondition}
end

local record CreatePracticeRunConfigurationOutput
    arn: string
    name: string
    zonalAutoshiftStatus: string
    practiceRunConfiguration: PracticeRunConfiguration
end

local record DeletePracticeRunConfigurationInput
    resourceIdentifier: string
end

local record DeletePracticeRunConfigurationOutput
    arn: string
    name: string
    zonalAutoshiftStatus: string
end

local record GetAutoshiftObserverNotificationStatusInput
end

local record GetAutoshiftObserverNotificationStatusOutput
    status: string
end

local record GetManagedResourceInput
    resourceIdentifier: string
end

local record GetManagedResourceOutput
    arn: string
    name: string
    appliedWeights: {string : number}
    zonalShifts: {ZonalShiftInResource}
    autoshifts: {AutoshiftInResource}
    practiceRunConfiguration: PracticeRunConfiguration
    zonalAutoshiftStatus: string
end

local record ListAutoshiftsInput
    nextToken: string
    status: string
    maxResults: number
end

local record ListAutoshiftsOutput
    items: {AutoshiftSummary}
    nextToken: string
end

local record ListManagedResourcesInput
    nextToken: string
    maxResults: number
end

local record ListManagedResourcesOutput
    items: {ManagedResourceSummary}
    nextToken: string
end

local record ListZonalShiftsInput
    nextToken: string
    status: string
    maxResults: number
    resourceIdentifier: string
end

local record ListZonalShiftsOutput
    items: {ZonalShiftSummary}
    nextToken: string
end

local record StartPracticeRunInput
    resourceIdentifier: string
    awayFrom: string
    comment: string
end

local record StartPracticeRunOutput
    zonalShiftId: string
    resourceIdentifier: string
    awayFrom: string
    expiryTime: number
    startTime: number
    status: string
    comment: string
end

local record StartZonalShiftInput
    resourceIdentifier: string
    awayFrom: string
    expiresIn: string
    comment: string
end

local record StartZonalShiftOutput
    zonalShiftId: string
    resourceIdentifier: string
    awayFrom: string
    expiryTime: number
    startTime: number
    status: string
    comment: string
end

local record UpdateAutoshiftObserverNotificationStatusInput
    status: string
end

local record UpdateAutoshiftObserverNotificationStatusOutput
    status: string
end

local record UpdatePracticeRunConfigurationInput
    resourceIdentifier: string
    blockedWindows: {string}
    blockedDates: {string}
    blockingAlarms: {ControlCondition}
    allowedWindows: {string}
    outcomeAlarms: {ControlCondition}
end

local record UpdatePracticeRunConfigurationOutput
    arn: string
    name: string
    zonalAutoshiftStatus: string
    practiceRunConfiguration: PracticeRunConfiguration
end

local record UpdateZonalAutoshiftConfigurationInput
    resourceIdentifier: string
    zonalAutoshiftStatus: string
end

local record UpdateZonalAutoshiftConfigurationOutput
    resourceIdentifier: string
    zonalAutoshiftStatus: string
end

local record UpdateZonalShiftInput
    zonalShiftId: string
    comment: string
    expiresIn: string
end

local record UpdateZonalShiftOutput
    zonalShiftId: string
    resourceIdentifier: string
    awayFrom: string
    expiryTime: number
    startTime: number
    status: string
    comment: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    reason: string
    zonalShiftId: string
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
    reason: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    reason: string
    zonalShiftId: string
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
    reason: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    reason: string
    zonalShiftId: string
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
    reason: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    reason: string
    zonalShiftId: string
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
    reason: string
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
    reason: string
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
    reason: string
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
    reason: string
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
    reason: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    reason: string
    zonalShiftId: string
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
    reason: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    reason: string
    zonalShiftId: string
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
    reason: string
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
    reason: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    reason: string
    zonalShiftId: string
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
    reason: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    reason: string
    zonalShiftId: string
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
    reason: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    reason: string
    zonalShiftId: string
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
    reason: string
end

local type ZonalAutoshiftStatus = "ENABLED" | "DISABLED"

local type AutoshiftExecutionStatus = "ACTIVE" | "COMPLETED"

local type AutoshiftObserverNotificationStatus = "ENABLED" | "DISABLED"

local type ZonalShiftStatus = "ACTIVE" | "EXPIRED" | "CANCELED"

local record M
    CancelPracticeRunInput: CancelPracticeRunInput
    CancelPracticeRunOutput: CancelPracticeRunOutput
    CancelZonalShiftInput: CancelZonalShiftInput
    CancelZonalShiftOutput: CancelZonalShiftOutput
    CreatePracticeRunConfigurationInput: CreatePracticeRunConfigurationInput
    CreatePracticeRunConfigurationOutput: CreatePracticeRunConfigurationOutput
    DeletePracticeRunConfigurationInput: DeletePracticeRunConfigurationInput
    DeletePracticeRunConfigurationOutput: DeletePracticeRunConfigurationOutput
    GetAutoshiftObserverNotificationStatusInput: GetAutoshiftObserverNotificationStatusInput
    GetAutoshiftObserverNotificationStatusOutput: GetAutoshiftObserverNotificationStatusOutput
    GetManagedResourceInput: GetManagedResourceInput
    GetManagedResourceOutput: GetManagedResourceOutput
    ListAutoshiftsInput: ListAutoshiftsInput
    ListAutoshiftsOutput: ListAutoshiftsOutput
    ListManagedResourcesInput: ListManagedResourcesInput
    ListManagedResourcesOutput: ListManagedResourcesOutput
    ListZonalShiftsInput: ListZonalShiftsInput
    ListZonalShiftsOutput: ListZonalShiftsOutput
    StartPracticeRunInput: StartPracticeRunInput
    StartPracticeRunOutput: StartPracticeRunOutput
    StartZonalShiftInput: StartZonalShiftInput
    StartZonalShiftOutput: StartZonalShiftOutput
    UpdateAutoshiftObserverNotificationStatusInput: UpdateAutoshiftObserverNotificationStatusInput
    UpdateAutoshiftObserverNotificationStatusOutput: UpdateAutoshiftObserverNotificationStatusOutput
    UpdatePracticeRunConfigurationInput: UpdatePracticeRunConfigurationInput
    UpdatePracticeRunConfigurationOutput: UpdatePracticeRunConfigurationOutput
    UpdateZonalAutoshiftConfigurationInput: UpdateZonalAutoshiftConfigurationInput
    UpdateZonalAutoshiftConfigurationOutput: UpdateZonalAutoshiftConfigurationOutput
    UpdateZonalShiftInput: UpdateZonalShiftInput
    UpdateZonalShiftOutput: UpdateZonalShiftOutput
end

return M
