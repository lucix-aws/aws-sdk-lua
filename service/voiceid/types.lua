local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociateFraudsterInput = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AuthenticationConfiguration = {
    type = "structure",
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
    members = {
        Domain = M.Domain,
    },
}

M.CreateWatchlistInput = {
    type = "structure",
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
    members = {
        Watchlist = M.Watchlist,
    },
}

M.DeleteDomainInput = {
    type = "structure",
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
}

M.DeleteFraudsterInput = {
    type = "structure",
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
}

M.DeleteSpeakerInput = {
    type = "structure",
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
}

M.DeleteWatchlistInput = {
    type = "structure",
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
}

M.DescribeDomainInput = {
    type = "structure",
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
    members = {
        Domain = M.Domain,
    },
}

M.DescribeFraudsterInput = {
    type = "structure",
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
    members = {
        Fraudster = M.Fraudster,
    },
}

M.DescribeFraudsterRegistrationJobInput = {
    type = "structure",
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
    members = {
        Job = M.FraudsterRegistrationJob,
    },
}

M.DescribeSpeakerInput = {
    type = "structure",
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
    members = {
        Speaker = M.Speaker,
    },
}

M.DescribeSpeakerEnrollmentJobInput = {
    type = "structure",
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
    members = {
        Job = M.SpeakerEnrollmentJob,
    },
}

M.DescribeWatchlistInput = {
    type = "structure",
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
    members = {
        Watchlist = M.Watchlist,
    },
}

M.DisassociateFraudsterInput = {
    type = "structure",
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
    members = {
        Fraudster = M.Fraudster,
    },
}

M.ListDomainsInput = {
    type = "structure",
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
    members = {
        Domain = M.Domain,
    },
}

M.EvaluateSessionInput = {
    type = "structure",
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
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListWatchlistsInput = {
    type = "structure",
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
    members = {
        Speaker = M.Speaker,
    },
}

M.StartFraudsterRegistrationJobInput = {
    type = "structure",
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
    members = {
        Job = M.FraudsterRegistrationJob,
    },
}

M.StartSpeakerEnrollmentJobInput = {
    type = "structure",
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
    members = {
        Job = M.SpeakerEnrollmentJob,
    },
}

M.TagResourceInput = {
    type = "structure",
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
}

M.UntagResourceInput = {
    type = "structure",
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
}

M.UpdateWatchlistInput = {
    type = "structure",
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
    members = {
        Watchlist = M.Watchlist,
    },
}

return M
