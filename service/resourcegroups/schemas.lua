local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.resourcegroups"

local M = {}

M.AccountSettings = schema.new({
    id = id.from(_N, "AccountSettings"),
    type = "structure",
    members = {
        GroupLifecycleEventsDesiredStatus = schema.new({
            id = id.from(_N, "AccountSettings", "GroupLifecycleEventsDesiredStatus"),
            type = "string",
            name = "GroupLifecycleEventsDesiredStatus",
            target_id = prelude.String.id,
        }),
        GroupLifecycleEventsStatus = schema.new({
            id = id.from(_N, "AccountSettings", "GroupLifecycleEventsStatus"),
            type = "string",
            name = "GroupLifecycleEventsStatus",
            target_id = prelude.String.id,
        }),
        GroupLifecycleEventsStatusMessage = schema.new({
            id = id.from(_N, "AccountSettings", "GroupLifecycleEventsStatusMessage"),
            type = "string",
            name = "GroupLifecycleEventsStatusMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.BadRequestException = schema.new({
    id = id.from(_N, "BadRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "BadRequestException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CancelTagSyncTaskInput = schema.new({
    id = id.from(_N, "CancelTagSyncTaskInput"),
    type = "structure",
    members = {
        TaskArn = schema.new({
            id = id.from(_N, "CancelTagSyncTaskInput", "TaskArn"),
            type = "string",
            name = "TaskArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CancelTagSyncTaskOutput = schema.new({
    id = id.from(_N, "CancelTagSyncTaskOutput"),
    type = "structure",
})

M.ForbiddenException = schema.new({
    id = id.from(_N, "ForbiddenException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ForbiddenException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InternalServerErrorException = schema.new({
    id = id.from(_N, "InternalServerErrorException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InternalServerErrorException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.MethodNotAllowedException = schema.new({
    id = id.from(_N, "MethodNotAllowedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "MethodNotAllowedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyRequestsException = schema.new({
    id = id.from(_N, "TooManyRequestsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyRequestsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.UnauthorizedException = schema.new({
    id = id.from(_N, "UnauthorizedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "UnauthorizedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.GroupConfigurationParameter = schema.new({
    id = id.from(_N, "GroupConfigurationParameter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "GroupConfigurationParameter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "GroupConfigurationParameter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.GroupConfigurationItem = schema.new({
    id = id.from(_N, "GroupConfigurationItem"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "GroupConfigurationItem", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Parameters = schema.new({
            id = id.from(_N, "GroupConfigurationItem", "Parameters"),
            type = "list",
            name = "Parameters",
            target_id = prelude.Document.id,
            list_member = M.GroupConfigurationParameter,
        }),
    },
})

M.ResourceQuery = schema.new({
    id = id.from(_N, "ResourceQuery"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "ResourceQuery", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Query = schema.new({
            id = id.from(_N, "ResourceQuery", "Query"),
            type = "string",
            name = "Query",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateGroupInput = schema.new({
    id = id.from(_N, "CreateGroupInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateGroupInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateGroupInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        ResourceQuery = schema.new({
            id = id.from(_N, "CreateGroupInput", "ResourceQuery"),
            type = "structure",
            name = "ResourceQuery",
            target_id = id.from(_N, "ResourceQuery"),
            target = M.ResourceQuery,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateGroupInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        Configuration = schema.new({
            id = id.from(_N, "CreateGroupInput", "Configuration"),
            type = "list",
            name = "Configuration",
            target_id = prelude.Document.id,
            list_member = M.GroupConfigurationItem,
        }),
        Criticality = schema.new({
            id = id.from(_N, "CreateGroupInput", "Criticality"),
            type = "integer",
            name = "Criticality",
            target_id = prelude.Integer.id,
        }),
        Owner = schema.new({
            id = id.from(_N, "CreateGroupInput", "Owner"),
            type = "string",
            name = "Owner",
            target_id = prelude.String.id,
        }),
        DisplayName = schema.new({
            id = id.from(_N, "CreateGroupInput", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
        }),
    },
})

M.Group = schema.new({
    id = id.from(_N, "Group"),
    type = "structure",
    members = {
        GroupArn = schema.new({
            id = id.from(_N, "Group", "GroupArn"),
            type = "string",
            name = "GroupArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "Group", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "Group", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Criticality = schema.new({
            id = id.from(_N, "Group", "Criticality"),
            type = "integer",
            name = "Criticality",
            target_id = prelude.Integer.id,
        }),
        Owner = schema.new({
            id = id.from(_N, "Group", "Owner"),
            type = "string",
            name = "Owner",
            target_id = prelude.String.id,
        }),
        DisplayName = schema.new({
            id = id.from(_N, "Group", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
        }),
        ApplicationTag = schema.new({
            id = id.from(_N, "Group", "ApplicationTag"),
            type = "map",
            name = "ApplicationTag",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GroupConfiguration = schema.new({
    id = id.from(_N, "GroupConfiguration"),
    type = "structure",
    members = {
        Configuration = schema.new({
            id = id.from(_N, "GroupConfiguration", "Configuration"),
            type = "list",
            name = "Configuration",
            target_id = prelude.Document.id,
            list_member = M.GroupConfigurationItem,
        }),
        ProposedConfiguration = schema.new({
            id = id.from(_N, "GroupConfiguration", "ProposedConfiguration"),
            type = "list",
            name = "ProposedConfiguration",
            target_id = prelude.Document.id,
            list_member = M.GroupConfigurationItem,
        }),
        Status = schema.new({
            id = id.from(_N, "GroupConfiguration", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        FailureReason = schema.new({
            id = id.from(_N, "GroupConfiguration", "FailureReason"),
            type = "string",
            name = "FailureReason",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateGroupOutput = schema.new({
    id = id.from(_N, "CreateGroupOutput"),
    type = "structure",
    members = {
        Group = schema.new({
            id = id.from(_N, "CreateGroupOutput", "Group"),
            type = "structure",
            name = "Group",
            target_id = id.from(_N, "Group"),
            target = M.Group,
        }),
        ResourceQuery = schema.new({
            id = id.from(_N, "CreateGroupOutput", "ResourceQuery"),
            type = "structure",
            name = "ResourceQuery",
            target_id = id.from(_N, "ResourceQuery"),
            target = M.ResourceQuery,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateGroupOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        GroupConfiguration = schema.new({
            id = id.from(_N, "CreateGroupOutput", "GroupConfiguration"),
            type = "structure",
            name = "GroupConfiguration",
            target_id = id.from(_N, "GroupConfiguration"),
            target = M.GroupConfiguration,
        }),
    },
})

M.DeleteGroupInput = schema.new({
    id = id.from(_N, "DeleteGroupInput"),
    type = "structure",
    members = {
        GroupName = schema.new({
            id = id.from(_N, "DeleteGroupInput", "GroupName"),
            type = "string",
            name = "GroupName",
            target_id = prelude.String.id,
        }),
        Group = schema.new({
            id = id.from(_N, "DeleteGroupInput", "Group"),
            type = "string",
            name = "Group",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteGroupOutput = schema.new({
    id = id.from(_N, "DeleteGroupOutput"),
    type = "structure",
    members = {
        Group = schema.new({
            id = id.from(_N, "DeleteGroupOutput", "Group"),
            type = "structure",
            name = "Group",
            target_id = id.from(_N, "Group"),
            target = M.Group,
        }),
    },
})

M.NotFoundException = schema.new({
    id = id.from(_N, "NotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAccountSettingsInput = schema.new({
    id = id.from(_N, "GetAccountSettingsInput"),
    type = "structure",
})

M.GetAccountSettingsOutput = schema.new({
    id = id.from(_N, "GetAccountSettingsOutput"),
    type = "structure",
    members = {
        AccountSettings = schema.new({
            id = id.from(_N, "GetAccountSettingsOutput", "AccountSettings"),
            type = "structure",
            name = "AccountSettings",
            target_id = id.from(_N, "AccountSettings"),
            target = M.AccountSettings,
        }),
    },
})

M.GetGroupInput = schema.new({
    id = id.from(_N, "GetGroupInput"),
    type = "structure",
    members = {
        GroupName = schema.new({
            id = id.from(_N, "GetGroupInput", "GroupName"),
            type = "string",
            name = "GroupName",
            target_id = prelude.String.id,
        }),
        Group = schema.new({
            id = id.from(_N, "GetGroupInput", "Group"),
            type = "string",
            name = "Group",
            target_id = prelude.String.id,
        }),
    },
})

M.GetGroupOutput = schema.new({
    id = id.from(_N, "GetGroupOutput"),
    type = "structure",
    members = {
        Group = schema.new({
            id = id.from(_N, "GetGroupOutput", "Group"),
            type = "structure",
            name = "Group",
            target_id = id.from(_N, "Group"),
            target = M.Group,
        }),
    },
})

M.GetGroupConfigurationInput = schema.new({
    id = id.from(_N, "GetGroupConfigurationInput"),
    type = "structure",
    members = {
        Group = schema.new({
            id = id.from(_N, "GetGroupConfigurationInput", "Group"),
            type = "string",
            name = "Group",
            target_id = prelude.String.id,
        }),
    },
})

M.GetGroupConfigurationOutput = schema.new({
    id = id.from(_N, "GetGroupConfigurationOutput"),
    type = "structure",
    members = {
        GroupConfiguration = schema.new({
            id = id.from(_N, "GetGroupConfigurationOutput", "GroupConfiguration"),
            type = "structure",
            name = "GroupConfiguration",
            target_id = id.from(_N, "GroupConfiguration"),
            target = M.GroupConfiguration,
        }),
    },
})

M.GetGroupQueryInput = schema.new({
    id = id.from(_N, "GetGroupQueryInput"),
    type = "structure",
    members = {
        GroupName = schema.new({
            id = id.from(_N, "GetGroupQueryInput", "GroupName"),
            type = "string",
            name = "GroupName",
            target_id = prelude.String.id,
        }),
        Group = schema.new({
            id = id.from(_N, "GetGroupQueryInput", "Group"),
            type = "string",
            name = "Group",
            target_id = prelude.String.id,
        }),
    },
})

M.GroupQuery = schema.new({
    id = id.from(_N, "GroupQuery"),
    type = "structure",
    members = {
        GroupName = schema.new({
            id = id.from(_N, "GroupQuery", "GroupName"),
            type = "string",
            name = "GroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceQuery = schema.new({
            id = id.from(_N, "GroupQuery", "ResourceQuery"),
            type = "structure",
            name = "ResourceQuery",
            target_id = id.from(_N, "ResourceQuery"),
            target = M.ResourceQuery,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetGroupQueryOutput = schema.new({
    id = id.from(_N, "GetGroupQueryOutput"),
    type = "structure",
    members = {
        GroupQuery = schema.new({
            id = id.from(_N, "GetGroupQueryOutput", "GroupQuery"),
            type = "structure",
            name = "GroupQuery",
            target_id = id.from(_N, "GroupQuery"),
            target = M.GroupQuery,
        }),
    },
})

M.GetTagsInput = schema.new({
    id = id.from(_N, "GetTagsInput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetTagsInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetTagsOutput = schema.new({
    id = id.from(_N, "GetTagsOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetTagsOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "GetTagsOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetTagSyncTaskInput = schema.new({
    id = id.from(_N, "GetTagSyncTaskInput"),
    type = "structure",
    members = {
        TaskArn = schema.new({
            id = id.from(_N, "GetTagSyncTaskInput", "TaskArn"),
            type = "string",
            name = "TaskArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetTagSyncTaskOutput = schema.new({
    id = id.from(_N, "GetTagSyncTaskOutput"),
    type = "structure",
    members = {
        GroupArn = schema.new({
            id = id.from(_N, "GetTagSyncTaskOutput", "GroupArn"),
            type = "string",
            name = "GroupArn",
            target_id = prelude.String.id,
        }),
        GroupName = schema.new({
            id = id.from(_N, "GetTagSyncTaskOutput", "GroupName"),
            type = "string",
            name = "GroupName",
            target_id = prelude.String.id,
        }),
        TaskArn = schema.new({
            id = id.from(_N, "GetTagSyncTaskOutput", "TaskArn"),
            type = "string",
            name = "TaskArn",
            target_id = prelude.String.id,
        }),
        TagKey = schema.new({
            id = id.from(_N, "GetTagSyncTaskOutput", "TagKey"),
            type = "string",
            name = "TagKey",
            target_id = prelude.String.id,
        }),
        TagValue = schema.new({
            id = id.from(_N, "GetTagSyncTaskOutput", "TagValue"),
            type = "string",
            name = "TagValue",
            target_id = prelude.String.id,
        }),
        ResourceQuery = schema.new({
            id = id.from(_N, "GetTagSyncTaskOutput", "ResourceQuery"),
            type = "structure",
            name = "ResourceQuery",
            target_id = id.from(_N, "ResourceQuery"),
            target = M.ResourceQuery,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "GetTagSyncTaskOutput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "GetTagSyncTaskOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "GetTagSyncTaskOutput", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "GetTagSyncTaskOutput", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GroupResourcesInput = schema.new({
    id = id.from(_N, "GroupResourcesInput"),
    type = "structure",
    members = {
        Group = schema.new({
            id = id.from(_N, "GroupResourcesInput", "Group"),
            type = "string",
            name = "Group",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceArns = schema.new({
            id = id.from(_N, "GroupResourcesInput", "ResourceArns"),
            type = "list",
            name = "ResourceArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FailedResource = schema.new({
    id = id.from(_N, "FailedResource"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "FailedResource", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "FailedResource", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
        ErrorCode = schema.new({
            id = id.from(_N, "FailedResource", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
    },
})

M.PendingResource = schema.new({
    id = id.from(_N, "PendingResource"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "PendingResource", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
    },
})

M.GroupResourcesOutput = schema.new({
    id = id.from(_N, "GroupResourcesOutput"),
    type = "structure",
    members = {
        Succeeded = schema.new({
            id = id.from(_N, "GroupResourcesOutput", "Succeeded"),
            type = "list",
            name = "Succeeded",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Failed = schema.new({
            id = id.from(_N, "GroupResourcesOutput", "Failed"),
            type = "list",
            name = "Failed",
            target_id = prelude.Document.id,
            list_member = M.FailedResource,
        }),
        Pending = schema.new({
            id = id.from(_N, "GroupResourcesOutput", "Pending"),
            type = "list",
            name = "Pending",
            target_id = prelude.Document.id,
            list_member = M.PendingResource,
        }),
    },
})

M.ListGroupingStatusesFilter = schema.new({
    id = id.from(_N, "ListGroupingStatusesFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ListGroupingStatusesFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "ListGroupingStatusesFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListGroupingStatusesInput = schema.new({
    id = id.from(_N, "ListGroupingStatusesInput"),
    type = "structure",
    members = {
        Group = schema.new({
            id = id.from(_N, "ListGroupingStatusesInput", "Group"),
            type = "string",
            name = "Group",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListGroupingStatusesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "ListGroupingStatusesInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.ListGroupingStatusesFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListGroupingStatusesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GroupingStatusesItem = schema.new({
    id = id.from(_N, "GroupingStatusesItem"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "GroupingStatusesItem", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        Action = schema.new({
            id = id.from(_N, "GroupingStatusesItem", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "GroupingStatusesItem", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "GroupingStatusesItem", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
        ErrorCode = schema.new({
            id = id.from(_N, "GroupingStatusesItem", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "GroupingStatusesItem", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListGroupingStatusesOutput = schema.new({
    id = id.from(_N, "ListGroupingStatusesOutput"),
    type = "structure",
    members = {
        Group = schema.new({
            id = id.from(_N, "ListGroupingStatusesOutput", "Group"),
            type = "string",
            name = "Group",
            target_id = prelude.String.id,
        }),
        GroupingStatuses = schema.new({
            id = id.from(_N, "ListGroupingStatusesOutput", "GroupingStatuses"),
            type = "list",
            name = "GroupingStatuses",
            target_id = prelude.Document.id,
            list_member = M.GroupingStatusesItem,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListGroupingStatusesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceFilter = schema.new({
    id = id.from(_N, "ResourceFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ResourceFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "ResourceFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListGroupResourcesInput = schema.new({
    id = id.from(_N, "ListGroupResourcesInput"),
    type = "structure",
    members = {
        GroupName = schema.new({
            id = id.from(_N, "ListGroupResourcesInput", "GroupName"),
            type = "string",
            name = "GroupName",
            target_id = prelude.String.id,
        }),
        Group = schema.new({
            id = id.from(_N, "ListGroupResourcesInput", "Group"),
            type = "string",
            name = "Group",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "ListGroupResourcesInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.ResourceFilter,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListGroupResourcesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListGroupResourcesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.QueryError = schema.new({
    id = id.from(_N, "QueryError"),
    type = "structure",
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "QueryError", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "QueryError", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceIdentifier = schema.new({
    id = id.from(_N, "ResourceIdentifier"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "ResourceIdentifier", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ResourceIdentifier", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceStatus = schema.new({
    id = id.from(_N, "ResourceStatus"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ResourceStatus", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.ListGroupResourcesItem = schema.new({
    id = id.from(_N, "ListGroupResourcesItem"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "ListGroupResourcesItem", "Identifier"),
            type = "structure",
            name = "Identifier",
            target_id = id.from(_N, "ResourceIdentifier"),
            target = M.ResourceIdentifier,
        }),
        Status = schema.new({
            id = id.from(_N, "ListGroupResourcesItem", "Status"),
            type = "structure",
            name = "Status",
            target_id = id.from(_N, "ResourceStatus"),
            target = M.ResourceStatus,
        }),
    },
})

M.ListGroupResourcesOutput = schema.new({
    id = id.from(_N, "ListGroupResourcesOutput"),
    type = "structure",
    members = {
        Resources = schema.new({
            id = id.from(_N, "ListGroupResourcesOutput", "Resources"),
            type = "list",
            name = "Resources",
            target_id = prelude.Document.id,
            list_member = M.ListGroupResourcesItem,
        }),
        ResourceIdentifiers = schema.new({
            id = id.from(_N, "ListGroupResourcesOutput", "ResourceIdentifiers"),
            type = "list",
            name = "ResourceIdentifiers",
            target_id = prelude.Document.id,
            list_member = M.ResourceIdentifier,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListGroupResourcesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        QueryErrors = schema.new({
            id = id.from(_N, "ListGroupResourcesOutput", "QueryErrors"),
            type = "list",
            name = "QueryErrors",
            target_id = prelude.Document.id,
            list_member = M.QueryError,
        }),
    },
})

M.GroupFilter = schema.new({
    id = id.from(_N, "GroupFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "GroupFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "GroupFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListGroupsInput = schema.new({
    id = id.from(_N, "ListGroupsInput"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "ListGroupsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.GroupFilter,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListGroupsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListGroupsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.GroupIdentifier = schema.new({
    id = id.from(_N, "GroupIdentifier"),
    type = "structure",
    members = {
        GroupName = schema.new({
            id = id.from(_N, "GroupIdentifier", "GroupName"),
            type = "string",
            name = "GroupName",
            target_id = prelude.String.id,
        }),
        GroupArn = schema.new({
            id = id.from(_N, "GroupIdentifier", "GroupArn"),
            type = "string",
            name = "GroupArn",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "GroupIdentifier", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Criticality = schema.new({
            id = id.from(_N, "GroupIdentifier", "Criticality"),
            type = "integer",
            name = "Criticality",
            target_id = prelude.Integer.id,
        }),
        Owner = schema.new({
            id = id.from(_N, "GroupIdentifier", "Owner"),
            type = "string",
            name = "Owner",
            target_id = prelude.String.id,
        }),
        DisplayName = schema.new({
            id = id.from(_N, "GroupIdentifier", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
        }),
    },
})

M.ListGroupsOutput = schema.new({
    id = id.from(_N, "ListGroupsOutput"),
    type = "structure",
    members = {
        GroupIdentifiers = schema.new({
            id = id.from(_N, "ListGroupsOutput", "GroupIdentifiers"),
            type = "list",
            name = "GroupIdentifiers",
            target_id = prelude.Document.id,
            list_member = M.GroupIdentifier,
        }),
        Groups = schema.new({
            id = id.from(_N, "ListGroupsOutput", "Groups"),
            type = "list",
            name = "Groups",
            target_id = prelude.Document.id,
            list_member = M.Group,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListGroupsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagSyncTasksFilter = schema.new({
    id = id.from(_N, "ListTagSyncTasksFilter"),
    type = "structure",
    members = {
        GroupArn = schema.new({
            id = id.from(_N, "ListTagSyncTasksFilter", "GroupArn"),
            type = "string",
            name = "GroupArn",
            target_id = prelude.String.id,
        }),
        GroupName = schema.new({
            id = id.from(_N, "ListTagSyncTasksFilter", "GroupName"),
            type = "string",
            name = "GroupName",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagSyncTasksInput = schema.new({
    id = id.from(_N, "ListTagSyncTasksInput"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "ListTagSyncTasksInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.ListTagSyncTasksFilter,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListTagSyncTasksInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTagSyncTasksInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.TagSyncTaskItem = schema.new({
    id = id.from(_N, "TagSyncTaskItem"),
    type = "structure",
    members = {
        GroupArn = schema.new({
            id = id.from(_N, "TagSyncTaskItem", "GroupArn"),
            type = "string",
            name = "GroupArn",
            target_id = prelude.String.id,
        }),
        GroupName = schema.new({
            id = id.from(_N, "TagSyncTaskItem", "GroupName"),
            type = "string",
            name = "GroupName",
            target_id = prelude.String.id,
        }),
        TaskArn = schema.new({
            id = id.from(_N, "TagSyncTaskItem", "TaskArn"),
            type = "string",
            name = "TaskArn",
            target_id = prelude.String.id,
        }),
        TagKey = schema.new({
            id = id.from(_N, "TagSyncTaskItem", "TagKey"),
            type = "string",
            name = "TagKey",
            target_id = prelude.String.id,
        }),
        TagValue = schema.new({
            id = id.from(_N, "TagSyncTaskItem", "TagValue"),
            type = "string",
            name = "TagValue",
            target_id = prelude.String.id,
        }),
        ResourceQuery = schema.new({
            id = id.from(_N, "TagSyncTaskItem", "ResourceQuery"),
            type = "structure",
            name = "ResourceQuery",
            target_id = id.from(_N, "ResourceQuery"),
            target = M.ResourceQuery,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "TagSyncTaskItem", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "TagSyncTaskItem", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "TagSyncTaskItem", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "TagSyncTaskItem", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListTagSyncTasksOutput = schema.new({
    id = id.from(_N, "ListTagSyncTasksOutput"),
    type = "structure",
    members = {
        TagSyncTasks = schema.new({
            id = id.from(_N, "ListTagSyncTasksOutput", "TagSyncTasks"),
            type = "list",
            name = "TagSyncTasks",
            target_id = prelude.Document.id,
            list_member = M.TagSyncTaskItem,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTagSyncTasksOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PutGroupConfigurationInput = schema.new({
    id = id.from(_N, "PutGroupConfigurationInput"),
    type = "structure",
    members = {
        Group = schema.new({
            id = id.from(_N, "PutGroupConfigurationInput", "Group"),
            type = "string",
            name = "Group",
            target_id = prelude.String.id,
        }),
        Configuration = schema.new({
            id = id.from(_N, "PutGroupConfigurationInput", "Configuration"),
            type = "list",
            name = "Configuration",
            target_id = prelude.Document.id,
            list_member = M.GroupConfigurationItem,
        }),
    },
})

M.PutGroupConfigurationOutput = schema.new({
    id = id.from(_N, "PutGroupConfigurationOutput"),
    type = "structure",
})

M.SearchResourcesInput = schema.new({
    id = id.from(_N, "SearchResourcesInput"),
    type = "structure",
    members = {
        ResourceQuery = schema.new({
            id = id.from(_N, "SearchResourcesInput", "ResourceQuery"),
            type = "structure",
            name = "ResourceQuery",
            target_id = id.from(_N, "ResourceQuery"),
            target = M.ResourceQuery,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "SearchResourcesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "SearchResourcesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SearchResourcesOutput = schema.new({
    id = id.from(_N, "SearchResourcesOutput"),
    type = "structure",
    members = {
        ResourceIdentifiers = schema.new({
            id = id.from(_N, "SearchResourcesOutput", "ResourceIdentifiers"),
            type = "list",
            name = "ResourceIdentifiers",
            target_id = prelude.Document.id,
            list_member = M.ResourceIdentifier,
        }),
        NextToken = schema.new({
            id = id.from(_N, "SearchResourcesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        QueryErrors = schema.new({
            id = id.from(_N, "SearchResourcesOutput", "QueryErrors"),
            type = "list",
            name = "QueryErrors",
            target_id = prelude.Document.id,
            list_member = M.QueryError,
        }),
    },
})

M.StartTagSyncTaskInput = schema.new({
    id = id.from(_N, "StartTagSyncTaskInput"),
    type = "structure",
    members = {
        Group = schema.new({
            id = id.from(_N, "StartTagSyncTaskInput", "Group"),
            type = "string",
            name = "Group",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKey = schema.new({
            id = id.from(_N, "StartTagSyncTaskInput", "TagKey"),
            type = "string",
            name = "TagKey",
            target_id = prelude.String.id,
        }),
        TagValue = schema.new({
            id = id.from(_N, "StartTagSyncTaskInput", "TagValue"),
            type = "string",
            name = "TagValue",
            target_id = prelude.String.id,
        }),
        ResourceQuery = schema.new({
            id = id.from(_N, "StartTagSyncTaskInput", "ResourceQuery"),
            type = "structure",
            name = "ResourceQuery",
            target_id = id.from(_N, "ResourceQuery"),
            target = M.ResourceQuery,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "StartTagSyncTaskInput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartTagSyncTaskOutput = schema.new({
    id = id.from(_N, "StartTagSyncTaskOutput"),
    type = "structure",
    members = {
        GroupArn = schema.new({
            id = id.from(_N, "StartTagSyncTaskOutput", "GroupArn"),
            type = "string",
            name = "GroupArn",
            target_id = prelude.String.id,
        }),
        GroupName = schema.new({
            id = id.from(_N, "StartTagSyncTaskOutput", "GroupName"),
            type = "string",
            name = "GroupName",
            target_id = prelude.String.id,
        }),
        TaskArn = schema.new({
            id = id.from(_N, "StartTagSyncTaskOutput", "TaskArn"),
            type = "string",
            name = "TaskArn",
            target_id = prelude.String.id,
        }),
        TagKey = schema.new({
            id = id.from(_N, "StartTagSyncTaskOutput", "TagKey"),
            type = "string",
            name = "TagKey",
            target_id = prelude.String.id,
        }),
        TagValue = schema.new({
            id = id.from(_N, "StartTagSyncTaskOutput", "TagValue"),
            type = "string",
            name = "TagValue",
            target_id = prelude.String.id,
        }),
        ResourceQuery = schema.new({
            id = id.from(_N, "StartTagSyncTaskOutput", "ResourceQuery"),
            type = "structure",
            name = "ResourceQuery",
            target_id = id.from(_N, "ResourceQuery"),
            target = M.ResourceQuery,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "StartTagSyncTaskOutput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.TagInput = schema.new({
    id = id.from(_N, "TagInput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "TagInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagOutput = schema.new({
    id = id.from(_N, "TagOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "TagOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "TagOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.UngroupResourcesInput = schema.new({
    id = id.from(_N, "UngroupResourcesInput"),
    type = "structure",
    members = {
        Group = schema.new({
            id = id.from(_N, "UngroupResourcesInput", "Group"),
            type = "string",
            name = "Group",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceArns = schema.new({
            id = id.from(_N, "UngroupResourcesInput", "ResourceArns"),
            type = "list",
            name = "ResourceArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UngroupResourcesOutput = schema.new({
    id = id.from(_N, "UngroupResourcesOutput"),
    type = "structure",
    members = {
        Succeeded = schema.new({
            id = id.from(_N, "UngroupResourcesOutput", "Succeeded"),
            type = "list",
            name = "Succeeded",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Failed = schema.new({
            id = id.from(_N, "UngroupResourcesOutput", "Failed"),
            type = "list",
            name = "Failed",
            target_id = prelude.Document.id,
            list_member = M.FailedResource,
        }),
        Pending = schema.new({
            id = id.from(_N, "UngroupResourcesOutput", "Pending"),
            type = "list",
            name = "Pending",
            target_id = prelude.Document.id,
            list_member = M.PendingResource,
        }),
    },
})

M.UntagInput = schema.new({
    id = id.from(_N, "UntagInput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "UntagInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Keys = schema.new({
            id = id.from(_N, "UntagInput", "Keys"),
            type = "list",
            name = "Keys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UntagOutput = schema.new({
    id = id.from(_N, "UntagOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "UntagOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Keys = schema.new({
            id = id.from(_N, "UntagOutput", "Keys"),
            type = "list",
            name = "Keys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UpdateAccountSettingsInput = schema.new({
    id = id.from(_N, "UpdateAccountSettingsInput"),
    type = "structure",
    members = {
        GroupLifecycleEventsDesiredStatus = schema.new({
            id = id.from(_N, "UpdateAccountSettingsInput", "GroupLifecycleEventsDesiredStatus"),
            type = "string",
            name = "GroupLifecycleEventsDesiredStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateAccountSettingsOutput = schema.new({
    id = id.from(_N, "UpdateAccountSettingsOutput"),
    type = "structure",
    members = {
        AccountSettings = schema.new({
            id = id.from(_N, "UpdateAccountSettingsOutput", "AccountSettings"),
            type = "structure",
            name = "AccountSettings",
            target_id = id.from(_N, "AccountSettings"),
            target = M.AccountSettings,
        }),
    },
})

M.UpdateGroupInput = schema.new({
    id = id.from(_N, "UpdateGroupInput"),
    type = "structure",
    members = {
        GroupName = schema.new({
            id = id.from(_N, "UpdateGroupInput", "GroupName"),
            type = "string",
            name = "GroupName",
            target_id = prelude.String.id,
        }),
        Group = schema.new({
            id = id.from(_N, "UpdateGroupInput", "Group"),
            type = "string",
            name = "Group",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateGroupInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Criticality = schema.new({
            id = id.from(_N, "UpdateGroupInput", "Criticality"),
            type = "integer",
            name = "Criticality",
            target_id = prelude.Integer.id,
        }),
        Owner = schema.new({
            id = id.from(_N, "UpdateGroupInput", "Owner"),
            type = "string",
            name = "Owner",
            target_id = prelude.String.id,
        }),
        DisplayName = schema.new({
            id = id.from(_N, "UpdateGroupInput", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateGroupOutput = schema.new({
    id = id.from(_N, "UpdateGroupOutput"),
    type = "structure",
    members = {
        Group = schema.new({
            id = id.from(_N, "UpdateGroupOutput", "Group"),
            type = "structure",
            name = "Group",
            target_id = id.from(_N, "Group"),
            target = M.Group,
        }),
    },
})

M.UpdateGroupQueryInput = schema.new({
    id = id.from(_N, "UpdateGroupQueryInput"),
    type = "structure",
    members = {
        GroupName = schema.new({
            id = id.from(_N, "UpdateGroupQueryInput", "GroupName"),
            type = "string",
            name = "GroupName",
            target_id = prelude.String.id,
        }),
        Group = schema.new({
            id = id.from(_N, "UpdateGroupQueryInput", "Group"),
            type = "string",
            name = "Group",
            target_id = prelude.String.id,
        }),
        ResourceQuery = schema.new({
            id = id.from(_N, "UpdateGroupQueryInput", "ResourceQuery"),
            type = "structure",
            name = "ResourceQuery",
            target_id = id.from(_N, "ResourceQuery"),
            target = M.ResourceQuery,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateGroupQueryOutput = schema.new({
    id = id.from(_N, "UpdateGroupQueryOutput"),
    type = "structure",
    members = {
        GroupQuery = schema.new({
            id = id.from(_N, "UpdateGroupQueryOutput", "GroupQuery"),
            type = "structure",
            name = "GroupQuery",
            target_id = id.from(_N, "GroupQuery"),
            target = M.GroupQuery,
        }),
    },
})

return M
