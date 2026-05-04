local M = {}

M.AcceptQualificationRequestInput = {
    type = "structure",
    members = {
        QualificationRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IntegerValue = {
            type = "integer",
        },
    },
}

M.AcceptQualificationRequestOutput = {
    type = "structure",
}

M.RequestError = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        TurkErrorCode = {
            type = "string",
        },
    },
}

M.ServiceFault = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
        TurkErrorCode = {
            type = "string",
        },
    },
}

M.ApproveAssignmentInput = {
    type = "structure",
    members = {
        AssignmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RequesterFeedback = {
            type = "string",
        },
        OverrideRejection = {
            type = "boolean",
        },
    },
}

M.ApproveAssignmentOutput = {
    type = "structure",
}

M.AssignmentStatus = {
    Submitted = "Submitted",
    Approved = "Approved",
    Rejected = "Rejected",
}

M.Assignment = {
    type = "structure",
    members = {
        AssignmentId = {
            type = "string",
        },
        WorkerId = {
            type = "string",
        },
        HITId = {
            type = "string",
        },
        AssignmentStatus = {
            type = "string",
        },
        AutoApprovalTime = {
            type = "timestamp",
        },
        AcceptTime = {
            type = "timestamp",
        },
        SubmitTime = {
            type = "timestamp",
        },
        ApprovalTime = {
            type = "timestamp",
        },
        RejectionTime = {
            type = "timestamp",
        },
        Deadline = {
            type = "timestamp",
        },
        Answer = {
            type = "string",
        },
        RequesterFeedback = {
            type = "string",
        },
    },
}

M.AssociateQualificationWithWorkerInput = {
    type = "structure",
    members = {
        QualificationTypeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IntegerValue = {
            type = "integer",
        },
        SendNotification = {
            type = "boolean",
        },
    },
}

M.AssociateQualificationWithWorkerOutput = {
    type = "structure",
}

M.BonusPayment = {
    type = "structure",
    members = {
        WorkerId = {
            type = "string",
        },
        BonusAmount = {
            type = "string",
        },
        AssignmentId = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
        GrantTime = {
            type = "timestamp",
        },
    },
}

M.Comparator = {
    LessThan = "LessThan",
    LessThanOrEqualTo = "LessThanOrEqualTo",
    GreaterThan = "GreaterThan",
    GreaterThanOrEqualTo = "GreaterThanOrEqualTo",
    EqualTo = "EqualTo",
    NotEqualTo = "NotEqualTo",
    Exists = "Exists",
    DoesNotExist = "DoesNotExist",
    In = "In",
    NotIn = "NotIn",
}

M.CreateAdditionalAssignmentsForHITInput = {
    type = "structure",
    members = {
        HITId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NumberOfAdditionalAssignments = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        UniqueRequestToken = {
            type = "string",
        },
    },
}

M.CreateAdditionalAssignmentsForHITOutput = {
    type = "structure",
}

M.ParameterMapEntry = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.PolicyParameter = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
        MapEntries = {
            type = "list",
            member = M.ParameterMapEntry,
        },
    },
}

M.ReviewPolicy = {
    type = "structure",
    members = {
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "list",
            member = M.PolicyParameter,
        },
    },
}

M.HITLayoutParameter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HITAccessActions = {
    Accept = "Accept",
    PreviewAndAccept = "PreviewAndAccept",
    DiscoverPreviewAndAccept = "DiscoverPreviewAndAccept",
}

M.Locale = {
    type = "structure",
    members = {
        Country = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Subdivision = {
            type = "string",
        },
    },
}

M.QualificationRequirement = {
    type = "structure",
    members = {
        QualificationTypeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Comparator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IntegerValues = {
            type = "list",
            member = { type = "integer" },
        },
        LocaleValues = {
            type = "list",
            member = M.Locale,
        },
        RequiredToPreview = {
            type = "boolean",
        },
        ActionsGuarded = {
            type = "string",
        },
    },
}

M.CreateHITInput = {
    type = "structure",
    members = {
        MaxAssignments = {
            type = "integer",
        },
        AutoApprovalDelayInSeconds = {
            type = "long",
        },
        LifetimeInSeconds = {
            type = "long",
            traits = {
                required = true,
            },
        },
        AssignmentDurationInSeconds = {
            type = "long",
            traits = {
                required = true,
            },
        },
        Reward = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Keywords = {
            type = "string",
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Question = {
            type = "string",
        },
        RequesterAnnotation = {
            type = "string",
        },
        QualificationRequirements = {
            type = "list",
            member = M.QualificationRequirement,
        },
        UniqueRequestToken = {
            type = "string",
        },
        AssignmentReviewPolicy = M.ReviewPolicy,
        HITReviewPolicy = M.ReviewPolicy,
        HITLayoutId = {
            type = "string",
        },
        HITLayoutParameters = {
            type = "list",
            member = M.HITLayoutParameter,
        },
    },
}

M.HITReviewStatus = {
    NotReviewed = "NotReviewed",
    MarkedForReview = "MarkedForReview",
    ReviewedAppropriate = "ReviewedAppropriate",
    ReviewedInappropriate = "ReviewedInappropriate",
}

M.HITStatus = {
    Assignable = "Assignable",
    Unassignable = "Unassignable",
    Reviewable = "Reviewable",
    Reviewing = "Reviewing",
    Disposed = "Disposed",
}

M.HIT = {
    type = "structure",
    members = {
        HITId = {
            type = "string",
        },
        HITTypeId = {
            type = "string",
        },
        HITGroupId = {
            type = "string",
        },
        HITLayoutId = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        Title = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Question = {
            type = "string",
        },
        Keywords = {
            type = "string",
        },
        HITStatus = {
            type = "string",
        },
        MaxAssignments = {
            type = "integer",
        },
        Reward = {
            type = "string",
        },
        AutoApprovalDelayInSeconds = {
            type = "long",
        },
        Expiration = {
            type = "timestamp",
        },
        AssignmentDurationInSeconds = {
            type = "long",
        },
        RequesterAnnotation = {
            type = "string",
        },
        QualificationRequirements = {
            type = "list",
            member = M.QualificationRequirement,
        },
        HITReviewStatus = {
            type = "string",
        },
        NumberOfAssignmentsPending = {
            type = "integer",
        },
        NumberOfAssignmentsAvailable = {
            type = "integer",
        },
        NumberOfAssignmentsCompleted = {
            type = "integer",
        },
    },
}

M.CreateHITOutput = {
    type = "structure",
    members = {
        HIT = M.HIT,
    },
}

M.CreateHITTypeInput = {
    type = "structure",
    members = {
        AutoApprovalDelayInSeconds = {
            type = "long",
        },
        AssignmentDurationInSeconds = {
            type = "long",
            traits = {
                required = true,
            },
        },
        Reward = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Keywords = {
            type = "string",
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QualificationRequirements = {
            type = "list",
            member = M.QualificationRequirement,
        },
    },
}

M.CreateHITTypeOutput = {
    type = "structure",
    members = {
        HITTypeId = {
            type = "string",
        },
    },
}

M.CreateHITWithHITTypeInput = {
    type = "structure",
    members = {
        HITTypeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxAssignments = {
            type = "integer",
        },
        LifetimeInSeconds = {
            type = "long",
            traits = {
                required = true,
            },
        },
        Question = {
            type = "string",
        },
        RequesterAnnotation = {
            type = "string",
        },
        UniqueRequestToken = {
            type = "string",
        },
        AssignmentReviewPolicy = M.ReviewPolicy,
        HITReviewPolicy = M.ReviewPolicy,
        HITLayoutId = {
            type = "string",
        },
        HITLayoutParameters = {
            type = "list",
            member = M.HITLayoutParameter,
        },
    },
}

M.CreateHITWithHITTypeOutput = {
    type = "structure",
    members = {
        HIT = M.HIT,
    },
}

M.QualificationTypeStatus = {
    Active = "Active",
    Inactive = "Inactive",
}

M.CreateQualificationTypeInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Keywords = {
            type = "string",
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QualificationTypeStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetryDelayInSeconds = {
            type = "long",
        },
        Test = {
            type = "string",
        },
        AnswerKey = {
            type = "string",
        },
        TestDurationInSeconds = {
            type = "long",
        },
        AutoGranted = {
            type = "boolean",
        },
        AutoGrantedValue = {
            type = "integer",
        },
    },
}

M.QualificationType = {
    type = "structure",
    members = {
        QualificationTypeId = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Keywords = {
            type = "string",
        },
        QualificationTypeStatus = {
            type = "string",
        },
        Test = {
            type = "string",
        },
        TestDurationInSeconds = {
            type = "long",
        },
        AnswerKey = {
            type = "string",
        },
        RetryDelayInSeconds = {
            type = "long",
        },
        IsRequestable = {
            type = "boolean",
        },
        AutoGranted = {
            type = "boolean",
        },
        AutoGrantedValue = {
            type = "integer",
        },
    },
}

M.CreateQualificationTypeOutput = {
    type = "structure",
    members = {
        QualificationType = M.QualificationType,
    },
}

M.CreateWorkerBlockInput = {
    type = "structure",
    members = {
        WorkerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateWorkerBlockOutput = {
    type = "structure",
}

M.DeleteHITInput = {
    type = "structure",
    members = {
        HITId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteHITOutput = {
    type = "structure",
}

M.DeleteQualificationTypeInput = {
    type = "structure",
    members = {
        QualificationTypeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteQualificationTypeOutput = {
    type = "structure",
}

M.DeleteWorkerBlockInput = {
    type = "structure",
    members = {
        WorkerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Reason = {
            type = "string",
        },
    },
}

M.DeleteWorkerBlockOutput = {
    type = "structure",
}

M.DisassociateQualificationFromWorkerInput = {
    type = "structure",
    members = {
        WorkerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QualificationTypeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Reason = {
            type = "string",
        },
    },
}

M.DisassociateQualificationFromWorkerOutput = {
    type = "structure",
}

M.EventType = {
    AssignmentAccepted = "AssignmentAccepted",
    AssignmentAbandoned = "AssignmentAbandoned",
    AssignmentReturned = "AssignmentReturned",
    AssignmentSubmitted = "AssignmentSubmitted",
    AssignmentRejected = "AssignmentRejected",
    AssignmentApproved = "AssignmentApproved",
    HITCreated = "HITCreated",
    HITExpired = "HITExpired",
    HITReviewable = "HITReviewable",
    HITExtended = "HITExtended",
    HITDisposed = "HITDisposed",
    Ping = "Ping",
}

M.GetAccountBalanceInput = {
    type = "structure",
}

M.GetAccountBalanceOutput = {
    type = "structure",
    members = {
        AvailableBalance = {
            type = "string",
        },
        OnHoldBalance = {
            type = "string",
        },
    },
}

M.GetAssignmentInput = {
    type = "structure",
    members = {
        AssignmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAssignmentOutput = {
    type = "structure",
    members = {
        Assignment = M.Assignment,
        HIT = M.HIT,
    },
}

M.GetFileUploadURLInput = {
    type = "structure",
    members = {
        AssignmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QuestionIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetFileUploadURLOutput = {
    type = "structure",
    members = {
        FileUploadURL = {
            type = "string",
        },
    },
}

M.GetHITInput = {
    type = "structure",
    members = {
        HITId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetHITOutput = {
    type = "structure",
    members = {
        HIT = M.HIT,
    },
}

M.GetQualificationScoreInput = {
    type = "structure",
    members = {
        QualificationTypeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.QualificationStatus = {
    Granted = "Granted",
    Revoked = "Revoked",
}

M.Qualification = {
    type = "structure",
    members = {
        QualificationTypeId = {
            type = "string",
        },
        WorkerId = {
            type = "string",
        },
        GrantTime = {
            type = "timestamp",
        },
        IntegerValue = {
            type = "integer",
        },
        LocaleValue = M.Locale,
        Status = {
            type = "string",
        },
    },
}

M.GetQualificationScoreOutput = {
    type = "structure",
    members = {
        Qualification = M.Qualification,
    },
}

M.GetQualificationTypeInput = {
    type = "structure",
    members = {
        QualificationTypeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetQualificationTypeOutput = {
    type = "structure",
    members = {
        QualificationType = M.QualificationType,
    },
}

M.ListAssignmentsForHITInput = {
    type = "structure",
    members = {
        HITId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        AssignmentStatuses = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListAssignmentsForHITOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        NumResults = {
            type = "integer",
        },
        Assignments = {
            type = "list",
            member = M.Assignment,
        },
    },
}

M.ListBonusPaymentsInput = {
    type = "structure",
    members = {
        HITId = {
            type = "string",
        },
        AssignmentId = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListBonusPaymentsOutput = {
    type = "structure",
    members = {
        NumResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        BonusPayments = {
            type = "list",
            member = M.BonusPayment,
        },
    },
}

M.ListHITsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListHITsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        NumResults = {
            type = "integer",
        },
        HITs = {
            type = "list",
            member = M.HIT,
        },
    },
}

M.ListHITsForQualificationTypeInput = {
    type = "structure",
    members = {
        QualificationTypeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListHITsForQualificationTypeOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        NumResults = {
            type = "integer",
        },
        HITs = {
            type = "list",
            member = M.HIT,
        },
    },
}

M.ListQualificationRequestsInput = {
    type = "structure",
    members = {
        QualificationTypeId = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.QualificationRequest = {
    type = "structure",
    members = {
        QualificationRequestId = {
            type = "string",
        },
        QualificationTypeId = {
            type = "string",
        },
        WorkerId = {
            type = "string",
        },
        Test = {
            type = "string",
        },
        Answer = {
            type = "string",
        },
        SubmitTime = {
            type = "timestamp",
        },
    },
}

M.ListQualificationRequestsOutput = {
    type = "structure",
    members = {
        NumResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        QualificationRequests = {
            type = "list",
            member = M.QualificationRequest,
        },
    },
}

M.ListQualificationTypesInput = {
    type = "structure",
    members = {
        Query = {
            type = "string",
        },
        MustBeRequestable = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        MustBeOwnedByCaller = {
            type = "boolean",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListQualificationTypesOutput = {
    type = "structure",
    members = {
        NumResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        QualificationTypes = {
            type = "list",
            member = M.QualificationType,
        },
    },
}

M.ReviewableHITStatus = {
    Reviewable = "Reviewable",
    Reviewing = "Reviewing",
}

M.ListReviewableHITsInput = {
    type = "structure",
    members = {
        HITTypeId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListReviewableHITsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        NumResults = {
            type = "integer",
        },
        HITs = {
            type = "list",
            member = M.HIT,
        },
    },
}

M.ReviewPolicyLevel = {
    Assignment = "Assignment",
    HIT = "HIT",
}

M.ListReviewPolicyResultsForHITInput = {
    type = "structure",
    members = {
        HITId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyLevels = {
            type = "list",
            member = { type = "string" },
        },
        RetrieveActions = {
            type = "boolean",
        },
        RetrieveResults = {
            type = "boolean",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ReviewActionStatus = {
    Intended = "Intended",
    Succeeded = "Succeeded",
    Failed = "Failed",
    Cancelled = "Cancelled",
}

M.ReviewActionDetail = {
    type = "structure",
    members = {
        ActionId = {
            type = "string",
        },
        ActionName = {
            type = "string",
        },
        TargetId = {
            type = "string",
        },
        TargetType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CompleteTime = {
            type = "timestamp",
        },
        Result = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
    },
}

M.ReviewResultDetail = {
    type = "structure",
    members = {
        ActionId = {
            type = "string",
        },
        SubjectId = {
            type = "string",
        },
        SubjectType = {
            type = "string",
        },
        QuestionId = {
            type = "string",
        },
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.ReviewReport = {
    type = "structure",
    members = {
        ReviewResults = {
            type = "list",
            member = M.ReviewResultDetail,
        },
        ReviewActions = {
            type = "list",
            member = M.ReviewActionDetail,
        },
    },
}

M.ListReviewPolicyResultsForHITOutput = {
    type = "structure",
    members = {
        HITId = {
            type = "string",
        },
        AssignmentReviewPolicy = M.ReviewPolicy,
        HITReviewPolicy = M.ReviewPolicy,
        AssignmentReviewReport = M.ReviewReport,
        HITReviewReport = M.ReviewReport,
        NextToken = {
            type = "string",
        },
    },
}

M.ListWorkerBlocksInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.WorkerBlock = {
    type = "structure",
    members = {
        WorkerId = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.ListWorkerBlocksOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        NumResults = {
            type = "integer",
        },
        WorkerBlocks = {
            type = "list",
            member = M.WorkerBlock,
        },
    },
}

M.ListWorkersWithQualificationTypeInput = {
    type = "structure",
    members = {
        QualificationTypeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListWorkersWithQualificationTypeOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        NumResults = {
            type = "integer",
        },
        Qualifications = {
            type = "list",
            member = M.Qualification,
        },
    },
}

M.NotifyWorkersInput = {
    type = "structure",
    members = {
        Subject = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MessageText = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkerIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.NotifyWorkersFailureCode = {
    SoftFailure = "SoftFailure",
    HardFailure = "HardFailure",
}

M.NotifyWorkersFailureStatus = {
    type = "structure",
    members = {
        NotifyWorkersFailureCode = {
            type = "string",
        },
        NotifyWorkersFailureMessage = {
            type = "string",
        },
        WorkerId = {
            type = "string",
        },
    },
}

M.NotifyWorkersOutput = {
    type = "structure",
    members = {
        NotifyWorkersFailureStatuses = {
            type = "list",
            member = M.NotifyWorkersFailureStatus,
        },
    },
}

M.RejectAssignmentInput = {
    type = "structure",
    members = {
        AssignmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RequesterFeedback = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RejectAssignmentOutput = {
    type = "structure",
}

M.RejectQualificationRequestInput = {
    type = "structure",
    members = {
        QualificationRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Reason = {
            type = "string",
        },
    },
}

M.RejectQualificationRequestOutput = {
    type = "structure",
}

M.SendBonusInput = {
    type = "structure",
    members = {
        WorkerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BonusAmount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AssignmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UniqueRequestToken = {
            type = "string",
        },
    },
}

M.SendBonusOutput = {
    type = "structure",
}

M.NotificationTransport = {
    Email = "Email",
    SQS = "SQS",
    SNS = "SNS",
}

M.NotificationSpecification = {
    type = "structure",
    members = {
        Destination = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Transport = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.SendTestEventNotificationInput = {
    type = "structure",
    members = {
        Notification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NotificationSpecification }),
        TestEventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SendTestEventNotificationOutput = {
    type = "structure",
}

M.UpdateExpirationForHITInput = {
    type = "structure",
    members = {
        HITId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExpireAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateExpirationForHITOutput = {
    type = "structure",
}

M.UpdateHITReviewStatusInput = {
    type = "structure",
    members = {
        HITId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Revert = {
            type = "boolean",
        },
    },
}

M.UpdateHITReviewStatusOutput = {
    type = "structure",
}

M.UpdateHITTypeOfHITInput = {
    type = "structure",
    members = {
        HITId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HITTypeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateHITTypeOfHITOutput = {
    type = "structure",
}

M.UpdateNotificationSettingsInput = {
    type = "structure",
    members = {
        HITTypeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Notification = M.NotificationSpecification,
        Active = {
            type = "boolean",
        },
    },
}

M.UpdateNotificationSettingsOutput = {
    type = "structure",
}

M.UpdateQualificationTypeInput = {
    type = "structure",
    members = {
        QualificationTypeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        QualificationTypeStatus = {
            type = "string",
        },
        Test = {
            type = "string",
        },
        AnswerKey = {
            type = "string",
        },
        TestDurationInSeconds = {
            type = "long",
        },
        RetryDelayInSeconds = {
            type = "long",
        },
        AutoGranted = {
            type = "boolean",
        },
        AutoGrantedValue = {
            type = "integer",
        },
    },
}

M.UpdateQualificationTypeOutput = {
    type = "structure",
    members = {
        QualificationType = M.QualificationType,
    },
}

return M
