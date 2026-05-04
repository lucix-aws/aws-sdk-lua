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

M.ActiveTimeRange = {
    type = "structure",
    members = {
        activeAfterInclusive = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        activeBeforeInclusive = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateSourceViewsInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceViews = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateSourceViewsOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BillingViewHealthStatusException = {
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
    },
}

M.ValidationExceptionField = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "unknownOperation",
    CANNOT_PARSE = "cannotParse",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    OTHER = "other",
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
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldList = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.CostCategoryValues = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.Dimension = {
    LINKED_ACCOUNT = "LINKED_ACCOUNT",
}

M.DimensionValues = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TagValues = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TimeRange = {
    type = "structure",
    members = {
        beginDateInclusive = {
            type = "timestamp",
        },
        endDateInclusive = {
            type = "timestamp",
        },
    },
}

M.Expression = {
    type = "structure",
    members = {
        dimensions = M.DimensionValues,
        tags = M.TagValues,
        costCategories = M.CostCategoryValues,
        timeRange = M.TimeRange,
    },
}

M.ResourceTag = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
        },
    },
}

M.CreateBillingViewInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        sourceViews = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        dataFilterExpression = M.Expression,
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
                idempotency_token = true,
            },
        },
        resourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
    },
}

M.CreateBillingViewOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
        },
    },
}

M.DeleteBillingViewInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        force = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DeleteBillingViewOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateSourceViewsInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceViews = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateSourceViewsOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetBillingViewInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BillingViewType = {
    PRIMARY = "PRIMARY",
    BILLING_GROUP = "BILLING_GROUP",
    CUSTOM = "CUSTOM",
    BILLING_TRANSFER = "BILLING_TRANSFER",
    BILLING_TRANSFER_SHOWBACK = "BILLING_TRANSFER_SHOWBACK",
}

M.BillingViewStatus = {
    HEALTHY = "HEALTHY",
    UNHEALTHY = "UNHEALTHY",
    CREATING = "CREATING",
    UPDATING = "UPDATING",
}

M.BillingViewStatusReason = {
    SOURCE_VIEW_UNHEALTHY = "SOURCE_VIEW_UNHEALTHY",
    SOURCE_VIEW_UPDATING = "SOURCE_VIEW_UPDATING",
    SOURCE_VIEW_ACCESS_DENIED = "SOURCE_VIEW_ACCESS_DENIED",
    SOURCE_VIEW_NOT_FOUND = "SOURCE_VIEW_NOT_FOUND",
    CYCLIC_DEPENDENCY = "CYCLIC_DEPENDENCY",
    SOURCE_VIEW_DEPTH_EXCEEDED = "SOURCE_VIEW_DEPTH_EXCEEDED",
    AGGREGATE_SOURCE = "AGGREGATE_SOURCE",
    VIEW_OWNER_NOT_MANAGEMENT_ACCOUNT = "VIEW_OWNER_NOT_MANAGEMENT_ACCOUNT",
}

M.BillingViewHealthStatus = {
    type = "structure",
    members = {
        statusCode = {
            type = "string",
        },
        statusReasons = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BillingViewElement = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        billingViewType = {
            type = "string",
        },
        ownerAccountId = {
            type = "string",
        },
        sourceAccountId = {
            type = "string",
        },
        dataFilterExpression = M.Expression,
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        derivedViewCount = {
            type = "integer",
        },
        sourceViewCount = {
            type = "integer",
        },
        viewDefinitionLastUpdatedAt = {
            type = "timestamp",
        },
        healthStatus = M.BillingViewHealthStatus,
    },
}

M.GetBillingViewOutput = {
    type = "structure",
    members = {
        billingView = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BillingViewElement }),
    },
}

M.GetResourcePolicyInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetResourcePolicyOutput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policy = {
            type = "string",
        },
    },
}

M.SearchOption = {
    STARTS_WITH = "STARTS_WITH",
}

M.StringSearch = {
    type = "structure",
    members = {
        searchOption = {
            type = "string",
            traits = {
                required = true,
            },
        },
        searchValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListBillingViewsInput = {
    type = "structure",
    members = {
        activeTimeRange = M.ActiveTimeRange,
        arns = {
            type = "list",
            member = { type = "string" },
        },
        billingViewTypes = {
            type = "list",
            member = { type = "string" },
        },
        names = {
            type = "list",
            member = M.StringSearch,
        },
        ownerAccountId = {
            type = "string",
        },
        sourceAccountId = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.BillingViewListElement = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        ownerAccountId = {
            type = "string",
        },
        sourceAccountId = {
            type = "string",
        },
        billingViewType = {
            type = "string",
        },
        healthStatus = M.BillingViewHealthStatus,
    },
}

M.ListBillingViewsOutput = {
    type = "structure",
    members = {
        billingViews = {
            type = "list",
            member = M.BillingViewListElement,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSourceViewsForBillingViewInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSourceViewsForBillingViewOutput = {
    type = "structure",
    members = {
        sourceViews = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        nextToken = {
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
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        resourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceTags = {
            type = "list",
            member = M.ResourceTag,
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
                required = true,
            },
        },
        resourceTagKeys = {
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

M.UpdateBillingViewInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        dataFilterExpression = M.Expression,
    },
}

M.UpdateBillingViewOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

return M
