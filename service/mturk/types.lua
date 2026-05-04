local M = {}

M.AcceptQualificationRequestInput = {
    type = "structure",
    id = "AcceptQualificationRequestInput",
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
    id = "AcceptQualificationRequestOutput",
}

M.RequestError = {
    type = "structure",
    id = "RequestError",
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
    id = "ServiceFault",
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
    id = "ApproveAssignmentInput",
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
    id = "ApproveAssignmentOutput",
}

M.AssignmentStatus = {
    Submitted = "Submitted",
    Approved = "Approved",
    Rejected = "Rejected",
}

M.Assignment = {
    type = "structure",
    id = "Assignment",
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
    id = "AssociateQualificationWithWorkerInput",
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
    id = "AssociateQualificationWithWorkerOutput",
}

M.BonusPayment = {
    type = "structure",
    id = "BonusPayment",
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
    id = "CreateAdditionalAssignmentsForHITInput",
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
    id = "CreateAdditionalAssignmentsForHITOutput",
}

M.ParameterMapEntry = {
    type = "structure",
    id = "ParameterMapEntry",
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
    id = "PolicyParameter",
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
    id = "ReviewPolicy",
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
    id = "HITLayoutParameter",
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
    id = "Locale",
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
    id = "QualificationRequirement",
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
    id = "CreateHITInput",
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
    id = "HIT",
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
    id = "CreateHITOutput",
    members = {
        HIT = M.HIT,
    },
}

M.CreateHITTypeInput = {
    type = "structure",
    id = "CreateHITTypeInput",
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
    id = "CreateHITTypeOutput",
    members = {
        HITTypeId = {
            type = "string",
        },
    },
}

M.CreateHITWithHITTypeInput = {
    type = "structure",
    id = "CreateHITWithHITTypeInput",
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
    id = "CreateHITWithHITTypeOutput",
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
    id = "CreateQualificationTypeInput",
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
    id = "QualificationType",
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
    id = "CreateQualificationTypeOutput",
    members = {
        QualificationType = M.QualificationType,
    },
}

M.CreateWorkerBlockInput = {
    type = "structure",
    id = "CreateWorkerBlockInput",
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
    id = "CreateWorkerBlockOutput",
}

M.DeleteHITInput = {
    type = "structure",
    id = "DeleteHITInput",
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
    id = "DeleteHITOutput",
}

M.DeleteQualificationTypeInput = {
    type = "structure",
    id = "DeleteQualificationTypeInput",
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
    id = "DeleteQualificationTypeOutput",
}

M.DeleteWorkerBlockInput = {
    type = "structure",
    id = "DeleteWorkerBlockInput",
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
    id = "DeleteWorkerBlockOutput",
}

M.DisassociateQualificationFromWorkerInput = {
    type = "structure",
    id = "DisassociateQualificationFromWorkerInput",
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
    id = "DisassociateQualificationFromWorkerOutput",
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
    id = "GetAccountBalanceInput",
}

M.GetAccountBalanceOutput = {
    type = "structure",
    id = "GetAccountBalanceOutput",
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
    id = "GetAssignmentInput",
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
    id = "GetAssignmentOutput",
    members = {
        Assignment = M.Assignment,
        HIT = M.HIT,
    },
}

M.GetFileUploadURLInput = {
    type = "structure",
    id = "GetFileUploadURLInput",
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
    id = "GetFileUploadURLOutput",
    members = {
        FileUploadURL = {
            type = "string",
        },
    },
}

M.GetHITInput = {
    type = "structure",
    id = "GetHITInput",
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
    id = "GetHITOutput",
    members = {
        HIT = M.HIT,
    },
}

M.GetQualificationScoreInput = {
    type = "structure",
    id = "GetQualificationScoreInput",
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
    id = "Qualification",
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
    id = "GetQualificationScoreOutput",
    members = {
        Qualification = M.Qualification,
    },
}

M.GetQualificationTypeInput = {
    type = "structure",
    id = "GetQualificationTypeInput",
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
    id = "GetQualificationTypeOutput",
    members = {
        QualificationType = M.QualificationType,
    },
}

M.ListAssignmentsForHITInput = {
    type = "structure",
    id = "ListAssignmentsForHITInput",
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
    id = "ListAssignmentsForHITOutput",
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
    id = "ListBonusPaymentsInput",
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
    id = "ListBonusPaymentsOutput",
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
    id = "ListHITsInput",
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
    id = "ListHITsOutput",
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
    id = "ListHITsForQualificationTypeInput",
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
    id = "ListHITsForQualificationTypeOutput",
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
    id = "ListQualificationRequestsInput",
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
    id = "QualificationRequest",
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
    id = "ListQualificationRequestsOutput",
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
    id = "ListQualificationTypesInput",
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
    id = "ListQualificationTypesOutput",
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
    id = "ListReviewableHITsInput",
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
    id = "ListReviewableHITsOutput",
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
    id = "ListReviewPolicyResultsForHITInput",
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
    id = "ReviewActionDetail",
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
    id = "ReviewResultDetail",
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
    id = "ReviewReport",
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
    id = "ListReviewPolicyResultsForHITOutput",
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
    id = "ListWorkerBlocksInput",
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
    id = "WorkerBlock",
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
    id = "ListWorkerBlocksOutput",
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
    id = "ListWorkersWithQualificationTypeInput",
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
    id = "ListWorkersWithQualificationTypeOutput",
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
    id = "NotifyWorkersInput",
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
    id = "NotifyWorkersFailureStatus",
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
    id = "NotifyWorkersOutput",
    members = {
        NotifyWorkersFailureStatuses = {
            type = "list",
            member = M.NotifyWorkersFailureStatus,
        },
    },
}

M.RejectAssignmentInput = {
    type = "structure",
    id = "RejectAssignmentInput",
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
    id = "RejectAssignmentOutput",
}

M.RejectQualificationRequestInput = {
    type = "structure",
    id = "RejectQualificationRequestInput",
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
    id = "RejectQualificationRequestOutput",
}

M.SendBonusInput = {
    type = "structure",
    id = "SendBonusInput",
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
    id = "SendBonusOutput",
}

M.NotificationTransport = {
    Email = "Email",
    SQS = "SQS",
    SNS = "SNS",
}

M.NotificationSpecification = {
    type = "structure",
    id = "NotificationSpecification",
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
    id = "SendTestEventNotificationInput",
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
    id = "SendTestEventNotificationOutput",
}

M.UpdateExpirationForHITInput = {
    type = "structure",
    id = "UpdateExpirationForHITInput",
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
    id = "UpdateExpirationForHITOutput",
}

M.UpdateHITReviewStatusInput = {
    type = "structure",
    id = "UpdateHITReviewStatusInput",
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
    id = "UpdateHITReviewStatusOutput",
}

M.UpdateHITTypeOfHITInput = {
    type = "structure",
    id = "UpdateHITTypeOfHITInput",
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
    id = "UpdateHITTypeOfHITOutput",
}

M.UpdateNotificationSettingsInput = {
    type = "structure",
    id = "UpdateNotificationSettingsInput",
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
    id = "UpdateNotificationSettingsOutput",
}

M.UpdateQualificationTypeInput = {
    type = "structure",
    id = "UpdateQualificationTypeInput",
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
    id = "UpdateQualificationTypeOutput",
    members = {
        QualificationType = M.QualificationType,
    },
}

return M
