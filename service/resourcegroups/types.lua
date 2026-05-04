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
    id = "AccountSettings",
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
    id = "BadRequestException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CancelTagSyncTaskInput = {
    type = "structure",
    id = "CancelTagSyncTaskInput",
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
    id = "CancelTagSyncTaskOutput",
}

M.ForbiddenException = {
    type = "structure",
    id = "ForbiddenException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InternalServerErrorException = {
    type = "structure",
    id = "InternalServerErrorException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MethodNotAllowedException = {
    type = "structure",
    id = "MethodNotAllowedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    id = "TooManyRequestsException",
    error = "client",
    members = {
        Message = {
            type = "string",
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

M.GroupConfigurationParameter = {
    type = "structure",
    id = "GroupConfigurationParameter",
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
    id = "GroupConfigurationItem",
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
    id = "ResourceQuery",
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
    id = "CreateGroupInput",
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
    id = "Group",
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
    id = "GroupConfiguration",
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
    id = "CreateGroupOutput",
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
    id = "DeleteGroupInput",
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
    id = "DeleteGroupOutput",
    members = {
        Group = M.Group,
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

M.GetAccountSettingsInput = {
    type = "structure",
    id = "GetAccountSettingsInput",
}

M.GetAccountSettingsOutput = {
    type = "structure",
    id = "GetAccountSettingsOutput",
    members = {
        AccountSettings = M.AccountSettings,
    },
}

M.GetGroupInput = {
    type = "structure",
    id = "GetGroupInput",
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
    id = "GetGroupOutput",
    members = {
        Group = M.Group,
    },
}

M.GetGroupConfigurationInput = {
    type = "structure",
    id = "GetGroupConfigurationInput",
    members = {
        Group = {
            type = "string",
        },
    },
}

M.GetGroupConfigurationOutput = {
    type = "structure",
    id = "GetGroupConfigurationOutput",
    members = {
        GroupConfiguration = M.GroupConfiguration,
    },
}

M.GetGroupQueryInput = {
    type = "structure",
    id = "GetGroupQueryInput",
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
    id = "GroupQuery",
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
    id = "GetGroupQueryOutput",
    members = {
        GroupQuery = M.GroupQuery,
    },
}

M.GetTagsInput = {
    type = "structure",
    id = "GetTagsInput",
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
    id = "GetTagsOutput",
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
    id = "GetTagSyncTaskInput",
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
    id = "GetTagSyncTaskOutput",
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
    id = "GroupResourcesInput",
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
    id = "FailedResource",
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
    id = "PendingResource",
    members = {
        ResourceArn = {
            type = "string",
        },
    },
}

M.GroupResourcesOutput = {
    type = "structure",
    id = "GroupResourcesOutput",
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
    id = "ListGroupingStatusesFilter",
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
    id = "ListGroupingStatusesInput",
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
    id = "GroupingStatusesItem",
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
    id = "ListGroupingStatusesOutput",
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
    id = "ResourceFilter",
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
    id = "ListGroupResourcesInput",
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
    id = "QueryError",
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
    id = "ResourceIdentifier",
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
    id = "ResourceStatus",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.ListGroupResourcesItem = {
    type = "structure",
    id = "ListGroupResourcesItem",
    members = {
        Identifier = M.ResourceIdentifier,
        Status = M.ResourceStatus,
    },
}

M.ListGroupResourcesOutput = {
    type = "structure",
    id = "ListGroupResourcesOutput",
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
    id = "GroupFilter",
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
    id = "ListGroupsInput",
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
    id = "GroupIdentifier",
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
    id = "ListGroupsOutput",
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
    id = "ListTagSyncTasksFilter",
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
    id = "ListTagSyncTasksInput",
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
    id = "TagSyncTaskItem",
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
    id = "ListTagSyncTasksOutput",
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
    id = "PutGroupConfigurationInput",
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
    id = "PutGroupConfigurationOutput",
}

M.SearchResourcesInput = {
    type = "structure",
    id = "SearchResourcesInput",
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
    id = "SearchResourcesOutput",
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
    id = "StartTagSyncTaskInput",
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
    id = "StartTagSyncTaskOutput",
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
    id = "TagInput",
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
    id = "TagOutput",
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
    id = "UngroupResourcesInput",
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
    id = "UngroupResourcesOutput",
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
    id = "UntagInput",
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
    id = "UntagOutput",
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
    id = "UpdateAccountSettingsInput",
    members = {
        GroupLifecycleEventsDesiredStatus = {
            type = "string",
        },
    },
}

M.UpdateAccountSettingsOutput = {
    type = "structure",
    id = "UpdateAccountSettingsOutput",
    members = {
        AccountSettings = M.AccountSettings,
    },
}

M.UpdateGroupInput = {
    type = "structure",
    id = "UpdateGroupInput",
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
    id = "UpdateGroupOutput",
    members = {
        Group = M.Group,
    },
}

M.UpdateGroupQueryInput = {
    type = "structure",
    id = "UpdateGroupQueryInput",
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
    id = "UpdateGroupQueryOutput",
    members = {
        GroupQuery = M.GroupQuery,
    },
}

return M
