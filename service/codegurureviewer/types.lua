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
    members = {
        CodeCommit = {
            type = "structure",
        },
        Bitbucket = {
            type = "structure",
        },
        GitHubEnterpriseServer = {
            type = "structure",
        },
        S3Bucket = {
            type = "structure",
        },
    },
}

M.AssociateRepositoryInput = {
    type = "structure",
    members = {
        Repository = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        KMSKeyDetails = {
            type = "structure",
        },
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
    members = {
        BucketName = {
            type = "string",
        },
        CodeArtifacts = {
            type = "structure",
        },
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
        KMSKeyDetails = {
            type = "structure",
        },
        S3RepositoryDetails = {
            type = "structure",
        },
    },
}

M.AssociateRepositoryOutput = {
    type = "structure",
    members = {
        RepositoryAssociation = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
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

M.RepositoryHeadSourceCodeType = {
    type = "structure",
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
    members = {
        RequestId = {
            type = "string",
        },
        Requester = {
            type = "string",
        },
        EventInfo = {
            type = "structure",
        },
        VendorName = {
            type = "string",
        },
    },
}

M.S3BucketRepository = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Details = {
            type = "structure",
        },
    },
}

M.SourceCodeType = {
    type = "structure",
    members = {
        CommitDiff = {
            type = "structure",
        },
        RepositoryHead = {
            type = "structure",
        },
        BranchDiff = {
            type = "structure",
        },
        S3BucketRepository = {
            type = "structure",
        },
        RequestMetadata = {
            type = "structure",
        },
    },
}

M.RepositoryAnalysis = {
    type = "structure",
    members = {
        RepositoryHead = {
            type = "structure",
        },
        SourceCodeType = {
            type = "structure",
        },
    },
}

M.CodeReviewType = {
    type = "structure",
    members = {
        RepositoryAnalysis = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AnalysisTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreateCodeReviewInput = {
    type = "structure",
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
        Type = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
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
    members = {
        MeteredLinesOfCodeCount = {
            type = "number",
        },
        SuppressedLinesOfCodeCount = {
            type = "number",
        },
        FindingsCount = {
            type = "number",
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
        SourceCodeType = {
            type = "structure",
        },
        AssociationArn = {
            type = "string",
        },
        Metrics = {
            type = "structure",
        },
        AnalysisTypes = {
            type = "list",
            member_type = "string",
        },
        ConfigFileState = {
            type = "string",
        },
    },
}

M.CreateCodeReviewOutput = {
    type = "structure",
    members = {
        CodeReview = {
            type = "structure",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeCodeReviewInput = {
    type = "structure",
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
    members = {
        CodeReview = {
            type = "structure",
        },
    },
}

M.DescribeRecommendationFeedbackInput = {
    type = "structure",
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
    members = {
        CodeReviewArn = {
            type = "string",
        },
        RecommendationId = {
            type = "string",
        },
        Reactions = {
            type = "list",
            member_type = "string",
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
    members = {
        RecommendationFeedback = {
            type = "structure",
        },
    },
}

M.DescribeRepositoryAssociationInput = {
    type = "structure",
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
    members = {
        RepositoryAssociation = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.NotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DisassociateRepositoryInput = {
    type = "structure",
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
    members = {
        RepositoryAssociation = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListCodeReviewsInput = {
    type = "structure",
    members = {
        ProviderTypes = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "ProviderTypes",
            },
        },
        States = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "States",
            },
        },
        RepositoryNames = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
    members = {
        MeteredLinesOfCodeCount = {
            type = "number",
        },
        SuppressedLinesOfCodeCount = {
            type = "number",
        },
        FindingsCount = {
            type = "number",
        },
    },
}

M.CodeReviewSummary = {
    type = "structure",
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
        MetricsSummary = {
            type = "structure",
        },
        SourceCodeType = {
            type = "structure",
        },
    },
}

M.ListCodeReviewsOutput = {
    type = "structure",
    members = {
        CodeReviewSummaries = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRecommendationFeedbackInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "number",
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
            member_type = "string",
            traits = {
                http_query = "UserIds",
            },
        },
        RecommendationIds = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "RecommendationIds",
            },
        },
    },
}

M.RecommendationFeedbackSummary = {
    type = "structure",
    members = {
        RecommendationId = {
            type = "string",
        },
        Reactions = {
            type = "list",
            member_type = "string",
        },
        UserId = {
            type = "string",
        },
    },
}

M.ListRecommendationFeedbackOutput = {
    type = "structure",
    members = {
        RecommendationFeedbackSummaries = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRecommendationsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "number",
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
            member_type = "string",
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
    members = {
        FilePath = {
            type = "string",
        },
        RecommendationId = {
            type = "string",
        },
        StartLine = {
            type = "number",
        },
        EndLine = {
            type = "number",
        },
        Description = {
            type = "string",
        },
        RecommendationCategory = {
            type = "string",
        },
        RuleMetadata = {
            type = "structure",
        },
        Severity = {
            type = "string",
        },
    },
}

M.ListRecommendationsOutput = {
    type = "structure",
    members = {
        RecommendationSummaries = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRepositoryAssociationsInput = {
    type = "structure",
    members = {
        ProviderTypes = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "ProviderType",
            },
        },
        States = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "State",
            },
        },
        Names = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "Name",
            },
        },
        Owners = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "Owner",
            },
        },
        MaxResults = {
            type = "number",
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
    members = {
        RepositoryAssociationSummaries = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
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
    members = {
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.PutRecommendationFeedbackInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutRecommendationFeedbackOutput = {
    type = "structure",
}

M.TagResourceInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
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
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

return M
