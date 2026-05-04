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

M.AssociateDefaultViewInput = {
    type = "structure",
    members = {
        ViewArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateDefaultViewOutput = {
    type = "structure",
    members = {
        ViewArn = {
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

M.ResourceNotFoundException = {
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

M.ValidationExceptionField = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValidationIssue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FieldList = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.AWSServiceAccessStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.BatchGetViewInput = {
    type = "structure",
    members = {
        ViewArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchGetViewError = {
    type = "structure",
    members = {
        ViewArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchFilter = {
    type = "structure",
    members = {
        FilterString = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IncludedProperty = {
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

M.View = {
    type = "structure",
    members = {
        ViewArn = {
            type = "string",
        },
        ViewName = {
            type = "string",
        },
        Owner = {
            type = "string",
        },
        LastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Scope = {
            type = "string",
        },
        IncludedProperties = {
            type = "list",
            member = M.IncludedProperty,
        },
        Filters = M.SearchFilter,
    },
}

M.BatchGetViewOutput = {
    type = "structure",
    members = {
        Views = {
            type = "list",
            member = M.View,
        },
        Errors = {
            type = "list",
            member = M.BatchGetViewError,
        },
    },
}

M.UnauthorizedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateIndexInput = {
    type = "structure",
    members = {
        ClientToken = {
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
    },
}

M.IndexState = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    DELETED = "DELETED",
    UPDATING = "UPDATING",
}

M.CreateIndexOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        State = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.DeleteIndexInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIndexOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        State = {
            type = "string",
        },
        LastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.IndexType = {
    LOCAL = "LOCAL",
    AGGREGATOR = "AGGREGATOR",
}

M.ListIndexesInput = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Regions = {
            type = "list",
            member = { type = "string" },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Index = {
    type = "structure",
    members = {
        Region = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.ListIndexesOutput = {
    type = "structure",
    members = {
        Indexes = {
            type = "list",
            member = M.Index,
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
        Message = {
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
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateIndexTypeInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateIndexTypeOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        State = {
            type = "string",
        },
        LastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.CreateViewInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        ViewName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IncludedProperties = {
            type = "list",
            member = M.IncludedProperty,
        },
        Scope = {
            type = "string",
        },
        Filters = M.SearchFilter,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateViewOutput = {
    type = "structure",
    members = {
        View = M.View,
    },
}

M.DeleteViewInput = {
    type = "structure",
    members = {
        ViewArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteViewOutput = {
    type = "structure",
    members = {
        ViewArn = {
            type = "string",
        },
    },
}

M.GetViewInput = {
    type = "structure",
    members = {
        ViewArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetViewOutput = {
    type = "structure",
    members = {
        View = M.View,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListViewsInput = {
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

M.ListViewsOutput = {
    type = "structure",
    members = {
        Views = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateViewInput = {
    type = "structure",
    members = {
        ViewArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IncludedProperties = {
            type = "list",
            member = M.IncludedProperty,
        },
        Filters = M.SearchFilter,
    },
}

M.UpdateViewOutput = {
    type = "structure",
    members = {
        View = M.View,
    },
}

M.CreateResourceExplorerSetupInput = {
    type = "structure",
    members = {
        RegionList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        AggregatorRegions = {
            type = "list",
            member = { type = "string" },
        },
        ViewName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateResourceExplorerSetupOutput = {
    type = "structure",
    members = {
        TaskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteResourceExplorerSetupInput = {
    type = "structure",
    members = {
        RegionList = {
            type = "list",
            member = { type = "string" },
        },
        DeleteInAllRegions = {
            type = "boolean",
        },
    },
}

M.DeleteResourceExplorerSetupOutput = {
    type = "structure",
    members = {
        TaskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateDefaultViewInput = {
    type = "structure",
}

M.DisassociateDefaultViewOutput = {
    type = "structure",
}

M.ErrorDetails = {
    type = "structure",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.GetAccountLevelServiceConfigurationInput = {
    type = "structure",
}

M.OrgConfiguration = {
    type = "structure",
    members = {
        AWSServiceAccessStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceLinkedRole = {
            type = "string",
        },
    },
}

M.GetAccountLevelServiceConfigurationOutput = {
    type = "structure",
    members = {
        OrgConfiguration = M.OrgConfiguration,
    },
}

M.GetDefaultViewInput = {
    type = "structure",
}

M.GetDefaultViewOutput = {
    type = "structure",
    members = {
        ViewArn = {
            type = "string",
        },
    },
}

M.GetIndexInput = {
    type = "structure",
}

M.GetIndexOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        State = {
            type = "string",
        },
        ReplicatingFrom = {
            type = "list",
            member = { type = "string" },
        },
        ReplicatingTo = {
            type = "list",
            member = { type = "string" },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        LastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetManagedViewInput = {
    type = "structure",
    members = {
        ManagedViewArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ManagedView = {
    type = "structure",
    members = {
        ManagedViewArn = {
            type = "string",
        },
        ManagedViewName = {
            type = "string",
        },
        TrustedService = {
            type = "string",
        },
        LastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Owner = {
            type = "string",
        },
        Scope = {
            type = "string",
        },
        IncludedProperties = {
            type = "list",
            member = M.IncludedProperty,
        },
        Filters = M.SearchFilter,
        ResourcePolicy = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.GetManagedViewOutput = {
    type = "structure",
    members = {
        ManagedView = M.ManagedView,
    },
}

M.GetResourceExplorerSetupInput = {
    type = "structure",
    members = {
        TaskId = {
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

M.OperationStatus = {
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
    SKIPPED = "SKIPPED",
}

M.IndexStatus = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        Index = M.Index,
        ErrorDetails = M.ErrorDetails,
    },
}

M.ViewStatus = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        View = M.View,
        ErrorDetails = M.ErrorDetails,
    },
}

M.RegionStatus = {
    type = "structure",
    members = {
        Region = {
            type = "string",
        },
        Index = M.IndexStatus,
        View = M.ViewStatus,
    },
}

M.GetResourceExplorerSetupOutput = {
    type = "structure",
    members = {
        Regions = {
            type = "list",
            member = M.RegionStatus,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetServiceIndexInput = {
    type = "structure",
}

M.GetServiceIndexOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.GetServiceViewInput = {
    type = "structure",
    members = {
        ServiceViewArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceView = {
    type = "structure",
    members = {
        ServiceViewArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceViewName = {
            type = "string",
        },
        Filters = M.SearchFilter,
        IncludedProperties = {
            type = "list",
            member = M.IncludedProperty,
        },
        StreamingAccessForService = {
            type = "string",
        },
        ScopeType = {
            type = "string",
        },
    },
}

M.GetServiceViewOutput = {
    type = "structure",
    members = {
        View = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceView }),
    },
}

M.ListIndexesForMembersInput = {
    type = "structure",
    members = {
        AccountIdList = {
            type = "list",
            member = { type = "string" },
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

M.MemberIndex = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.ListIndexesForMembersOutput = {
    type = "structure",
    members = {
        Indexes = {
            type = "list",
            member = M.MemberIndex,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListManagedViewsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        ServicePrincipal = {
            type = "string",
        },
    },
}

M.ListManagedViewsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        ManagedViews = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListResourcesInput = {
    type = "structure",
    members = {
        Filters = M.SearchFilter,
        MaxResults = {
            type = "integer",
        },
        ViewArn = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ResourceProperty = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        LastReportedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Data = {
            type = "document",
        },
    },
}

M.Resource = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        OwningAccountId = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        Service = {
            type = "string",
        },
        LastReportedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Properties = {
            type = "list",
            member = M.ResourceProperty,
        },
    },
}

M.ListResourcesOutput = {
    type = "structure",
    members = {
        Resources = {
            type = "list",
            member = M.Resource,
        },
        NextToken = {
            type = "string",
        },
        ViewArn = {
            type = "string",
        },
    },
}

M.ListServiceIndexesInput = {
    type = "structure",
    members = {
        Regions = {
            type = "list",
            member = { type = "string" },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListServiceIndexesOutput = {
    type = "structure",
    members = {
        Indexes = {
            type = "list",
            member = M.Index,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListServiceViewsInput = {
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

M.ListServiceViewsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        ServiceViews = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListStreamingAccessForServicesInput = {
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

M.StreamingAccessDetails = {
    type = "structure",
    members = {
        ServicePrincipal = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListStreamingAccessForServicesOutput = {
    type = "structure",
    members = {
        StreamingAccessForServices = {
            type = "list",
            member = M.StreamingAccessDetails,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSupportedResourceTypesInput = {
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

M.SupportedResourceType = {
    type = "structure",
    members = {
        Service = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.ListSupportedResourceTypesOutput = {
    type = "structure",
    members = {
        ResourceTypes = {
            type = "list",
            member = M.SupportedResourceType,
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ResourceCount = {
    type = "structure",
    members = {
        TotalResources = {
            type = "long",
        },
        Complete = {
            type = "boolean",
        },
    },
}

M.SearchInput = {
    type = "structure",
    members = {
        QueryString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        ViewArn = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SearchOutput = {
    type = "structure",
    members = {
        Resources = {
            type = "list",
            member = M.Resource,
        },
        NextToken = {
            type = "string",
        },
        ViewArn = {
            type = "string",
        },
        Count = M.ResourceCount,
    },
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
            key = { type = "string" },
            value = { type = "string" },
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
        tagKeys = {
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
