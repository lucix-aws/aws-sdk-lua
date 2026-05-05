local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.kendraranking"

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

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ConflictException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CapacityUnitsConfiguration = schema.new({
    id = id.from(_N, "CapacityUnitsConfiguration"),
    type = "structure",
    members = {
        RescoreCapacityUnits = schema.new({
            id = id.from(_N, "CapacityUnitsConfiguration", "RescoreCapacityUnits"),
            type = "integer",
            name = "RescoreCapacityUnits",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "Tag", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "Tag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateRescoreExecutionPlanInput = schema.new({
    id = id.from(_N, "CreateRescoreExecutionPlanInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateRescoreExecutionPlanInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateRescoreExecutionPlanInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CapacityUnits = schema.new({
            id = id.from(_N, "CreateRescoreExecutionPlanInput", "CapacityUnits"),
            type = "structure",
            name = "CapacityUnits",
            target_id = id.from(_N, "CapacityUnitsConfiguration"),
            target = M.CapacityUnitsConfiguration,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateRescoreExecutionPlanInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateRescoreExecutionPlanInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateRescoreExecutionPlanOutput = schema.new({
    id = id.from(_N, "CreateRescoreExecutionPlanOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "CreateRescoreExecutionPlanOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Arn = schema.new({
            id = id.from(_N, "CreateRescoreExecutionPlanOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InternalServerException = schema.new({
    id = id.from(_N, "InternalServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InternalServerException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceQuotaExceededException = schema.new({
    id = id.from(_N, "ServiceQuotaExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ThrottlingException = schema.new({
    id = id.from(_N, "ThrottlingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ThrottlingException", "Message"),
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

M.DeleteRescoreExecutionPlanInput = schema.new({
    id = id.from(_N, "DeleteRescoreExecutionPlanInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteRescoreExecutionPlanInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteRescoreExecutionPlanOutput = schema.new({
    id = id.from(_N, "DeleteRescoreExecutionPlanOutput"),
    type = "structure",
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

M.DescribeRescoreExecutionPlanInput = schema.new({
    id = id.from(_N, "DescribeRescoreExecutionPlanInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DescribeRescoreExecutionPlanInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeRescoreExecutionPlanOutput = schema.new({
    id = id.from(_N, "DescribeRescoreExecutionPlanOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DescribeRescoreExecutionPlanOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "DescribeRescoreExecutionPlanOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "DescribeRescoreExecutionPlanOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "DescribeRescoreExecutionPlanOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CapacityUnits = schema.new({
            id = id.from(_N, "DescribeRescoreExecutionPlanOutput", "CapacityUnits"),
            type = "structure",
            name = "CapacityUnits",
            target_id = id.from(_N, "CapacityUnitsConfiguration"),
            target = M.CapacityUnitsConfiguration,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "DescribeRescoreExecutionPlanOutput", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "DescribeRescoreExecutionPlanOutput", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DescribeRescoreExecutionPlanOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "DescribeRescoreExecutionPlanOutput", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRescoreExecutionPlansInput = schema.new({
    id = id.from(_N, "ListRescoreExecutionPlansInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListRescoreExecutionPlansInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListRescoreExecutionPlansInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.RescoreExecutionPlanSummary = schema.new({
    id = id.from(_N, "RescoreExecutionPlanSummary"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "RescoreExecutionPlanSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "RescoreExecutionPlanSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "RescoreExecutionPlanSummary", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "RescoreExecutionPlanSummary", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
        Status = schema.new({
            id = id.from(_N, "RescoreExecutionPlanSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRescoreExecutionPlansOutput = schema.new({
    id = id.from(_N, "ListRescoreExecutionPlansOutput"),
    type = "structure",
    members = {
        SummaryItems = schema.new({
            id = id.from(_N, "ListRescoreExecutionPlansOutput", "SummaryItems"),
            type = "list",
            name = "SummaryItems",
            target_id = prelude.Document.id,
            list_member = M.RescoreExecutionPlanSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListRescoreExecutionPlansOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
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
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.ResourceUnavailableException = schema.new({
    id = id.from(_N, "ResourceUnavailableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceUnavailableException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.Document = schema.new({
    id = id.from(_N, "Document"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "Document", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GroupId = schema.new({
            id = id.from(_N, "Document", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
        }),
        Title = schema.new({
            id = id.from(_N, "Document", "Title"),
            type = "string",
            name = "Title",
            target_id = prelude.String.id,
        }),
        Body = schema.new({
            id = id.from(_N, "Document", "Body"),
            type = "string",
            name = "Body",
            target_id = prelude.String.id,
        }),
        TokenizedTitle = schema.new({
            id = id.from(_N, "Document", "TokenizedTitle"),
            type = "list",
            name = "TokenizedTitle",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        TokenizedBody = schema.new({
            id = id.from(_N, "Document", "TokenizedBody"),
            type = "list",
            name = "TokenizedBody",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        OriginalScore = schema.new({
            id = id.from(_N, "Document", "OriginalScore"),
            type = "float",
            name = "OriginalScore",
            target_id = prelude.Float.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RescoreInput = schema.new({
    id = id.from(_N, "RescoreInput"),
    type = "structure",
    members = {
        RescoreExecutionPlanId = schema.new({
            id = id.from(_N, "RescoreInput", "RescoreExecutionPlanId"),
            type = "string",
            name = "RescoreExecutionPlanId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SearchQuery = schema.new({
            id = id.from(_N, "RescoreInput", "SearchQuery"),
            type = "string",
            name = "SearchQuery",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Documents = schema.new({
            id = id.from(_N, "RescoreInput", "Documents"),
            type = "list",
            name = "Documents",
            target_id = prelude.Document.id,
            list_member = M.Document,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RescoreResultItem = schema.new({
    id = id.from(_N, "RescoreResultItem"),
    type = "structure",
    members = {
        DocumentId = schema.new({
            id = id.from(_N, "RescoreResultItem", "DocumentId"),
            type = "string",
            name = "DocumentId",
            target_id = prelude.String.id,
        }),
        Score = schema.new({
            id = id.from(_N, "RescoreResultItem", "Score"),
            type = "float",
            name = "Score",
            target_id = prelude.Float.id,
        }),
    },
})

M.RescoreOutput = schema.new({
    id = id.from(_N, "RescoreOutput"),
    type = "structure",
    members = {
        RescoreId = schema.new({
            id = id.from(_N, "RescoreOutput", "RescoreId"),
            type = "string",
            name = "RescoreId",
            target_id = prelude.String.id,
        }),
        ResultItems = schema.new({
            id = id.from(_N, "RescoreOutput", "ResultItems"),
            type = "list",
            name = "ResultItems",
            target_id = prelude.Document.id,
            list_member = M.RescoreResultItem,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagResourceInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceOutput"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
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
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

M.UpdateRescoreExecutionPlanInput = schema.new({
    id = id.from(_N, "UpdateRescoreExecutionPlanInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdateRescoreExecutionPlanInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateRescoreExecutionPlanInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateRescoreExecutionPlanInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CapacityUnits = schema.new({
            id = id.from(_N, "UpdateRescoreExecutionPlanInput", "CapacityUnits"),
            type = "structure",
            name = "CapacityUnits",
            target_id = id.from(_N, "CapacityUnitsConfiguration"),
            target = M.CapacityUnitsConfiguration,
        }),
    },
})

M.UpdateRescoreExecutionPlanOutput = schema.new({
    id = id.from(_N, "UpdateRescoreExecutionPlanOutput"),
    type = "structure",
})

return M
