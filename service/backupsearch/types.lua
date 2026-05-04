local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BackupCreationTimeFilter = {
    type = "structure",
    members = {
        CreatedAfter = {
            type = "timestamp",
        },
        CreatedBefore = {
            type = "timestamp",
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ListSearchJobBackupsInput = {
    type = "structure",
    members = {
        SearchJobIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 1000,
                http_query = "maxResults",
            },
        },
    },
}

M.ResourceType = {
    S3 = "S3",
    EBS = "EBS",
}

M.SearchJobState = {
    RUNNING = "RUNNING",
    COMPLETED = "COMPLETED",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    FAILED = "FAILED",
}

M.SearchJobBackupsResult = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        BackupResourceArn = {
            type = "string",
        },
        SourceResourceArn = {
            type = "string",
        },
        IndexCreationTime = {
            type = "timestamp",
        },
        BackupCreationTime = {
            type = "timestamp",
        },
    },
}

M.ListSearchJobBackupsOutput = {
    type = "structure",
    members = {
        Results = {
            type = "list",
            member = M.SearchJobBackupsResult,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceCode = {
            type = "string",
        },
        quotaCode = {
            type = "string",
        },
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListSearchJobResultsInput = {
    type = "structure",
    members = {
        SearchJobIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 1000,
                http_query = "maxResults",
            },
        },
    },
}

M.EBSResultItem = {
    type = "structure",
    members = {
        BackupResourceArn = {
            type = "string",
        },
        SourceResourceArn = {
            type = "string",
        },
        BackupVaultName = {
            type = "string",
        },
        FileSystemIdentifier = {
            type = "string",
        },
        FilePath = {
            type = "string",
        },
        FileSize = {
            type = "long",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.S3ResultItem = {
    type = "structure",
    members = {
        BackupResourceArn = {
            type = "string",
        },
        SourceResourceArn = {
            type = "string",
        },
        BackupVaultName = {
            type = "string",
        },
        ObjectKey = {
            type = "string",
        },
        ObjectSize = {
            type = "long",
        },
        CreationTime = {
            type = "timestamp",
        },
        ETag = {
            type = "string",
        },
        VersionId = {
            type = "string",
        },
    },
}

M.ResultItem = {
    type = "union",
    members = {
        S3ResultItem = M.S3ResultItem,
        EBSResultItem = M.EBSResultItem,
    },
}

M.ListSearchJobResultsOutput = {
    type = "structure",
    members = {
        Results = {
            type = "list",
            member = M.ResultItem,
            traits = {
                required = true,
            },
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CurrentSearchProgress = {
    type = "structure",
    members = {
        RecoveryPointsScannedCount = {
            type = "integer",
        },
        ItemsScannedCount = {
            type = "long",
        },
        ItemsMatchedCount = {
            type = "long",
        },
    },
}

M.GetSearchJobInput = {
    type = "structure",
    members = {
        SearchJobIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TimeConditionOperator = {
    EQUALS_TO = "EQUALS_TO",
    NOT_EQUALS_TO = "NOT_EQUALS_TO",
    LESS_THAN_EQUAL_TO = "LESS_THAN_EQUAL_TO",
    GREATER_THAN_EQUAL_TO = "GREATER_THAN_EQUAL_TO",
}

M.TimeCondition = {
    type = "structure",
    members = {
        Value = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Operator = {
            type = "string",
            traits = {
                default = "EQUALS_TO",
            },
        },
    },
}

M.StringConditionOperator = {
    EQUALS_TO = "EQUALS_TO",
    NOT_EQUALS_TO = "NOT_EQUALS_TO",
    CONTAINS = "CONTAINS",
    DOES_NOT_CONTAIN = "DOES_NOT_CONTAIN",
    BEGINS_WITH = "BEGINS_WITH",
    ENDS_WITH = "ENDS_WITH",
    DOES_NOT_BEGIN_WITH = "DOES_NOT_BEGIN_WITH",
    DOES_NOT_END_WITH = "DOES_NOT_END_WITH",
}

M.StringCondition = {
    type = "structure",
    members = {
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Operator = {
            type = "string",
            traits = {
                default = "EQUALS_TO",
            },
        },
    },
}

M.LongConditionOperator = {
    EQUALS_TO = "EQUALS_TO",
    NOT_EQUALS_TO = "NOT_EQUALS_TO",
    LESS_THAN_EQUAL_TO = "LESS_THAN_EQUAL_TO",
    GREATER_THAN_EQUAL_TO = "GREATER_THAN_EQUAL_TO",
}

M.LongCondition = {
    type = "structure",
    members = {
        Value = {
            type = "long",
            traits = {
                required = true,
            },
        },
        Operator = {
            type = "string",
            traits = {
                default = "EQUALS_TO",
            },
        },
    },
}

M.EBSItemFilter = {
    type = "structure",
    members = {
        FilePaths = {
            type = "list",
            member = M.StringCondition,
        },
        Sizes = {
            type = "list",
            member = M.LongCondition,
        },
        CreationTimes = {
            type = "list",
            member = M.TimeCondition,
        },
        LastModificationTimes = {
            type = "list",
            member = M.TimeCondition,
        },
    },
}

M.S3ItemFilter = {
    type = "structure",
    members = {
        ObjectKeys = {
            type = "list",
            member = M.StringCondition,
        },
        Sizes = {
            type = "list",
            member = M.LongCondition,
        },
        CreationTimes = {
            type = "list",
            member = M.TimeCondition,
        },
        VersionIds = {
            type = "list",
            member = M.StringCondition,
        },
        ETags = {
            type = "list",
            member = M.StringCondition,
        },
    },
}

M.ItemFilters = {
    type = "structure",
    members = {
        S3ItemFilters = {
            type = "list",
            member = M.S3ItemFilter,
        },
        EBSItemFilters = {
            type = "list",
            member = M.EBSItemFilter,
        },
    },
}

M.SearchScope = {
    type = "structure",
    members = {
        BackupResourceTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        BackupResourceCreationTime = M.BackupCreationTimeFilter,
        SourceResourceArns = {
            type = "list",
            member = { type = "string" },
        },
        BackupResourceArns = {
            type = "list",
            member = { type = "string" },
        },
        BackupResourceTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.SearchScopeSummary = {
    type = "structure",
    members = {
        TotalRecoveryPointsToScanCount = {
            type = "integer",
        },
        TotalItemsToScanCount = {
            type = "long",
        },
    },
}

M.GetSearchJobOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        SearchScopeSummary = M.SearchScopeSummary,
        CurrentSearchProgress = M.CurrentSearchProgress,
        StatusMessage = {
            type = "string",
        },
        EncryptionKeyArn = {
            type = "string",
        },
        CompletionTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SearchScope = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SearchScope }),
        ItemFilters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ItemFilters }),
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        SearchJobIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SearchJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListSearchJobsInput = {
    type = "structure",
    members = {
        ByStatus = {
            type = "string",
            traits = {
                http_query = "Status",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 1000,
                http_query = "MaxResults",
            },
        },
    },
}

M.SearchJobSummary = {
    type = "structure",
    members = {
        SearchJobIdentifier = {
            type = "string",
        },
        SearchJobArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        CompletionTime = {
            type = "timestamp",
        },
        SearchScopeSummary = M.SearchScopeSummary,
        StatusMessage = {
            type = "string",
        },
    },
}

M.ListSearchJobsOutput = {
    type = "structure",
    members = {
        SearchJobs = {
            type = "list",
            member = M.SearchJobSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartSearchJobInput = {
    type = "structure",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Name = {
            type = "string",
        },
        EncryptionKeyArn = {
            type = "string",
        },
        ClientToken = {
            type = "string",
        },
        SearchScope = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SearchScope }),
        ItemFilters = M.ItemFilters,
    },
}

M.StartSearchJobOutput = {
    type = "structure",
    members = {
        SearchJobArn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        SearchJobIdentifier = {
            type = "string",
        },
    },
}

M.StopSearchJobInput = {
    type = "structure",
    members = {
        SearchJobIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopSearchJobOutput = {
    type = "structure",
}

M.ExportJobStatus = {
    RUNNING = "RUNNING",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
}

M.S3ExportSpecification = {
    type = "structure",
    members = {
        DestinationBucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationPrefix = {
            type = "string",
        },
    },
}

M.ExportSpecification = {
    type = "union",
    members = {
        s3ExportSpecification = M.S3ExportSpecification,
    },
}

M.GetSearchResultExportJobInput = {
    type = "structure",
    members = {
        ExportJobIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSearchResultExportJobOutput = {
    type = "structure",
    members = {
        ExportJobIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExportJobArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        CompletionTime = {
            type = "timestamp",
        },
        StatusMessage = {
            type = "string",
        },
        ExportSpecification = M.ExportSpecification,
        SearchJobArn = {
            type = "string",
        },
    },
}

M.ListSearchResultExportJobsInput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                http_query = "Status",
            },
        },
        SearchJobIdentifier = {
            type = "string",
            traits = {
                http_query = "SearchJobIdentifier",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 1000,
                http_query = "MaxResults",
            },
        },
    },
}

M.ExportJobSummary = {
    type = "structure",
    members = {
        ExportJobIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExportJobArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        CompletionTime = {
            type = "timestamp",
        },
        StatusMessage = {
            type = "string",
        },
        SearchJobArn = {
            type = "string",
        },
    },
}

M.ListSearchResultExportJobsOutput = {
    type = "structure",
    members = {
        ExportJobs = {
            type = "list",
            member = M.ExportJobSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StartSearchResultExportJobInput = {
    type = "structure",
    members = {
        SearchJobIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExportSpecification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExportSpecification }),
        ClientToken = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        RoleArn = {
            type = "string",
        },
    },
}

M.StartSearchResultExportJobOutput = {
    type = "structure",
    members = {
        ExportJobArn = {
            type = "string",
        },
        ExportJobIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
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
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
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
}

return M
