local M = {}

M.ComplianceDetails = {
    type = "structure",
    id = "ComplianceDetails",
    members = {
        NoncompliantKeys = {
            type = "list",
            member = { type = "string" },
        },
        KeysWithNoncompliantValues = {
            type = "list",
            member = { type = "string" },
        },
        ComplianceStatus = {
            type = "boolean",
        },
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    id = "ConcurrentModificationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ConstraintViolationException = {
    type = "structure",
    id = "ConstraintViolationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeReportCreationInput = {
    type = "structure",
    id = "DescribeReportCreationInput",
}

M.DescribeReportCreationOutput = {
    type = "structure",
    id = "DescribeReportCreationOutput",
    members = {
        Status = {
            type = "string",
        },
        S3Location = {
            type = "string",
        },
        StartDate = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.InternalServiceException = {
    type = "structure",
    id = "InternalServiceException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    id = "InvalidParameterException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottledException = {
    type = "structure",
    id = "ThrottledException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ErrorCode = {
    INTERNAL_SERVICE_EXCEPTION = "InternalServiceException",
    INVALID_PARAMETER_EXCEPTION = "InvalidParameterException",
}

M.FailureInfo = {
    type = "structure",
    id = "FailureInfo",
    members = {
        StatusCode = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.GroupByAttribute = {
    TARGET_ID = "TARGET_ID",
    REGION = "REGION",
    RESOURCE_TYPE = "RESOURCE_TYPE",
}

M.GetComplianceSummaryInput = {
    type = "structure",
    id = "GetComplianceSummaryInput",
    members = {
        TargetIdFilters = {
            type = "list",
            member = { type = "string" },
        },
        RegionFilters = {
            type = "list",
            member = { type = "string" },
        },
        ResourceTypeFilters = {
            type = "list",
            member = { type = "string" },
        },
        TagKeyFilters = {
            type = "list",
            member = { type = "string" },
        },
        GroupBy = {
            type = "list",
            member = { type = "string" },
        },
        MaxResults = {
            type = "integer",
        },
        PaginationToken = {
            type = "string",
        },
    },
}

M.TargetIdType = {
    ACCOUNT = "ACCOUNT",
    OU = "OU",
    ROOT = "ROOT",
}

M.Summary = {
    type = "structure",
    id = "Summary",
    members = {
        LastUpdated = {
            type = "string",
        },
        TargetId = {
            type = "string",
        },
        TargetIdType = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        NonCompliantResources = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetComplianceSummaryOutput = {
    type = "structure",
    id = "GetComplianceSummaryOutput",
    members = {
        SummaryList = {
            type = "list",
            member = M.Summary,
        },
        PaginationToken = {
            type = "string",
        },
    },
}

M.TagFilter = {
    type = "structure",
    id = "TagFilter",
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

M.GetResourcesInput = {
    type = "structure",
    id = "GetResourcesInput",
    members = {
        PaginationToken = {
            type = "string",
        },
        TagFilters = {
            type = "list",
            member = M.TagFilter,
        },
        ResourcesPerPage = {
            type = "integer",
        },
        TagsPerPage = {
            type = "integer",
        },
        ResourceTypeFilters = {
            type = "list",
            member = { type = "string" },
        },
        IncludeComplianceDetails = {
            type = "boolean",
        },
        ExcludeCompliantResources = {
            type = "boolean",
        },
        ResourceARNList = {
            type = "list",
            member = { type = "string" },
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

M.ResourceTagMapping = {
    type = "structure",
    id = "ResourceTagMapping",
    members = {
        ResourceARN = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ComplianceDetails = M.ComplianceDetails,
    },
}

M.GetResourcesOutput = {
    type = "structure",
    id = "GetResourcesOutput",
    members = {
        PaginationToken = {
            type = "string",
        },
        ResourceTagMappingList = {
            type = "list",
            member = M.ResourceTagMapping,
        },
    },
}

M.PaginationTokenExpiredException = {
    type = "structure",
    id = "PaginationTokenExpiredException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetTagKeysInput = {
    type = "structure",
    id = "GetTagKeysInput",
    members = {
        PaginationToken = {
            type = "string",
        },
    },
}

M.GetTagKeysOutput = {
    type = "structure",
    id = "GetTagKeysOutput",
    members = {
        PaginationToken = {
            type = "string",
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetTagValuesInput = {
    type = "structure",
    id = "GetTagValuesInput",
    members = {
        PaginationToken = {
            type = "string",
        },
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTagValuesOutput = {
    type = "structure",
    id = "GetTagValuesOutput",
    members = {
        PaginationToken = {
            type = "string",
        },
        TagValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListRequiredTagsInput = {
    type = "structure",
    id = "ListRequiredTagsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.RequiredTag = {
    type = "structure",
    id = "RequiredTag",
    members = {
        ResourceType = {
            type = "string",
        },
        CloudFormationResourceTypes = {
            type = "list",
            member = { type = "string" },
        },
        ReportingTagKeys = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListRequiredTagsOutput = {
    type = "structure",
    id = "ListRequiredTagsOutput",
    members = {
        RequiredTags = {
            type = "list",
            member = M.RequiredTag,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StartReportCreationInput = {
    type = "structure",
    id = "StartReportCreationInput",
    members = {
        S3Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartReportCreationOutput = {
    type = "structure",
    id = "StartReportCreationOutput",
}

M.TagResourcesInput = {
    type = "structure",
    id = "TagResourcesInput",
    members = {
        ResourceARNList = {
            type = "list",
            member = { type = "string" },
            traits = {
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

M.TagResourcesOutput = {
    type = "structure",
    id = "TagResourcesOutput",
    members = {
        FailedResourcesMap = {
            type = "map",
            key = { type = "string" },
            value = M.FailureInfo,
        },
    },
}

M.UntagResourcesInput = {
    type = "structure",
    id = "UntagResourcesInput",
    members = {
        ResourceARNList = {
            type = "list",
            member = { type = "string" },
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

M.UntagResourcesOutput = {
    type = "structure",
    id = "UntagResourcesOutput",
    members = {
        FailedResourcesMap = {
            type = "map",
            key = { type = "string" },
            value = M.FailureInfo,
        },
    },
}

return M
