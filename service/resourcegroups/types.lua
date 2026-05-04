local M = {}

M.GroupLifecycleEventsDesiredStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.GroupLifecycleEventsStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    IN_PROGRESS = "IN_PROGRESS",
    ERROR = "ERROR",
}

M.AccountSettings = {
    type = "structure",
    members = {
        GroupLifecycleEventsDesiredStatus = {
            type = "string",
        },
        GroupLifecycleEventsStatus = {
            type = "string",
        },
        GroupLifecycleEventsStatusMessage = {
            type = "string",
        },
    },
}

M.BadRequestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CancelTagSyncTaskInput = {
    type = "structure",
    members = {
        TaskArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelTagSyncTaskOutput = {
    type = "structure",
}

M.ForbiddenException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InternalServerErrorException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MethodNotAllowedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
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

M.GroupConfigurationParameter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GroupConfigurationItem = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "list",
            member = M.GroupConfigurationParameter,
        },
    },
}

M.QueryType = {
    TAG_FILTERS_1_0 = "TAG_FILTERS_1_0",
    CLOUDFORMATION_STACK_1_0 = "CLOUDFORMATION_STACK_1_0",
}

M.ResourceQuery = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Query = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateGroupInput = {
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
        ResourceQuery = M.ResourceQuery,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Configuration = {
            type = "list",
            member = M.GroupConfigurationItem,
        },
        Criticality = {
            type = "integer",
        },
        Owner = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
    },
}

M.Group = {
    type = "structure",
    members = {
        GroupArn = {
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
        Criticality = {
            type = "integer",
        },
        Owner = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        ApplicationTag = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GroupConfigurationStatus = {
    UPDATING = "UPDATING",
    UPDATE_COMPLETE = "UPDATE_COMPLETE",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.GroupConfiguration = {
    type = "structure",
    members = {
        Configuration = {
            type = "list",
            member = M.GroupConfigurationItem,
        },
        ProposedConfiguration = {
            type = "list",
            member = M.GroupConfigurationItem,
        },
        Status = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
    },
}

M.CreateGroupOutput = {
    type = "structure",
    members = {
        Group = M.Group,
        ResourceQuery = M.ResourceQuery,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        GroupConfiguration = M.GroupConfiguration,
    },
}

M.DeleteGroupInput = {
    type = "structure",
    members = {
        GroupName = {
            type = "string",
        },
        Group = {
            type = "string",
        },
    },
}

M.DeleteGroupOutput = {
    type = "structure",
    members = {
        Group = M.Group,
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

M.GetAccountSettingsInput = {
    type = "structure",
}

M.GetAccountSettingsOutput = {
    type = "structure",
    members = {
        AccountSettings = M.AccountSettings,
    },
}

M.GetGroupInput = {
    type = "structure",
    members = {
        GroupName = {
            type = "string",
        },
        Group = {
            type = "string",
        },
    },
}

M.GetGroupOutput = {
    type = "structure",
    members = {
        Group = M.Group,
    },
}

M.GetGroupConfigurationInput = {
    type = "structure",
    members = {
        Group = {
            type = "string",
        },
    },
}

M.GetGroupConfigurationOutput = {
    type = "structure",
    members = {
        GroupConfiguration = M.GroupConfiguration,
    },
}

M.GetGroupQueryInput = {
    type = "structure",
    members = {
        GroupName = {
            type = "string",
        },
        Group = {
            type = "string",
        },
    },
}

M.GroupQuery = {
    type = "structure",
    members = {
        GroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceQuery = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceQuery }),
    },
}

M.GetGroupQueryOutput = {
    type = "structure",
    members = {
        GroupQuery = M.GroupQuery,
    },
}

M.GetTagsInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetTagsOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetTagSyncTaskInput = {
    type = "structure",
    members = {
        TaskArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagSyncTaskStatus = {
    ACTIVE = "ACTIVE",
    ERROR = "ERROR",
}

M.GetTagSyncTaskOutput = {
    type = "structure",
    members = {
        GroupArn = {
            type = "string",
        },
        GroupName = {
            type = "string",
        },
        TaskArn = {
            type = "string",
        },
        TagKey = {
            type = "string",
        },
        TagValue = {
            type = "string",
        },
        ResourceQuery = M.ResourceQuery,
        RoleArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
    },
}

M.GroupResourcesInput = {
    type = "structure",
    members = {
        Group = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.FailedResource = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
    },
}

M.PendingResource = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
    },
}

M.GroupResourcesOutput = {
    type = "structure",
    members = {
        Succeeded = {
            type = "list",
            member = { type = "string" },
        },
        Failed = {
            type = "list",
            member = M.FailedResource,
        },
        Pending = {
            type = "list",
            member = M.PendingResource,
        },
    },
}

M.ListGroupingStatusesFilterName = {
    Status = "status",
    ResourceArn = "resource-arn",
}

M.ListGroupingStatusesFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ListGroupingStatusesInput = {
    type = "structure",
    members = {
        Group = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        Filters = {
            type = "list",
            member = M.ListGroupingStatusesFilter,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GroupingType = {
    GROUP = "GROUP",
    UNGROUP = "UNGROUP",
}

M.GroupingStatus = {
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
    SKIPPED = "SKIPPED",
}

M.GroupingStatusesItem = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
        Action = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.ListGroupingStatusesOutput = {
    type = "structure",
    members = {
        Group = {
            type = "string",
        },
        GroupingStatuses = {
            type = "list",
            member = M.GroupingStatusesItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ResourceFilterName = {
    ResourceType = "resource-type",
}

M.ResourceFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ListGroupResourcesInput = {
    type = "structure",
    members = {
        GroupName = {
            type = "string",
        },
        Group = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.ResourceFilter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.QueryErrorCode = {
    CLOUDFORMATION_STACK_INACTIVE = "CLOUDFORMATION_STACK_INACTIVE",
    CLOUDFORMATION_STACK_NOT_EXISTING = "CLOUDFORMATION_STACK_NOT_EXISTING",
    CLOUDFORMATION_STACK_UNASSUMABLE_ROLE = "CLOUDFORMATION_STACK_UNASSUMABLE_ROLE",
    RESOURCE_TYPE_NOT_SUPPORTED = "RESOURCE_TYPE_NOT_SUPPORTED",
}

M.QueryError = {
    type = "structure",
    members = {
        ErrorCode = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ResourceIdentifier = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.ResourceStatusValue = {
    Pending = "PENDING",
}

M.ResourceStatus = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.ListGroupResourcesItem = {
    type = "structure",
    members = {
        Identifier = M.ResourceIdentifier,
        Status = M.ResourceStatus,
    },
}

M.ListGroupResourcesOutput = {
    type = "structure",
    members = {
        Resources = {
            type = "list",
            member = M.ListGroupResourcesItem,
        },
        ResourceIdentifiers = {
            type = "list",
            member = M.ResourceIdentifier,
        },
        NextToken = {
            type = "string",
        },
        QueryErrors = {
            type = "list",
            member = M.QueryError,
        },
    },
}

M.GroupFilterName = {
    ResourceType = "resource-type",
    ConfigurationType = "configuration-type",
    Owner = "owner",
    DisplayName = "display-name",
    Criticality = "criticality",
}

M.GroupFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ListGroupsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member = M.GroupFilter,
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.GroupIdentifier = {
    type = "structure",
    members = {
        GroupName = {
            type = "string",
        },
        GroupArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Criticality = {
            type = "integer",
        },
        Owner = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
    },
}

M.ListGroupsOutput = {
    type = "structure",
    members = {
        GroupIdentifiers = {
            type = "list",
            member = M.GroupIdentifier,
        },
        Groups = {
            type = "list",
            member = M.Group,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagSyncTasksFilter = {
    type = "structure",
    members = {
        GroupArn = {
            type = "string",
        },
        GroupName = {
            type = "string",
        },
    },
}

M.ListTagSyncTasksInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member = M.ListTagSyncTasksFilter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TagSyncTaskItem = {
    type = "structure",
    members = {
        GroupArn = {
            type = "string",
        },
        GroupName = {
            type = "string",
        },
        TaskArn = {
            type = "string",
        },
        TagKey = {
            type = "string",
        },
        TagValue = {
            type = "string",
        },
        ResourceQuery = M.ResourceQuery,
        RoleArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
    },
}

M.ListTagSyncTasksOutput = {
    type = "structure",
    members = {
        TagSyncTasks = {
            type = "list",
            member = M.TagSyncTaskItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PutGroupConfigurationInput = {
    type = "structure",
    members = {
        Group = {
            type = "string",
        },
        Configuration = {
            type = "list",
            member = M.GroupConfigurationItem,
        },
    },
}

M.PutGroupConfigurationOutput = {
    type = "structure",
}

M.SearchResourcesInput = {
    type = "structure",
    members = {
        ResourceQuery = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceQuery }),
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SearchResourcesOutput = {
    type = "structure",
    members = {
        ResourceIdentifiers = {
            type = "list",
            member = M.ResourceIdentifier,
        },
        NextToken = {
            type = "string",
        },
        QueryErrors = {
            type = "list",
            member = M.QueryError,
        },
    },
}

M.StartTagSyncTaskInput = {
    type = "structure",
    members = {
        Group = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKey = {
            type = "string",
        },
        TagValue = {
            type = "string",
        },
        ResourceQuery = M.ResourceQuery,
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartTagSyncTaskOutput = {
    type = "structure",
    members = {
        GroupArn = {
            type = "string",
        },
        GroupName = {
            type = "string",
        },
        TaskArn = {
            type = "string",
        },
        TagKey = {
            type = "string",
        },
        TagValue = {
            type = "string",
        },
        ResourceQuery = M.ResourceQuery,
        RoleArn = {
            type = "string",
        },
    },
}

M.TagInput = {
    type = "structure",
    members = {
        Arn = {
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

M.TagOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UngroupResourcesInput = {
    type = "structure",
    members = {
        Group = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UngroupResourcesOutput = {
    type = "structure",
    members = {
        Succeeded = {
            type = "list",
            member = { type = "string" },
        },
        Failed = {
            type = "list",
            member = M.FailedResource,
        },
        Pending = {
            type = "list",
            member = M.PendingResource,
        },
    },
}

M.UntagInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Keys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Keys = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateAccountSettingsInput = {
    type = "structure",
    members = {
        GroupLifecycleEventsDesiredStatus = {
            type = "string",
        },
    },
}

M.UpdateAccountSettingsOutput = {
    type = "structure",
    members = {
        AccountSettings = M.AccountSettings,
    },
}

M.UpdateGroupInput = {
    type = "structure",
    members = {
        GroupName = {
            type = "string",
        },
        Group = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Criticality = {
            type = "integer",
        },
        Owner = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
    },
}

M.UpdateGroupOutput = {
    type = "structure",
    members = {
        Group = M.Group,
    },
}

M.UpdateGroupQueryInput = {
    type = "structure",
    members = {
        GroupName = {
            type = "string",
        },
        Group = {
            type = "string",
        },
        ResourceQuery = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceQuery }),
    },
}

M.UpdateGroupQueryOutput = {
    type = "structure",
    members = {
        GroupQuery = M.GroupQuery,
    },
}

return M
