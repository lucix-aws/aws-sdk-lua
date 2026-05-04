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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
        },
        Filters = {
            type = "structure",
        },
    },
}

M.BatchGetViewOutput = {
    type = "structure",
    members = {
        Views = {
            type = "list",
            member_type = "structure",
        },
        Errors = {
            type = "list",
            member_type = "structure",
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
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
        },
        MaxResults = {
            type = "number",
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
            member_type = "structure",
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
        },
        ViewName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IncludedProperties = {
            type = "list",
            member_type = "structure",
        },
        Scope = {
            type = "string",
        },
        Filters = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateViewOutput = {
    type = "structure",
    members = {
        View = {
            type = "structure",
        },
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
        View = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
        },
    },
}

M.ListViewsOutput = {
    type = "structure",
    members = {
        Views = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
        Filters = {
            type = "structure",
        },
    },
}

M.UpdateViewOutput = {
    type = "structure",
    members = {
        View = {
            type = "structure",
        },
    },
}

M.CreateResourceExplorerSetupInput = {
    type = "structure",
    members = {
        RegionList = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        AggregatorRegions = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
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
        OrgConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
        },
        ReplicatingTo = {
            type = "list",
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
        },
        Filters = {
            type = "structure",
        },
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
        ManagedView = {
            type = "structure",
        },
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
            type = "number",
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
        Index = {
            type = "structure",
        },
        ErrorDetails = {
            type = "structure",
        },
    },
}

M.ViewStatus = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        View = {
            type = "structure",
        },
        ErrorDetails = {
            type = "structure",
        },
    },
}

M.RegionStatus = {
    type = "structure",
    members = {
        Region = {
            type = "string",
        },
        Index = {
            type = "structure",
        },
        View = {
            type = "structure",
        },
    },
}

M.GetResourceExplorerSetupOutput = {
    type = "structure",
    members = {
        Regions = {
            type = "list",
            member_type = "structure",
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
        Filters = {
            type = "structure",
        },
        IncludedProperties = {
            type = "list",
            member_type = "structure",
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
        View = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListIndexesForMembersInput = {
    type = "structure",
    members = {
        AccountIdList = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "string",
        },
    },
}

M.ListResourcesInput = {
    type = "structure",
    members = {
        Filters = {
            type = "structure",
        },
        MaxResults = {
            type = "number",
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
            member_type = "structure",
        },
    },
}

M.ListResourcesOutput = {
    type = "structure",
    members = {
        Resources = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        MaxResults = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "string",
        },
    },
}

M.ListStreamingAccessForServicesInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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

M.ResourceCount = {
    type = "structure",
    members = {
        TotalResources = {
            type = "number",
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
            type = "number",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        ViewArn = {
            type = "string",
        },
        Count = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
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
