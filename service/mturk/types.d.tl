local record AcceptQualificationRequestInput
    QualificationRequestId: string
    IntegerValue: number
end

local record AcceptQualificationRequestOutput
end

local record ApproveAssignmentInput
    AssignmentId: string
    RequesterFeedback: string
    OverrideRejection: boolean
end

local record ApproveAssignmentOutput
end

local record AssociateQualificationWithWorkerInput
    QualificationTypeId: string
    WorkerId: string
    IntegerValue: number
    SendNotification: boolean
end

local record AssociateQualificationWithWorkerOutput
end

local record CreateAdditionalAssignmentsForHITInput
    HITId: string
    NumberOfAdditionalAssignments: number
    UniqueRequestToken: string
end

local record CreateAdditionalAssignmentsForHITOutput
end

local record CreateHITInput
    MaxAssignments: number
    AutoApprovalDelayInSeconds: number
    LifetimeInSeconds: number
    AssignmentDurationInSeconds: number
    Reward: string
    Title: string
    Keywords: string
    Description: string
    Question: string
    RequesterAnnotation: string
    QualificationRequirements: {QualificationRequirement}
    UniqueRequestToken: string
    AssignmentReviewPolicy: ReviewPolicy
    HITReviewPolicy: ReviewPolicy
    HITLayoutId: string
    HITLayoutParameters: {HITLayoutParameter}
end

local record CreateHITOutput
    HIT: HIT
end

local record CreateHITTypeInput
    AutoApprovalDelayInSeconds: number
    AssignmentDurationInSeconds: number
    Reward: string
    Title: string
    Keywords: string
    Description: string
    QualificationRequirements: {QualificationRequirement}
end

local record CreateHITTypeOutput
    HITTypeId: string
end

local record CreateHITWithHITTypeInput
    HITTypeId: string
    MaxAssignments: number
    LifetimeInSeconds: number
    Question: string
    RequesterAnnotation: string
    UniqueRequestToken: string
    AssignmentReviewPolicy: ReviewPolicy
    HITReviewPolicy: ReviewPolicy
    HITLayoutId: string
    HITLayoutParameters: {HITLayoutParameter}
end

local record CreateHITWithHITTypeOutput
    HIT: HIT
end

local record CreateQualificationTypeInput
    Name: string
    Keywords: string
    Description: string
    QualificationTypeStatus: string
    RetryDelayInSeconds: number
    Test: string
    AnswerKey: string
    TestDurationInSeconds: number
    AutoGranted: boolean
    AutoGrantedValue: number
end

local record CreateQualificationTypeOutput
    QualificationType: QualificationType
end

local record CreateWorkerBlockInput
    WorkerId: string
    Reason: string
end

local record CreateWorkerBlockOutput
end

local record DeleteHITInput
    HITId: string
end

local record DeleteHITOutput
end

local record DeleteQualificationTypeInput
    QualificationTypeId: string
end

local record DeleteQualificationTypeOutput
end

local record DeleteWorkerBlockInput
    WorkerId: string
    Reason: string
end

local record DeleteWorkerBlockOutput
end

local record DisassociateQualificationFromWorkerInput
    WorkerId: string
    QualificationTypeId: string
    Reason: string
end

local record DisassociateQualificationFromWorkerOutput
end

local record GetAccountBalanceInput
end

local record GetAccountBalanceOutput
    AvailableBalance: string
    OnHoldBalance: string
end

local record GetAssignmentInput
    AssignmentId: string
end

local record GetAssignmentOutput
    Assignment: Assignment
    HIT: HIT
end

local record GetFileUploadURLInput
    AssignmentId: string
    QuestionIdentifier: string
end

local record GetFileUploadURLOutput
    FileUploadURL: string
end

local record GetHITInput
    HITId: string
end

local record GetHITOutput
    HIT: HIT
end

local record GetQualificationScoreInput
    QualificationTypeId: string
    WorkerId: string
end

local record GetQualificationScoreOutput
    Qualification: Qualification
end

local record GetQualificationTypeInput
    QualificationTypeId: string
end

local record GetQualificationTypeOutput
    QualificationType: QualificationType
end

local record ListAssignmentsForHITInput
    HITId: string
    NextToken: string
    MaxResults: number
    AssignmentStatuses: {string}
end

local record ListAssignmentsForHITOutput
    NextToken: string
    NumResults: number
    Assignments: {Assignment}
end

local record ListBonusPaymentsInput
    HITId: string
    AssignmentId: string
    NextToken: string
    MaxResults: number
end

local record ListBonusPaymentsOutput
    NumResults: number
    NextToken: string
    BonusPayments: {BonusPayment}
end

local record ListHITsInput
    NextToken: string
    MaxResults: number
end

local record ListHITsOutput
    NextToken: string
    NumResults: number
    HITs: {HIT}
end

local record ListHITsForQualificationTypeInput
    QualificationTypeId: string
    NextToken: string
    MaxResults: number
end

local record ListHITsForQualificationTypeOutput
    NextToken: string
    NumResults: number
    HITs: {HIT}
end

local record ListQualificationRequestsInput
    QualificationTypeId: string
    NextToken: string
    MaxResults: number
end

local record ListQualificationRequestsOutput
    NumResults: number
    NextToken: string
    QualificationRequests: {QualificationRequest}
end

local record ListQualificationTypesInput
    Query: string
    MustBeRequestable: boolean
    MustBeOwnedByCaller: boolean
    NextToken: string
    MaxResults: number
end

local record ListQualificationTypesOutput
    NumResults: number
    NextToken: string
    QualificationTypes: {QualificationType}
end

local record ListReviewableHITsInput
    HITTypeId: string
    Status: string
    NextToken: string
    MaxResults: number
end

local record ListReviewableHITsOutput
    NextToken: string
    NumResults: number
    HITs: {HIT}
end

local record ListReviewPolicyResultsForHITInput
    HITId: string
    PolicyLevels: {string}
    RetrieveActions: boolean
    RetrieveResults: boolean
    NextToken: string
    MaxResults: number
end

local record ListReviewPolicyResultsForHITOutput
    HITId: string
    AssignmentReviewPolicy: ReviewPolicy
    HITReviewPolicy: ReviewPolicy
    AssignmentReviewReport: ReviewReport
    HITReviewReport: ReviewReport
    NextToken: string
end

local record ListWorkerBlocksInput
    NextToken: string
    MaxResults: number
end

local record ListWorkerBlocksOutput
    NextToken: string
    NumResults: number
    WorkerBlocks: {WorkerBlock}
end

local record ListWorkersWithQualificationTypeInput
    QualificationTypeId: string
    Status: string
    NextToken: string
    MaxResults: number
end

local record ListWorkersWithQualificationTypeOutput
    NextToken: string
    NumResults: number
    Qualifications: {Qualification}
end

local record NotifyWorkersInput
    Subject: string
    MessageText: string
    WorkerIds: {string}
end

local record NotifyWorkersOutput
    NotifyWorkersFailureStatuses: {NotifyWorkersFailureStatus}
end

local record RejectAssignmentInput
    AssignmentId: string
    RequesterFeedback: string
end

local record RejectAssignmentOutput
end

local record RejectQualificationRequestInput
    QualificationRequestId: string
    Reason: string
end

local record RejectQualificationRequestOutput
end

local record SendBonusInput
    WorkerId: string
    BonusAmount: string
    AssignmentId: string
    Reason: string
    UniqueRequestToken: string
end

local record SendBonusOutput
end

local record SendTestEventNotificationInput
    Notification: NotificationSpecification
    TestEventType: string
end

local record SendTestEventNotificationOutput
end

local record UpdateExpirationForHITInput
    HITId: string
    ExpireAt: number
end

local record UpdateExpirationForHITOutput
end

local record UpdateHITReviewStatusInput
    HITId: string
    Revert: boolean
end

local record UpdateHITReviewStatusOutput
end

local record UpdateHITTypeOfHITInput
    HITId: string
    HITTypeId: string
end

local record UpdateHITTypeOfHITOutput
end

local record UpdateNotificationSettingsInput
    HITTypeId: string
    Notification: NotificationSpecification
    Active: boolean
end

local record UpdateNotificationSettingsOutput
end

local record UpdateQualificationTypeInput
    QualificationTypeId: string
    Description: string
    QualificationTypeStatus: string
    Test: string
    AnswerKey: string
    TestDurationInSeconds: number
    RetryDelayInSeconds: number
    AutoGranted: boolean
    AutoGrantedValue: number
end

local record UpdateQualificationTypeOutput
    QualificationType: QualificationType
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local record RequestError
    Message: string
    TurkErrorCode: string
end

local record ServiceFault
    Message: string
    TurkErrorCode: string
end

local type EventType = "AssignmentAccepted" | "AssignmentAbandoned" | "AssignmentReturned" | "AssignmentSubmitted" | "AssignmentRejected" | "AssignmentApproved" | "HITCreated" | "HITExpired" | "HITReviewable" | "HITExtended" | "HITDisposed" | "Ping"

local type ReviewableHITStatus = "Reviewable" | "Reviewing"

local type QualificationStatus = "Granted" | "Revoked"

local type QualificationTypeStatus = "Active" | "Inactive"

local record M
    AcceptQualificationRequestInput: AcceptQualificationRequestInput
    AcceptQualificationRequestOutput: AcceptQualificationRequestOutput
    ApproveAssignmentInput: ApproveAssignmentInput
    ApproveAssignmentOutput: ApproveAssignmentOutput
    AssociateQualificationWithWorkerInput: AssociateQualificationWithWorkerInput
    AssociateQualificationWithWorkerOutput: AssociateQualificationWithWorkerOutput
    CreateAdditionalAssignmentsForHITInput: CreateAdditionalAssignmentsForHITInput
    CreateAdditionalAssignmentsForHITOutput: CreateAdditionalAssignmentsForHITOutput
    CreateHITInput: CreateHITInput
    CreateHITOutput: CreateHITOutput
    CreateHITTypeInput: CreateHITTypeInput
    CreateHITTypeOutput: CreateHITTypeOutput
    CreateHITWithHITTypeInput: CreateHITWithHITTypeInput
    CreateHITWithHITTypeOutput: CreateHITWithHITTypeOutput
    CreateQualificationTypeInput: CreateQualificationTypeInput
    CreateQualificationTypeOutput: CreateQualificationTypeOutput
    CreateWorkerBlockInput: CreateWorkerBlockInput
    CreateWorkerBlockOutput: CreateWorkerBlockOutput
    DeleteHITInput: DeleteHITInput
    DeleteHITOutput: DeleteHITOutput
    DeleteQualificationTypeInput: DeleteQualificationTypeInput
    DeleteQualificationTypeOutput: DeleteQualificationTypeOutput
    DeleteWorkerBlockInput: DeleteWorkerBlockInput
    DeleteWorkerBlockOutput: DeleteWorkerBlockOutput
    DisassociateQualificationFromWorkerInput: DisassociateQualificationFromWorkerInput
    DisassociateQualificationFromWorkerOutput: DisassociateQualificationFromWorkerOutput
    GetAccountBalanceInput: GetAccountBalanceInput
    GetAccountBalanceOutput: GetAccountBalanceOutput
    GetAssignmentInput: GetAssignmentInput
    GetAssignmentOutput: GetAssignmentOutput
    GetFileUploadURLInput: GetFileUploadURLInput
    GetFileUploadURLOutput: GetFileUploadURLOutput
    GetHITInput: GetHITInput
    GetHITOutput: GetHITOutput
    GetQualificationScoreInput: GetQualificationScoreInput
    GetQualificationScoreOutput: GetQualificationScoreOutput
    GetQualificationTypeInput: GetQualificationTypeInput
    GetQualificationTypeOutput: GetQualificationTypeOutput
    ListAssignmentsForHITInput: ListAssignmentsForHITInput
    ListAssignmentsForHITOutput: ListAssignmentsForHITOutput
    ListBonusPaymentsInput: ListBonusPaymentsInput
    ListBonusPaymentsOutput: ListBonusPaymentsOutput
    ListHITsInput: ListHITsInput
    ListHITsOutput: ListHITsOutput
    ListHITsForQualificationTypeInput: ListHITsForQualificationTypeInput
    ListHITsForQualificationTypeOutput: ListHITsForQualificationTypeOutput
    ListQualificationRequestsInput: ListQualificationRequestsInput
    ListQualificationRequestsOutput: ListQualificationRequestsOutput
    ListQualificationTypesInput: ListQualificationTypesInput
    ListQualificationTypesOutput: ListQualificationTypesOutput
    ListReviewableHITsInput: ListReviewableHITsInput
    ListReviewableHITsOutput: ListReviewableHITsOutput
    ListReviewPolicyResultsForHITInput: ListReviewPolicyResultsForHITInput
    ListReviewPolicyResultsForHITOutput: ListReviewPolicyResultsForHITOutput
    ListWorkerBlocksInput: ListWorkerBlocksInput
    ListWorkerBlocksOutput: ListWorkerBlocksOutput
    ListWorkersWithQualificationTypeInput: ListWorkersWithQualificationTypeInput
    ListWorkersWithQualificationTypeOutput: ListWorkersWithQualificationTypeOutput
    NotifyWorkersInput: NotifyWorkersInput
    NotifyWorkersOutput: NotifyWorkersOutput
    RejectAssignmentInput: RejectAssignmentInput
    RejectAssignmentOutput: RejectAssignmentOutput
    RejectQualificationRequestInput: RejectQualificationRequestInput
    RejectQualificationRequestOutput: RejectQualificationRequestOutput
    SendBonusInput: SendBonusInput
    SendBonusOutput: SendBonusOutput
    SendTestEventNotificationInput: SendTestEventNotificationInput
    SendTestEventNotificationOutput: SendTestEventNotificationOutput
    UpdateExpirationForHITInput: UpdateExpirationForHITInput
    UpdateExpirationForHITOutput: UpdateExpirationForHITOutput
    UpdateHITReviewStatusInput: UpdateHITReviewStatusInput
    UpdateHITReviewStatusOutput: UpdateHITReviewStatusOutput
    UpdateHITTypeOfHITInput: UpdateHITTypeOfHITInput
    UpdateHITTypeOfHITOutput: UpdateHITTypeOfHITOutput
    UpdateNotificationSettingsInput: UpdateNotificationSettingsInput
    UpdateNotificationSettingsOutput: UpdateNotificationSettingsOutput
    UpdateQualificationTypeInput: UpdateQualificationTypeInput
    UpdateQualificationTypeOutput: UpdateQualificationTypeOutput
end

return M
