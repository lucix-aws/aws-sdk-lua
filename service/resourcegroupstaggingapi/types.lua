local M = {}

M.ComplianceDetails = {
    type = "structure",
    members = {
        NoncompliantKeys = {
            type = "list",
            member_type = "string",
        },
        KeysWithNoncompliantValues = {
            type = "list",
            member_type = "string",
        },
        ComplianceStatus = {
            type = "boolean",
        },
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ConstraintViolationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeReportCreationInput = {
    type = "structure",
}

M.DescribeReportCreationOutput = {
    type = "structure",
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
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottledException = {
    type = "structure",
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
    members = {
        StatusCode = {
            type = "number",
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
    members = {
        TargetIdFilters = {
            type = "list",
            member_type = "string",
        },
        RegionFilters = {
            type = "list",
            member_type = "string",
        },
        ResourceTypeFilters = {
            type = "list",
            member_type = "string",
        },
        TagKeyFilters = {
            type = "list",
            member_type = "string",
        },
        GroupBy = {
            type = "list",
            member_type = "string",
        },
        MaxResults = {
            type = "number",
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
            type = "number",
        },
    },
}

M.GetComplianceSummaryOutput = {
    type = "structure",
    members = {
        SummaryList = {
            type = "list",
            member_type = "structure",
        },
        PaginationToken = {
            type = "string",
        },
    },
}

M.TagFilter = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Values = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GetResourcesInput = {
    type = "structure",
    members = {
        PaginationToken = {
            type = "string",
        },
        TagFilters = {
            type = "list",
            member_type = "structure",
        },
        ResourcesPerPage = {
            type = "number",
        },
        TagsPerPage = {
            type = "number",
        },
        ResourceTypeFilters = {
            type = "list",
            member_type = "string",
        },
        IncludeComplianceDetails = {
            type = "boolean",
        },
        ExcludeCompliantResources = {
            type = "boolean",
        },
        ResourceARNList = {
            type = "list",
            member_type = "string",
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

M.ResourceTagMapping = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ComplianceDetails = {
            type = "structure",
        },
    },
}

M.GetResourcesOutput = {
    type = "structure",
    members = {
        PaginationToken = {
            type = "string",
        },
        ResourceTagMappingList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PaginationTokenExpiredException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetTagKeysInput = {
    type = "structure",
    members = {
        PaginationToken = {
            type = "string",
        },
    },
}

M.GetTagKeysOutput = {
    type = "structure",
    members = {
        PaginationToken = {
            type = "string",
        },
        TagKeys = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GetTagValuesInput = {
    type = "structure",
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
    members = {
        PaginationToken = {
            type = "string",
        },
        TagValues = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListRequiredTagsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.RequiredTag = {
    type = "structure",
    members = {
        ResourceType = {
            type = "string",
        },
        CloudFormationResourceTypes = {
            type = "list",
            member_type = "string",
        },
        ReportingTagKeys = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListRequiredTagsOutput = {
    type = "structure",
    members = {
        RequiredTags = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StartReportCreationInput = {
    type = "structure",
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
}

M.TagResourcesInput = {
    type = "structure",
    members = {
        ResourceARNList = {
            type = "list",
            member_type = "string",
            traits = {
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

M.TagResourcesOutput = {
    type = "structure",
    members = {
        FailedResourcesMap = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.UntagResourcesInput = {
    type = "structure",
    members = {
        ResourceARNList = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourcesOutput = {
    type = "structure",
    members = {
        FailedResourcesMap = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

return M
