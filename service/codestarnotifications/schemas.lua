local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.codestarnotifications"

local M = {}

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "AccessDeniedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ConcurrentModificationException = schema.new({
    id = id.from(_N, "ConcurrentModificationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ConcurrentModificationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ConfigurationException = schema.new({
    id = id.from(_N, "ConfigurationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ConfigurationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.Target = schema.new({
    id = id.from(_N, "Target"),
    type = "structure",
    members = {
        TargetType = schema.new({
            id = id.from(_N, "Target", "TargetType"),
            type = "string",
            name = "TargetType",
            target_id = prelude.String.id,
        }),
        TargetAddress = schema.new({
            id = id.from(_N, "Target", "TargetAddress"),
            type = "string",
            name = "TargetAddress",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateNotificationRuleInput = schema.new({
    id = id.from(_N, "CreateNotificationRuleInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateNotificationRuleInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EventTypeIds = schema.new({
            id = id.from(_N, "CreateNotificationRuleInput", "EventTypeIds"),
            type = "list",
            name = "EventTypeIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Resource = schema.new({
            id = id.from(_N, "CreateNotificationRuleInput", "Resource"),
            type = "string",
            name = "Resource",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Targets = schema.new({
            id = id.from(_N, "CreateNotificationRuleInput", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DetailType = schema.new({
            id = id.from(_N, "CreateNotificationRuleInput", "DetailType"),
            type = "string",
            name = "DetailType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "CreateNotificationRuleInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateNotificationRuleInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        Status = schema.new({
            id = id.from(_N, "CreateNotificationRuleInput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateNotificationRuleOutput = schema.new({
    id = id.from(_N, "CreateNotificationRuleOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateNotificationRuleOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
    },
})

M.LimitExceededException = schema.new({
    id = id.from(_N, "LimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "LimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceAlreadyExistsException = schema.new({
    id = id.from(_N, "ResourceAlreadyExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceAlreadyExistsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ValidationException = schema.new({
    id = id.from(_N, "ValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ValidationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteNotificationRuleInput = schema.new({
    id = id.from(_N, "DeleteNotificationRuleInput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "DeleteNotificationRuleInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteNotificationRuleOutput = schema.new({
    id = id.from(_N, "DeleteNotificationRuleOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "DeleteNotificationRuleOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteTargetInput = schema.new({
    id = id.from(_N, "DeleteTargetInput"),
    type = "structure",
    members = {
        TargetAddress = schema.new({
            id = id.from(_N, "DeleteTargetInput", "TargetAddress"),
            type = "string",
            name = "TargetAddress",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ForceUnsubscribeAll = schema.new({
            id = id.from(_N, "DeleteTargetInput", "ForceUnsubscribeAll"),
            type = "boolean",
            name = "ForceUnsubscribeAll",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DeleteTargetOutput = schema.new({
    id = id.from(_N, "DeleteTargetOutput"),
    type = "structure",
})

M.DescribeNotificationRuleInput = schema.new({
    id = id.from(_N, "DescribeNotificationRuleInput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "DescribeNotificationRuleInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EventTypeSummary = schema.new({
    id = id.from(_N, "EventTypeSummary"),
    type = "structure",
    members = {
        EventTypeId = schema.new({
            id = id.from(_N, "EventTypeSummary", "EventTypeId"),
            type = "string",
            name = "EventTypeId",
            target_id = prelude.String.id,
        }),
        ServiceName = schema.new({
            id = id.from(_N, "EventTypeSummary", "ServiceName"),
            type = "string",
            name = "ServiceName",
            target_id = prelude.String.id,
        }),
        EventTypeName = schema.new({
            id = id.from(_N, "EventTypeSummary", "EventTypeName"),
            type = "string",
            name = "EventTypeName",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "EventTypeSummary", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
    },
})

M.TargetSummary = schema.new({
    id = id.from(_N, "TargetSummary"),
    type = "structure",
    members = {
        TargetAddress = schema.new({
            id = id.from(_N, "TargetSummary", "TargetAddress"),
            type = "string",
            name = "TargetAddress",
            target_id = prelude.String.id,
        }),
        TargetType = schema.new({
            id = id.from(_N, "TargetSummary", "TargetType"),
            type = "string",
            name = "TargetType",
            target_id = prelude.String.id,
        }),
        TargetStatus = schema.new({
            id = id.from(_N, "TargetSummary", "TargetStatus"),
            type = "string",
            name = "TargetStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeNotificationRuleOutput = schema.new({
    id = id.from(_N, "DescribeNotificationRuleOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "DescribeNotificationRuleOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "DescribeNotificationRuleOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        EventTypes = schema.new({
            id = id.from(_N, "DescribeNotificationRuleOutput", "EventTypes"),
            type = "list",
            name = "EventTypes",
            target_id = prelude.Document.id,
            list_member = M.EventTypeSummary,
        }),
        Resource = schema.new({
            id = id.from(_N, "DescribeNotificationRuleOutput", "Resource"),
            type = "string",
            name = "Resource",
            target_id = prelude.String.id,
        }),
        Targets = schema.new({
            id = id.from(_N, "DescribeNotificationRuleOutput", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.TargetSummary,
        }),
        DetailType = schema.new({
            id = id.from(_N, "DescribeNotificationRuleOutput", "DetailType"),
            type = "string",
            name = "DetailType",
            target_id = prelude.String.id,
        }),
        CreatedBy = schema.new({
            id = id.from(_N, "DescribeNotificationRuleOutput", "CreatedBy"),
            type = "string",
            name = "CreatedBy",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DescribeNotificationRuleOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "DescribeNotificationRuleOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        LastModifiedTimestamp = schema.new({
            id = id.from(_N, "DescribeNotificationRuleOutput", "LastModifiedTimestamp"),
            type = "timestamp",
            name = "LastModifiedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "DescribeNotificationRuleOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidNextTokenException = schema.new({
    id = id.from(_N, "InvalidNextTokenException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidNextTokenException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ListEventTypesFilter = schema.new({
    id = id.from(_N, "ListEventTypesFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ListEventTypesFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "ListEventTypesFilter", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListEventTypesInput = schema.new({
    id = id.from(_N, "ListEventTypesInput"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "ListEventTypesInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.ListEventTypesFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListEventTypesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListEventTypesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListEventTypesOutput = schema.new({
    id = id.from(_N, "ListEventTypesOutput"),
    type = "structure",
    members = {
        EventTypes = schema.new({
            id = id.from(_N, "ListEventTypesOutput", "EventTypes"),
            type = "list",
            name = "EventTypes",
            target_id = prelude.Document.id,
            list_member = M.EventTypeSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListEventTypesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNotificationRulesFilter = schema.new({
    id = id.from(_N, "ListNotificationRulesFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ListNotificationRulesFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "ListNotificationRulesFilter", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListNotificationRulesInput = schema.new({
    id = id.from(_N, "ListNotificationRulesInput"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "ListNotificationRulesInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.ListNotificationRulesFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListNotificationRulesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListNotificationRulesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.NotificationRuleSummary = schema.new({
    id = id.from(_N, "NotificationRuleSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "NotificationRuleSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "NotificationRuleSummary", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNotificationRulesOutput = schema.new({
    id = id.from(_N, "ListNotificationRulesOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListNotificationRulesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        NotificationRules = schema.new({
            id = id.from(_N, "ListNotificationRulesOutput", "NotificationRules"),
            type = "list",
            name = "NotificationRules",
            target_id = prelude.Document.id,
            list_member = M.NotificationRuleSummary,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceOutput"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListTargetsFilter = schema.new({
    id = id.from(_N, "ListTargetsFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ListTargetsFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "ListTargetsFilter", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTargetsInput = schema.new({
    id = id.from(_N, "ListTargetsInput"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "ListTargetsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.ListTargetsFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTargetsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListTargetsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListTargetsOutput = schema.new({
    id = id.from(_N, "ListTargetsOutput"),
    type = "structure",
    members = {
        Targets = schema.new({
            id = id.from(_N, "ListTargetsOutput", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.TargetSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTargetsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SubscribeInput = schema.new({
    id = id.from(_N, "SubscribeInput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "SubscribeInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Target = schema.new({
            id = id.from(_N, "SubscribeInput", "Target"),
            type = "structure",
            name = "Target",
            target_id = id.from(_N, "Target"),
            target = M.Target,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "SubscribeInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SubscribeOutput = schema.new({
    id = id.from(_N, "SubscribeOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "SubscribeOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "TagResourceInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagResourceInput", "Tags"),
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

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceOutput"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "TagResourceOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.UnsubscribeInput = schema.new({
    id = id.from(_N, "UnsubscribeInput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "UnsubscribeInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetAddress = schema.new({
            id = id.from(_N, "UnsubscribeInput", "TargetAddress"),
            type = "string",
            name = "TargetAddress",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UnsubscribeOutput = schema.new({
    id = id.from(_N, "UnsubscribeOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "UnsubscribeOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "UntagResourceInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "TagKeys"),
            type = "list",
            name = "TagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "tagKeys" },
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

M.UpdateNotificationRuleInput = schema.new({
    id = id.from(_N, "UpdateNotificationRuleInput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "UpdateNotificationRuleInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateNotificationRuleInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "UpdateNotificationRuleInput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        EventTypeIds = schema.new({
            id = id.from(_N, "UpdateNotificationRuleInput", "EventTypeIds"),
            type = "list",
            name = "EventTypeIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Targets = schema.new({
            id = id.from(_N, "UpdateNotificationRuleInput", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
        }),
        DetailType = schema.new({
            id = id.from(_N, "UpdateNotificationRuleInput", "DetailType"),
            type = "string",
            name = "DetailType",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateNotificationRuleOutput = schema.new({
    id = id.from(_N, "UpdateNotificationRuleOutput"),
    type = "structure",
})

return M
