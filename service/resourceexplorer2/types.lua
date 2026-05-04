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

M.AssociateDefaultViewInput = {
    type = "structure",
    id = "AssociateDefaultViewInput",
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
    id = "AssociateDefaultViewOutput",
    members = {
        ViewArn = {
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

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
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
    id = "ValidationException",
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
    id = "BatchGetViewInput",
    members = {
        ViewArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchGetViewError = {
    type = "structure",
    id = "BatchGetViewError",
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
    id = "SearchFilter",
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
    id = "IncludedProperty",
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
    id = "View",
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
    id = "BatchGetViewOutput",
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
    id = "UnauthorizedException",
    error = "client",
    members = {
        Message = {
            type = "string",
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
            traits = {
                required = true,
            },
        },
    },
}

M.CreateIndexInput = {
    type = "structure",
    id = "CreateIndexInput",
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
    id = "CreateIndexOutput",
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
    id = "DeleteIndexInput",
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
    id = "DeleteIndexOutput",
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
    id = "ListIndexesInput",
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
    id = "Index",
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
    id = "ListIndexesOutput",
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
    id = "ServiceQuotaExceededException",
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
    id = "UpdateIndexTypeInput",
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
    id = "UpdateIndexTypeOutput",
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
    id = "CreateViewInput",
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
    id = "CreateViewOutput",
    members = {
        View = M.View,
    },
}

M.DeleteViewInput = {
    type = "structure",
    id = "DeleteViewInput",
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
    id = "DeleteViewOutput",
    members = {
        ViewArn = {
            type = "string",
        },
    },
}

M.GetViewInput = {
    type = "structure",
    id = "GetViewInput",
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
    id = "GetViewOutput",
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
    id = "ListViewsInput",
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
    id = "ListViewsOutput",
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
    id = "UpdateViewInput",
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
    id = "UpdateViewOutput",
    members = {
        View = M.View,
    },
}

M.CreateResourceExplorerSetupInput = {
    type = "structure",
    id = "CreateResourceExplorerSetupInput",
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
    id = "CreateResourceExplorerSetupOutput",
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
    id = "DeleteResourceExplorerSetupInput",
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
    id = "DeleteResourceExplorerSetupOutput",
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
    id = "DisassociateDefaultViewInput",
}

M.DisassociateDefaultViewOutput = {
    type = "structure",
    id = "DisassociateDefaultViewOutput",
}

M.ErrorDetails = {
    type = "structure",
    id = "ErrorDetails",
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
    id = "GetAccountLevelServiceConfigurationInput",
}

M.OrgConfiguration = {
    type = "structure",
    id = "OrgConfiguration",
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
    id = "GetAccountLevelServiceConfigurationOutput",
    members = {
        OrgConfiguration = M.OrgConfiguration,
    },
}

M.GetDefaultViewInput = {
    type = "structure",
    id = "GetDefaultViewInput",
}

M.GetDefaultViewOutput = {
    type = "structure",
    id = "GetDefaultViewOutput",
    members = {
        ViewArn = {
            type = "string",
        },
    },
}

M.GetIndexInput = {
    type = "structure",
    id = "GetIndexInput",
}

M.GetIndexOutput = {
    type = "structure",
    id = "GetIndexOutput",
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
    id = "GetManagedViewInput",
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
    id = "ManagedView",
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
    id = "GetManagedViewOutput",
    members = {
        ManagedView = M.ManagedView,
    },
}

M.GetResourceExplorerSetupInput = {
    type = "structure",
    id = "GetResourceExplorerSetupInput",
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
    id = "IndexStatus",
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
    id = "ViewStatus",
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
    id = "RegionStatus",
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
    id = "GetResourceExplorerSetupOutput",
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
    id = "GetServiceIndexInput",
}

M.GetServiceIndexOutput = {
    type = "structure",
    id = "GetServiceIndexOutput",
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
    id = "GetServiceViewInput",
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
    id = "ServiceView",
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
    id = "GetServiceViewOutput",
    members = {
        View = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceView }),
    },
}

M.ListIndexesForMembersInput = {
    type = "structure",
    id = "ListIndexesForMembersInput",
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
    id = "MemberIndex",
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
    id = "ListIndexesForMembersOutput",
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
    id = "ListManagedViewsInput",
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
    id = "ListManagedViewsOutput",
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
    id = "ListResourcesInput",
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
    id = "ResourceProperty",
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
    id = "Resource",
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
    id = "ListResourcesOutput",
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
    id = "ListServiceIndexesInput",
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
    id = "ListServiceIndexesOutput",
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
    id = "ListServiceViewsInput",
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
    id = "ListServiceViewsOutput",
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
    id = "ListStreamingAccessForServicesInput",
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
    id = "StreamingAccessDetails",
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
    id = "ListStreamingAccessForServicesOutput",
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
    id = "ListSupportedResourceTypesInput",
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
    id = "SupportedResourceType",
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
    id = "ListSupportedResourceTypesOutput",
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

M.ResourceCount = {
    type = "structure",
    id = "ResourceCount",
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
    id = "SearchInput",
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
    id = "SearchOutput",
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
    id = "UntagResourceOutput",
}

return M
