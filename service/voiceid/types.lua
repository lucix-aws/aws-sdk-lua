local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociateFraudsterInput = {
    type = "structure",
    id = "AssociateFraudsterInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WatchlistId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FraudsterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Fraudster = {
    type = "structure",
    id = "Fraudster",
    members = {
        DomainId = {
            type = "string",
        },
        GeneratedFraudsterId = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        WatchlistIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AssociateFraudsterOutput = {
    type = "structure",
    id = "AssociateFraudsterOutput",
    members = {
        Fraudster = M.Fraudster,
    },
}

M.ConflictType = {
    ANOTHER_ACTIVE_STREAM = "ANOTHER_ACTIVE_STREAM",
    DOMAIN_NOT_ACTIVE = "DOMAIN_NOT_ACTIVE",
    CANNOT_CHANGE_SPEAKER_AFTER_ENROLLMENT = "CANNOT_CHANGE_SPEAKER_AFTER_ENROLLMENT",
    ENROLLMENT_ALREADY_EXISTS = "ENROLLMENT_ALREADY_EXISTS",
    SPEAKER_NOT_SET = "SPEAKER_NOT_SET",
    SPEAKER_OPTED_OUT = "SPEAKER_OPTED_OUT",
    CONCURRENT_CHANGES = "CONCURRENT_CHANGES",
    DOMAIN_LOCKED_FROM_ENCRYPTION_UPDATES = "DOMAIN_LOCKED_FROM_ENCRYPTION_UPDATES",
    CANNOT_DELETE_NON_EMPTY_WATCHLIST = "CANNOT_DELETE_NON_EMPTY_WATCHLIST",
    FRAUDSTER_MUST_BELONG_TO_AT_LEAST_ONE_WATCHLIST = "FRAUDSTER_MUST_BELONG_TO_AT_LEAST_ONE_WATCHLIST",
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ConflictType = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceType = {
    BATCH_JOB = "BATCH_JOB",
    COMPLIANCE_CONSENT = "COMPLIANCE_CONSENT",
    DOMAIN = "DOMAIN",
    FRAUDSTER = "FRAUDSTER",
    SESSION = "SESSION",
    SPEAKER = "SPEAKER",
    WATCHLIST = "WATCHLIST",
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AuthenticationConfiguration = {
    type = "structure",
    id = "AuthenticationConfiguration",
    members = {
        AcceptanceThreshold = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.AuthenticationDecision = {
    ACCEPT = "ACCEPT",
    REJECT = "REJECT",
    NOT_ENOUGH_SPEECH = "NOT_ENOUGH_SPEECH",
    SPEAKER_NOT_ENROLLED = "SPEAKER_NOT_ENROLLED",
    SPEAKER_OPTED_OUT = "SPEAKER_OPTED_OUT",
    SPEAKER_ID_NOT_PROVIDED = "SPEAKER_ID_NOT_PROVIDED",
    SPEAKER_EXPIRED = "SPEAKER_EXPIRED",
}

M.AuthenticationResult = {
    type = "structure",
    id = "AuthenticationResult",
    members = {
        AuthenticationResultId = {
            type = "string",
        },
        AudioAggregationStartedAt = {
            type = "timestamp",
        },
        AudioAggregationEndedAt = {
            type = "timestamp",
        },
        CustomerSpeakerId = {
            type = "string",
        },
        GeneratedSpeakerId = {
            type = "string",
        },
        Decision = {
            type = "string",
        },
        Score = {
            type = "integer",
        },
        Configuration = M.AuthenticationConfiguration,
    },
}

M.ServerSideEncryptionConfiguration = {
    type = "structure",
    id = "ServerSideEncryptionConfiguration",
    members = {
        KmsKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        Key = {
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

M.CreateDomainInput = {
    type = "structure",
    id = "CreateDomainInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ServerSideEncryptionConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServerSideEncryptionConfiguration }),
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DomainStatus = {
    ACTIVE = "ACTIVE",
    PENDING = "PENDING",
    SUSPENDED = "SUSPENDED",
}

M.ServerSideEncryptionUpdateStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.ServerSideEncryptionUpdateDetails = {
    type = "structure",
    id = "ServerSideEncryptionUpdateDetails",
    members = {
        OldKmsKeyId = {
            type = "string",
        },
        UpdateStatus = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.WatchlistDetails = {
    type = "structure",
    id = "WatchlistDetails",
    members = {
        DefaultWatchlistId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Domain = {
    type = "structure",
    id = "Domain",
    members = {
        DomainId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DomainStatus = {
            type = "string",
        },
        ServerSideEncryptionConfiguration = M.ServerSideEncryptionConfiguration,
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        ServerSideEncryptionUpdateDetails = M.ServerSideEncryptionUpdateDetails,
        WatchlistDetails = M.WatchlistDetails,
    },
}

M.CreateDomainOutput = {
    type = "structure",
    id = "CreateDomainOutput",
    members = {
        Domain = M.Domain,
    },
}

M.CreateWatchlistInput = {
    type = "structure",
    id = "CreateWatchlistInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.Watchlist = {
    type = "structure",
    id = "Watchlist",
    members = {
        DomainId = {
            type = "string",
        },
        WatchlistId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DefaultWatchlist = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.CreateWatchlistOutput = {
    type = "structure",
    id = "CreateWatchlistOutput",
    members = {
        Watchlist = M.Watchlist,
    },
}

M.DeleteDomainInput = {
    type = "structure",
    id = "DeleteDomainInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDomainOutput = {
    type = "structure",
    id = "DeleteDomainOutput",
}

M.DeleteFraudsterInput = {
    type = "structure",
    id = "DeleteFraudsterInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FraudsterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteFraudsterOutput = {
    type = "structure",
    id = "DeleteFraudsterOutput",
}

M.DeleteSpeakerInput = {
    type = "structure",
    id = "DeleteSpeakerInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SpeakerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSpeakerOutput = {
    type = "structure",
    id = "DeleteSpeakerOutput",
}

M.DeleteWatchlistInput = {
    type = "structure",
    id = "DeleteWatchlistInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WatchlistId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteWatchlistOutput = {
    type = "structure",
    id = "DeleteWatchlistOutput",
}

M.DescribeDomainInput = {
    type = "structure",
    id = "DescribeDomainInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeDomainOutput = {
    type = "structure",
    id = "DescribeDomainOutput",
    members = {
        Domain = M.Domain,
    },
}

M.DescribeFraudsterInput = {
    type = "structure",
    id = "DescribeFraudsterInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FraudsterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeFraudsterOutput = {
    type = "structure",
    id = "DescribeFraudsterOutput",
    members = {
        Fraudster = M.Fraudster,
    },
}

M.DescribeFraudsterRegistrationJobInput = {
    type = "structure",
    id = "DescribeFraudsterRegistrationJobInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FailureDetails = {
    type = "structure",
    id = "FailureDetails",
    members = {
        StatusCode = {
            type = "integer",
        },
        Message = {
            type = "string",
        },
    },
}

M.InputDataConfig = {
    type = "structure",
    id = "InputDataConfig",
    members = {
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JobProgress = {
    type = "structure",
    id = "JobProgress",
    members = {
        PercentComplete = {
            type = "integer",
        },
    },
}

M.FraudsterRegistrationJobStatus = {
    SUBMITTED = "SUBMITTED",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    COMPLETED_WITH_ERRORS = "COMPLETED_WITH_ERRORS",
    FAILED = "FAILED",
}

M.OutputDataConfig = {
    type = "structure",
    id = "OutputDataConfig",
    members = {
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
    },
}

M.DuplicateRegistrationAction = {
    SKIP = "SKIP",
    REGISTER_AS_NEW = "REGISTER_AS_NEW",
}

M.RegistrationConfig = {
    type = "structure",
    id = "RegistrationConfig",
    members = {
        DuplicateRegistrationAction = {
            type = "string",
        },
        FraudsterSimilarityThreshold = {
            type = "integer",
        },
        WatchlistIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.FraudsterRegistrationJob = {
    type = "structure",
    id = "FraudsterRegistrationJob",
    members = {
        JobName = {
            type = "string",
        },
        JobId = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        DomainId = {
            type = "string",
        },
        DataAccessRoleArn = {
            type = "string",
        },
        RegistrationConfig = M.RegistrationConfig,
        InputDataConfig = M.InputDataConfig,
        OutputDataConfig = M.OutputDataConfig,
        CreatedAt = {
            type = "timestamp",
        },
        EndedAt = {
            type = "timestamp",
        },
        FailureDetails = M.FailureDetails,
        JobProgress = M.JobProgress,
    },
}

M.DescribeFraudsterRegistrationJobOutput = {
    type = "structure",
    id = "DescribeFraudsterRegistrationJobOutput",
    members = {
        Job = M.FraudsterRegistrationJob,
    },
}

M.DescribeSpeakerInput = {
    type = "structure",
    id = "DescribeSpeakerInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SpeakerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SpeakerStatus = {
    ENROLLED = "ENROLLED",
    EXPIRED = "EXPIRED",
    OPTED_OUT = "OPTED_OUT",
    PENDING = "PENDING",
}

M.Speaker = {
    type = "structure",
    id = "Speaker",
    members = {
        DomainId = {
            type = "string",
        },
        CustomerSpeakerId = {
            type = "string",
        },
        GeneratedSpeakerId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        LastAccessedAt = {
            type = "timestamp",
        },
    },
}

M.DescribeSpeakerOutput = {
    type = "structure",
    id = "DescribeSpeakerOutput",
    members = {
        Speaker = M.Speaker,
    },
}

M.DescribeSpeakerEnrollmentJobInput = {
    type = "structure",
    id = "DescribeSpeakerEnrollmentJobInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExistingEnrollmentAction = {
    SKIP = "SKIP",
    OVERWRITE = "OVERWRITE",
}

M.FraudDetectionAction = {
    IGNORE = "IGNORE",
    FAIL = "FAIL",
}

M.EnrollmentJobFraudDetectionConfig = {
    type = "structure",
    id = "EnrollmentJobFraudDetectionConfig",
    members = {
        FraudDetectionAction = {
            type = "string",
        },
        RiskThreshold = {
            type = "integer",
        },
        WatchlistIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EnrollmentConfig = {
    type = "structure",
    id = "EnrollmentConfig",
    members = {
        ExistingEnrollmentAction = {
            type = "string",
        },
        FraudDetectionConfig = M.EnrollmentJobFraudDetectionConfig,
    },
}

M.SpeakerEnrollmentJobStatus = {
    SUBMITTED = "SUBMITTED",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    COMPLETED_WITH_ERRORS = "COMPLETED_WITH_ERRORS",
    FAILED = "FAILED",
}

M.SpeakerEnrollmentJob = {
    type = "structure",
    id = "SpeakerEnrollmentJob",
    members = {
        JobName = {
            type = "string",
        },
        JobId = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        DomainId = {
            type = "string",
        },
        DataAccessRoleArn = {
            type = "string",
        },
        EnrollmentConfig = M.EnrollmentConfig,
        InputDataConfig = M.InputDataConfig,
        OutputDataConfig = M.OutputDataConfig,
        CreatedAt = {
            type = "timestamp",
        },
        EndedAt = {
            type = "timestamp",
        },
        FailureDetails = M.FailureDetails,
        JobProgress = M.JobProgress,
    },
}

M.DescribeSpeakerEnrollmentJobOutput = {
    type = "structure",
    id = "DescribeSpeakerEnrollmentJobOutput",
    members = {
        Job = M.SpeakerEnrollmentJob,
    },
}

M.DescribeWatchlistInput = {
    type = "structure",
    id = "DescribeWatchlistInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WatchlistId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeWatchlistOutput = {
    type = "structure",
    id = "DescribeWatchlistOutput",
    members = {
        Watchlist = M.Watchlist,
    },
}

M.DisassociateFraudsterInput = {
    type = "structure",
    id = "DisassociateFraudsterInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WatchlistId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FraudsterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateFraudsterOutput = {
    type = "structure",
    id = "DisassociateFraudsterOutput",
    members = {
        Fraudster = M.Fraudster,
    },
}

M.ListDomainsInput = {
    type = "structure",
    id = "ListDomainsInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DomainSummary = {
    type = "structure",
    id = "DomainSummary",
    members = {
        DomainId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DomainStatus = {
            type = "string",
        },
        ServerSideEncryptionConfiguration = M.ServerSideEncryptionConfiguration,
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        ServerSideEncryptionUpdateDetails = M.ServerSideEncryptionUpdateDetails,
        WatchlistDetails = M.WatchlistDetails,
    },
}

M.ListDomainsOutput = {
    type = "structure",
    id = "ListDomainsOutput",
    members = {
        DomainSummaries = {
            type = "list",
            member = M.DomainSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateDomainInput = {
    type = "structure",
    id = "UpdateDomainInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ServerSideEncryptionConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServerSideEncryptionConfiguration }),
    },
}

M.UpdateDomainOutput = {
    type = "structure",
    id = "UpdateDomainOutput",
    members = {
        Domain = M.Domain,
    },
}

M.EvaluateSessionInput = {
    type = "structure",
    id = "EvaluateSessionInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SessionNameOrId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FraudDetectionConfiguration = {
    type = "structure",
    id = "FraudDetectionConfiguration",
    members = {
        RiskThreshold = {
            type = "integer",
        },
        WatchlistId = {
            type = "string",
        },
    },
}

M.FraudDetectionDecision = {
    HIGH_RISK = "HIGH_RISK",
    LOW_RISK = "LOW_RISK",
    NOT_ENOUGH_SPEECH = "NOT_ENOUGH_SPEECH",
}

M.FraudDetectionReason = {
    KNOWN_FRAUDSTER = "KNOWN_FRAUDSTER",
    VOICE_SPOOFING = "VOICE_SPOOFING",
}

M.KnownFraudsterRisk = {
    type = "structure",
    id = "KnownFraudsterRisk",
    members = {
        RiskScore = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        GeneratedFraudsterId = {
            type = "string",
        },
    },
}

M.VoiceSpoofingRisk = {
    type = "structure",
    id = "VoiceSpoofingRisk",
    members = {
        RiskScore = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.FraudRiskDetails = {
    type = "structure",
    id = "FraudRiskDetails",
    members = {
        KnownFraudsterRisk = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KnownFraudsterRisk }),
        VoiceSpoofingRisk = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VoiceSpoofingRisk }),
    },
}

M.FraudDetectionResult = {
    type = "structure",
    id = "FraudDetectionResult",
    members = {
        FraudDetectionResultId = {
            type = "string",
        },
        AudioAggregationStartedAt = {
            type = "timestamp",
        },
        AudioAggregationEndedAt = {
            type = "timestamp",
        },
        Configuration = M.FraudDetectionConfiguration,
        Decision = {
            type = "string",
        },
        Reasons = {
            type = "list",
            member = { type = "string" },
        },
        RiskDetails = M.FraudRiskDetails,
    },
}

M.StreamingStatus = {
    PENDING_CONFIGURATION = "PENDING_CONFIGURATION",
    ONGOING = "ONGOING",
    ENDED = "ENDED",
}

M.EvaluateSessionOutput = {
    type = "structure",
    id = "EvaluateSessionOutput",
    members = {
        DomainId = {
            type = "string",
        },
        SessionId = {
            type = "string",
        },
        SessionName = {
            type = "string",
        },
        StreamingStatus = {
            type = "string",
        },
        AuthenticationResult = M.AuthenticationResult,
        FraudDetectionResult = M.FraudDetectionResult,
    },
}

M.FraudsterRegistrationJobSummary = {
    type = "structure",
    id = "FraudsterRegistrationJobSummary",
    members = {
        JobName = {
            type = "string",
        },
        JobId = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        DomainId = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        EndedAt = {
            type = "timestamp",
        },
        FailureDetails = M.FailureDetails,
        JobProgress = M.JobProgress,
    },
}

M.FraudsterSummary = {
    type = "structure",
    id = "FraudsterSummary",
    members = {
        DomainId = {
            type = "string",
        },
        GeneratedFraudsterId = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        WatchlistIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListFraudsterRegistrationJobsInput = {
    type = "structure",
    id = "ListFraudsterRegistrationJobsInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobStatus = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFraudsterRegistrationJobsOutput = {
    type = "structure",
    id = "ListFraudsterRegistrationJobsOutput",
    members = {
        JobSummaries = {
            type = "list",
            member = M.FraudsterRegistrationJobSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFraudstersInput = {
    type = "structure",
    id = "ListFraudstersInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WatchlistId = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFraudstersOutput = {
    type = "structure",
    id = "ListFraudstersOutput",
    members = {
        FraudsterSummaries = {
            type = "list",
            member = M.FraudsterSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSpeakerEnrollmentJobsInput = {
    type = "structure",
    id = "ListSpeakerEnrollmentJobsInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobStatus = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SpeakerEnrollmentJobSummary = {
    type = "structure",
    id = "SpeakerEnrollmentJobSummary",
    members = {
        JobName = {
            type = "string",
        },
        JobId = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        DomainId = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        EndedAt = {
            type = "timestamp",
        },
        FailureDetails = M.FailureDetails,
        JobProgress = M.JobProgress,
    },
}

M.ListSpeakerEnrollmentJobsOutput = {
    type = "structure",
    id = "ListSpeakerEnrollmentJobsOutput",
    members = {
        JobSummaries = {
            type = "list",
            member = M.SpeakerEnrollmentJobSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSpeakersInput = {
    type = "structure",
    id = "ListSpeakersInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SpeakerSummary = {
    type = "structure",
    id = "SpeakerSummary",
    members = {
        DomainId = {
            type = "string",
        },
        CustomerSpeakerId = {
            type = "string",
        },
        GeneratedSpeakerId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        LastAccessedAt = {
            type = "timestamp",
        },
    },
}

M.ListSpeakersOutput = {
    type = "structure",
    id = "ListSpeakersOutput",
    members = {
        SpeakerSummaries = {
            type = "list",
            member = M.SpeakerSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListWatchlistsInput = {
    type = "structure",
    id = "ListWatchlistsInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.WatchlistSummary = {
    type = "structure",
    id = "WatchlistSummary",
    members = {
        DomainId = {
            type = "string",
        },
        WatchlistId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DefaultWatchlist = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.ListWatchlistsOutput = {
    type = "structure",
    id = "ListWatchlistsOutput",
    members = {
        WatchlistSummaries = {
            type = "list",
            member = M.WatchlistSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.OptOutSpeakerInput = {
    type = "structure",
    id = "OptOutSpeakerInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SpeakerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OptOutSpeakerOutput = {
    type = "structure",
    id = "OptOutSpeakerOutput",
    members = {
        Speaker = M.Speaker,
    },
}

M.StartFraudsterRegistrationJobInput = {
    type = "structure",
    id = "StartFraudsterRegistrationJobInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        JobName = {
            type = "string",
        },
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationConfig = M.RegistrationConfig,
        InputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputDataConfig }),
        OutputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputDataConfig }),
    },
}

M.StartFraudsterRegistrationJobOutput = {
    type = "structure",
    id = "StartFraudsterRegistrationJobOutput",
    members = {
        Job = M.FraudsterRegistrationJob,
    },
}

M.StartSpeakerEnrollmentJobInput = {
    type = "structure",
    id = "StartSpeakerEnrollmentJobInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        JobName = {
            type = "string",
        },
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EnrollmentConfig = M.EnrollmentConfig,
        InputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputDataConfig }),
        OutputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputDataConfig }),
    },
}

M.StartSpeakerEnrollmentJobOutput = {
    type = "structure",
    id = "StartSpeakerEnrollmentJobOutput",
    members = {
        Job = M.SpeakerEnrollmentJob,
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.UpdateWatchlistInput = {
    type = "structure",
    id = "UpdateWatchlistInput",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WatchlistId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateWatchlistOutput = {
    type = "structure",
    id = "UpdateWatchlistOutput",
    members = {
        Watchlist = M.Watchlist,
    },
}

return M
