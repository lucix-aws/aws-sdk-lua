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

M.AnalysisType = {
    SECURITY = "Security",
    CODE_QUALITY = "CodeQuality",
}

M.EncryptionOption = {
    AoCmk = "AWS_OWNED_CMK",
    CmCmk = "CUSTOMER_MANAGED_CMK",
}

M.KMSKeyDetails = {
    type = "structure",
    id = "KMSKeyDetails",
    members = {
        KMSKeyId = {
            type = "string",
        },
        EncryptionOption = {
            type = "string",
        },
    },
}

M.ThirdPartySourceRepository = {
    type = "structure",
    id = "ThirdPartySourceRepository",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Owner = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CodeCommitRepository = {
    type = "structure",
    id = "CodeCommitRepository",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.S3Repository = {
    type = "structure",
    id = "S3Repository",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Repository = {
    type = "structure",
    id = "Repository",
    members = {
        CodeCommit = M.CodeCommitRepository,
        Bitbucket = M.ThirdPartySourceRepository,
        GitHubEnterpriseServer = M.ThirdPartySourceRepository,
        S3Bucket = M.S3Repository,
    },
}

M.AssociateRepositoryInput = {
    type = "structure",
    id = "AssociateRepositoryInput",
    members = {
        Repository = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Repository }),
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        KMSKeyDetails = M.KMSKeyDetails,
    },
}

M.ProviderType = {
    CODE_COMMIT = "CodeCommit",
    GIT_HUB = "GitHub",
    BITBUCKET = "Bitbucket",
    GIT_HUB_ENTERPRISE_SERVER = "GitHubEnterpriseServer",
    S3_BUCKET = "S3Bucket",
}

M.CodeArtifacts = {
    type = "structure",
    id = "CodeArtifacts",
    members = {
        SourceCodeArtifactsObjectKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BuildArtifactsObjectKey = {
            type = "string",
        },
    },
}

M.S3RepositoryDetails = {
    type = "structure",
    id = "S3RepositoryDetails",
    members = {
        BucketName = {
            type = "string",
        },
        CodeArtifacts = M.CodeArtifacts,
    },
}

M.RepositoryAssociationState = {
    ASSOCIATED = "Associated",
    ASSOCIATING = "Associating",
    FAILED = "Failed",
    DISASSOCIATING = "Disassociating",
    DISASSOCIATED = "Disassociated",
}

M.RepositoryAssociation = {
    type = "structure",
    id = "RepositoryAssociation",
    members = {
        AssociationId = {
            type = "string",
        },
        AssociationArn = {
            type = "string",
        },
        ConnectionArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Owner = {
            type = "string",
        },
        ProviderType = {
            type = "string",
        },
        State = {
            type = "string",
        },
        StateReason = {
            type = "string",
        },
        LastUpdatedTimeStamp = {
            type = "timestamp",
        },
        CreatedTimeStamp = {
            type = "timestamp",
        },
        KMSKeyDetails = M.KMSKeyDetails,
        S3RepositoryDetails = M.S3RepositoryDetails,
    },
}

M.AssociateRepositoryOutput = {
    type = "structure",
    id = "AssociateRepositoryOutput",
    members = {
        RepositoryAssociation = M.RepositoryAssociation,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        Message = {
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

M.RepositoryHeadSourceCodeType = {
    type = "structure",
    id = "RepositoryHeadSourceCodeType",
    members = {
        BranchName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BranchDiffSourceCodeType = {
    type = "structure",
    id = "BranchDiffSourceCodeType",
    members = {
        SourceBranchName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationBranchName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CommitDiffSourceCodeType = {
    type = "structure",
    id = "CommitDiffSourceCodeType",
    members = {
        SourceCommit = {
            type = "string",
        },
        DestinationCommit = {
            type = "string",
        },
        MergeBaseCommit = {
            type = "string",
        },
    },
}

M.EventInfo = {
    type = "structure",
    id = "EventInfo",
    members = {
        Name = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.VendorName = {
    GITHUB = "GitHub",
    GITLAB = "GitLab",
    NATIVE_S3 = "NativeS3",
}

M.RequestMetadata = {
    type = "structure",
    id = "RequestMetadata",
    members = {
        RequestId = {
            type = "string",
        },
        Requester = {
            type = "string",
        },
        EventInfo = M.EventInfo,
        VendorName = {
            type = "string",
        },
    },
}

M.S3BucketRepository = {
    type = "structure",
    id = "S3BucketRepository",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Details = M.S3RepositoryDetails,
    },
}

M.SourceCodeType = {
    type = "structure",
    id = "SourceCodeType",
    members = {
        CommitDiff = M.CommitDiffSourceCodeType,
        RepositoryHead = M.RepositoryHeadSourceCodeType,
        BranchDiff = M.BranchDiffSourceCodeType,
        S3BucketRepository = M.S3BucketRepository,
        RequestMetadata = M.RequestMetadata,
    },
}

M.RepositoryAnalysis = {
    type = "structure",
    id = "RepositoryAnalysis",
    members = {
        RepositoryHead = M.RepositoryHeadSourceCodeType,
        SourceCodeType = M.SourceCodeType,
    },
}

M.CodeReviewType = {
    type = "structure",
    id = "CodeReviewType",
    members = {
        RepositoryAnalysis = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RepositoryAnalysis }),
        AnalysisTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateCodeReviewInput = {
    type = "structure",
    id = "CreateCodeReviewInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RepositoryAssociationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CodeReviewType }),
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.ConfigFileState = {
    PRESENT = "Present",
    ABSENT = "Absent",
    PRESENT_WITH_ERRORS = "PresentWithErrors",
}

M.Metrics = {
    type = "structure",
    id = "Metrics",
    members = {
        MeteredLinesOfCodeCount = {
            type = "long",
        },
        SuppressedLinesOfCodeCount = {
            type = "long",
        },
        FindingsCount = {
            type = "long",
        },
    },
}

M.JobState = {
    COMPLETED = "Completed",
    PENDING = "Pending",
    FAILED = "Failed",
    DELETING = "Deleting",
}

M.Type = {
    PULL_REQUEST = "PullRequest",
    REPOSITORY_ANALYSIS = "RepositoryAnalysis",
}

M.CodeReview = {
    type = "structure",
    id = "CodeReview",
    members = {
        Name = {
            type = "string",
        },
        CodeReviewArn = {
            type = "string",
        },
        RepositoryName = {
            type = "string",
        },
        Owner = {
            type = "string",
        },
        ProviderType = {
            type = "string",
        },
        State = {
            type = "string",
        },
        StateReason = {
            type = "string",
        },
        CreatedTimeStamp = {
            type = "timestamp",
        },
        LastUpdatedTimeStamp = {
            type = "timestamp",
        },
        Type = {
            type = "string",
        },
        PullRequestId = {
            type = "string",
        },
        SourceCodeType = M.SourceCodeType,
        AssociationArn = {
            type = "string",
        },
        Metrics = M.Metrics,
        AnalysisTypes = {
            type = "list",
            member = { type = "string" },
        },
        ConfigFileState = {
            type = "string",
        },
    },
}

M.CreateCodeReviewOutput = {
    type = "structure",
    id = "CreateCodeReviewOutput",
    members = {
        CodeReview = M.CodeReview,
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeCodeReviewInput = {
    type = "structure",
    id = "DescribeCodeReviewInput",
    members = {
        CodeReviewArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeCodeReviewOutput = {
    type = "structure",
    id = "DescribeCodeReviewOutput",
    members = {
        CodeReview = M.CodeReview,
    },
}

M.DescribeRecommendationFeedbackInput = {
    type = "structure",
    id = "DescribeRecommendationFeedbackInput",
    members = {
        CodeReviewArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecommendationId = {
            type = "string",
            traits = {
                http_query = "RecommendationId",
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                http_query = "UserId",
            },
        },
    },
}

M.Reaction = {
    THUMBS_UP = "ThumbsUp",
    THUMBS_DOWN = "ThumbsDown",
}

M.RecommendationFeedback = {
    type = "structure",
    id = "RecommendationFeedback",
    members = {
        CodeReviewArn = {
            type = "string",
        },
        RecommendationId = {
            type = "string",
        },
        Reactions = {
            type = "list",
            member = { type = "string" },
        },
        UserId = {
            type = "string",
        },
        CreatedTimeStamp = {
            type = "timestamp",
        },
        LastUpdatedTimeStamp = {
            type = "timestamp",
        },
    },
}

M.DescribeRecommendationFeedbackOutput = {
    type = "structure",
    id = "DescribeRecommendationFeedbackOutput",
    members = {
        RecommendationFeedback = M.RecommendationFeedback,
    },
}

M.DescribeRepositoryAssociationInput = {
    type = "structure",
    id = "DescribeRepositoryAssociationInput",
    members = {
        AssociationArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeRepositoryAssociationOutput = {
    type = "structure",
    id = "DescribeRepositoryAssociationOutput",
    members = {
        RepositoryAssociation = M.RepositoryAssociation,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.NotFoundException = {
    type = "structure",
    id = "NotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DisassociateRepositoryInput = {
    type = "structure",
    id = "DisassociateRepositoryInput",
    members = {
        AssociationArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateRepositoryOutput = {
    type = "structure",
    id = "DisassociateRepositoryOutput",
    members = {
        RepositoryAssociation = M.RepositoryAssociation,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListCodeReviewsInput = {
    type = "structure",
    id = "ListCodeReviewsInput",
    members = {
        ProviderTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "ProviderTypes",
            },
        },
        States = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "States",
            },
        },
        RepositoryNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "RepositoryNames",
            },
        },
        Type = {
            type = "string",
            traits = {
                http_query = "Type",
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.MetricsSummary = {
    type = "structure",
    id = "MetricsSummary",
    members = {
        MeteredLinesOfCodeCount = {
            type = "long",
        },
        SuppressedLinesOfCodeCount = {
            type = "long",
        },
        FindingsCount = {
            type = "long",
        },
    },
}

M.CodeReviewSummary = {
    type = "structure",
    id = "CodeReviewSummary",
    members = {
        Name = {
            type = "string",
        },
        CodeReviewArn = {
            type = "string",
        },
        RepositoryName = {
            type = "string",
        },
        Owner = {
            type = "string",
        },
        ProviderType = {
            type = "string",
        },
        State = {
            type = "string",
        },
        CreatedTimeStamp = {
            type = "timestamp",
        },
        LastUpdatedTimeStamp = {
            type = "timestamp",
        },
        Type = {
            type = "string",
        },
        PullRequestId = {
            type = "string",
        },
        MetricsSummary = M.MetricsSummary,
        SourceCodeType = M.SourceCodeType,
    },
}

M.ListCodeReviewsOutput = {
    type = "structure",
    id = "ListCodeReviewsOutput",
    members = {
        CodeReviewSummaries = {
            type = "list",
            member = M.CodeReviewSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRecommendationFeedbackInput = {
    type = "structure",
    id = "ListRecommendationFeedbackInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        CodeReviewArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "UserIds",
            },
        },
        RecommendationIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "RecommendationIds",
            },
        },
    },
}

M.RecommendationFeedbackSummary = {
    type = "structure",
    id = "RecommendationFeedbackSummary",
    members = {
        RecommendationId = {
            type = "string",
        },
        Reactions = {
            type = "list",
            member = { type = "string" },
        },
        UserId = {
            type = "string",
        },
    },
}

M.ListRecommendationFeedbackOutput = {
    type = "structure",
    id = "ListRecommendationFeedbackOutput",
    members = {
        RecommendationFeedbackSummaries = {
            type = "list",
            member = M.RecommendationFeedbackSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRecommendationsInput = {
    type = "structure",
    id = "ListRecommendationsInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        CodeReviewArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RecommendationCategory = {
    AWS_BEST_PRACTICES = "AWSBestPractices",
    AWS_CLOUDFORMATION_ISSUES = "AWSCloudFormationIssues",
    DUPLICATE_CODE = "DuplicateCode",
    CODE_MAINTENANCE_ISSUES = "CodeMaintenanceIssues",
    CONCURRENCY_ISSUES = "ConcurrencyIssues",
    INPUT_VALIDATIONS = "InputValidations",
    PYTHON_BEST_PRACTICES = "PythonBestPractices",
    JAVA_BEST_PRACTICES = "JavaBestPractices",
    RESOURCE_LEAKS = "ResourceLeaks",
    SECURITY_ISSUES = "SecurityIssues",
    CODE_INCONSISTENCIES = "CodeInconsistencies",
}

M.RuleMetadata = {
    type = "structure",
    id = "RuleMetadata",
    members = {
        RuleId = {
            type = "string",
        },
        RuleName = {
            type = "string",
        },
        ShortDescription = {
            type = "string",
        },
        LongDescription = {
            type = "string",
        },
        RuleTags = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.Severity = {
    INFO = "Info",
    LOW = "Low",
    MEDIUM = "Medium",
    HIGH = "High",
    CRITICAL = "Critical",
}

M.RecommendationSummary = {
    type = "structure",
    id = "RecommendationSummary",
    members = {
        FilePath = {
            type = "string",
        },
        RecommendationId = {
            type = "string",
        },
        StartLine = {
            type = "integer",
        },
        EndLine = {
            type = "integer",
        },
        Description = {
            type = "string",
        },
        RecommendationCategory = {
            type = "string",
        },
        RuleMetadata = M.RuleMetadata,
        Severity = {
            type = "string",
        },
    },
}

M.ListRecommendationsOutput = {
    type = "structure",
    id = "ListRecommendationsOutput",
    members = {
        RecommendationSummaries = {
            type = "list",
            member = M.RecommendationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRepositoryAssociationsInput = {
    type = "structure",
    id = "ListRepositoryAssociationsInput",
    members = {
        ProviderTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "ProviderType",
            },
        },
        States = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "State",
            },
        },
        Names = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "Name",
            },
        },
        Owners = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "Owner",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.RepositoryAssociationSummary = {
    type = "structure",
    id = "RepositoryAssociationSummary",
    members = {
        AssociationArn = {
            type = "string",
        },
        ConnectionArn = {
            type = "string",
        },
        LastUpdatedTimeStamp = {
            type = "timestamp",
        },
        AssociationId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Owner = {
            type = "string",
        },
        ProviderType = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.ListRepositoryAssociationsOutput = {
    type = "structure",
    id = "ListRepositoryAssociationsOutput",
    members = {
        RepositoryAssociationSummaries = {
            type = "list",
            member = M.RepositoryAssociationSummary,
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
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
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
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PutRecommendationFeedbackInput = {
    type = "structure",
    id = "PutRecommendationFeedbackInput",
    members = {
        CodeReviewArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecommendationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Reactions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.PutRecommendationFeedbackOutput = {
    type = "structure",
    id = "PutRecommendationFeedbackOutput",
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

return M
