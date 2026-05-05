local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.elementalinference"

local M = {}

M.TagMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.FeedSummaryList = schema.new({ type = "list", list_member = M.FeedSummary })

M.CreateOutputList = schema.new({ type = "list", list_member = M.CreateOutput })

M.StringList = schema.new({ type = "list", list_member = prelude.String })

M.GetOutputList = schema.new({ type = "list", list_member = M.GetOutput })

M.UpdateOutputList = schema.new({ type = "list", list_member = M.UpdateOutput })

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AccessDeniedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ClippingConfig = schema.new({
    id = id.from(_N, "ClippingConfig"),
    type = "structure",
    members = {
        callbackMetadata = schema.new({
            id = id.from(_N, "ClippingConfig", "callbackMetadata"),
            type = "string",
            name = "callbackMetadata",
            target_id = prelude.String.id,
        }),
    },
})

M.CroppingConfig = schema.new({
    id = id.from(_N, "CroppingConfig"),
    type = "structure",
})

M.OutputConfig = schema.new({
    id = id.from(_N, "OutputConfig"),
    type = "union",
    members = {
        cropping = schema.new({
            id = id.from(_N, "OutputConfig", "cropping"),
            type = "structure",
            name = "cropping",
            target_id = id.from(_N, "CroppingConfig"),
            target = M.CroppingConfig,
        }),
        clipping = schema.new({
            id = id.from(_N, "OutputConfig", "clipping"),
            type = "structure",
            name = "clipping",
            target_id = id.from(_N, "ClippingConfig"),
            target = M.ClippingConfig,
        }),
    },
})

M.CreateOutput = schema.new({
    id = id.from(_N, "CreateOutput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        outputConfig = schema.new({
            id = id.from(_N, "CreateOutput", "outputConfig"),
            type = "union",
            name = "outputConfig",
            target_id = id.from(_N, "OutputConfig"),
            target = M.OutputConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "CreateOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateFeedInput = schema.new({
    id = id.from(_N, "AssociateFeedRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AssociateFeedInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        associatedResourceName = schema.new({
            id = id.from(_N, "AssociateFeedInput", "associatedResourceName"),
            type = "string",
            name = "associatedResourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        outputs = schema.new({
            id = id.from(_N, "AssociateFeedInput", "outputs"),
            type = "list",
            name = "outputs",
            target_id = prelude.Document.id,
            list_member = M.CreateOutput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dryRun = schema.new({
            id = id.from(_N, "AssociateFeedInput", "dryRun"),
            type = "boolean",
            name = "dryRun",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.AssociateFeedOutput = schema.new({
    id = id.from(_N, "AssociateFeedResponse"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "AssociateFeedOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "AssociateFeedOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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
        message = schema.new({
            id = id.from(_N, "ConflictException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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
        message = schema.new({
            id = id.from(_N, "InternalServerErrorException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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
        message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TooManyRequestException = schema.new({
    id = id.from(_N, "TooManyRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TooManyRequestException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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
        message = schema.new({
            id = id.from(_N, "ValidationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateFeedInput = schema.new({
    id = id.from(_N, "CreateFeedRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateFeedInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        outputs = schema.new({
            id = id.from(_N, "CreateFeedInput", "outputs"),
            type = "list",
            name = "outputs",
            target_id = prelude.Document.id,
            list_member = M.CreateOutput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateFeedInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.FeedAssociation = schema.new({
    id = id.from(_N, "FeedAssociation"),
    type = "structure",
    members = {
        associatedResourceName = schema.new({
            id = id.from(_N, "FeedAssociation", "associatedResourceName"),
            type = "string",
            name = "associatedResourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetOutput = schema.new({
    id = id.from(_N, "GetOutput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "GetOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        outputConfig = schema.new({
            id = id.from(_N, "GetOutput", "outputConfig"),
            type = "union",
            name = "outputConfig",
            target_id = id.from(_N, "OutputConfig"),
            target = M.OutputConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        fromAssociation = schema.new({
            id = id.from(_N, "GetOutput", "fromAssociation"),
            type = "boolean",
            name = "fromAssociation",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreateFeedOutput = schema.new({
    id = id.from(_N, "CreateFeedResponse"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "CreateFeedOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateFeedOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "CreateFeedOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataEndpoints = schema.new({
            id = id.from(_N, "CreateFeedOutput", "dataEndpoints"),
            type = "list",
            name = "dataEndpoints",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        outputs = schema.new({
            id = id.from(_N, "CreateFeedOutput", "outputs"),
            type = "list",
            name = "outputs",
            target_id = prelude.Document.id,
            list_member = M.GetOutput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "CreateFeedOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        association = schema.new({
            id = id.from(_N, "CreateFeedOutput", "association"),
            type = "structure",
            name = "association",
            target_id = id.from(_N, "FeedAssociation"),
            target = M.FeedAssociation,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateFeedOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.DeleteFeedInput = schema.new({
    id = id.from(_N, "DeleteFeedRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeleteFeedInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteFeedOutput = schema.new({
    id = id.from(_N, "DeleteFeedResponse"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "DeleteFeedOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "DeleteFeedOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "DeleteFeedOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisassociateFeedInput = schema.new({
    id = id.from(_N, "DisassociateFeedRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DisassociateFeedInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        associatedResourceName = schema.new({
            id = id.from(_N, "DisassociateFeedInput", "associatedResourceName"),
            type = "string",
            name = "associatedResourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        dryRun = schema.new({
            id = id.from(_N, "DisassociateFeedInput", "dryRun"),
            type = "boolean",
            name = "dryRun",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DisassociateFeedOutput = schema.new({
    id = id.from(_N, "DisassociateFeedResponse"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "DisassociateFeedOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "DisassociateFeedOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetFeedInput = schema.new({
    id = id.from(_N, "GetFeedRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetFeedInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetFeedOutput = schema.new({
    id = id.from(_N, "GetFeedResponse"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "GetFeedOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetFeedOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "GetFeedOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataEndpoints = schema.new({
            id = id.from(_N, "GetFeedOutput", "dataEndpoints"),
            type = "list",
            name = "dataEndpoints",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        outputs = schema.new({
            id = id.from(_N, "GetFeedOutput", "outputs"),
            type = "list",
            name = "outputs",
            target_id = prelude.Document.id,
            list_member = M.GetOutput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetFeedOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        association = schema.new({
            id = id.from(_N, "GetFeedOutput", "association"),
            type = "structure",
            name = "association",
            target_id = id.from(_N, "FeedAssociation"),
            target = M.FeedAssociation,
        }),
        tags = schema.new({
            id = id.from(_N, "GetFeedOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListFeedsInput = schema.new({
    id = id.from(_N, "ListFeedsRequest"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListFeedsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListFeedsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.FeedSummary = schema.new({
    id = id.from(_N, "FeedSummary"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "FeedSummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "FeedSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "FeedSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        association = schema.new({
            id = id.from(_N, "FeedSummary", "association"),
            type = "structure",
            name = "association",
            target_id = id.from(_N, "FeedAssociation"),
            target = M.FeedAssociation,
        }),
        status = schema.new({
            id = id.from(_N, "FeedSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListFeedsOutput = schema.new({
    id = id.from(_N, "ListFeedsResponse"),
    type = "structure",
    members = {
        feeds = schema.new({
            id = id.from(_N, "ListFeedsOutput", "feeds"),
            type = "list",
            name = "feeds",
            target_id = prelude.Document.id,
            list_member = M.FeedSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListFeedsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateOutput = schema.new({
    id = id.from(_N, "UpdateOutput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "UpdateOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        outputConfig = schema.new({
            id = id.from(_N, "UpdateOutput", "outputConfig"),
            type = "union",
            name = "outputConfig",
            target_id = id.from(_N, "OutputConfig"),
            target = M.OutputConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdateOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        fromAssociation = schema.new({
            id = id.from(_N, "UpdateOutput", "fromAssociation"),
            type = "boolean",
            name = "fromAssociation",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateFeedInput = schema.new({
    id = id.from(_N, "UpdateFeedRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "UpdateFeedInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "UpdateFeedInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        outputs = schema.new({
            id = id.from(_N, "UpdateFeedInput", "outputs"),
            type = "list",
            name = "outputs",
            target_id = prelude.Document.id,
            list_member = M.UpdateOutput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateFeedOutput = schema.new({
    id = id.from(_N, "UpdateFeedResponse"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "UpdateFeedOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateFeedOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "UpdateFeedOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataEndpoints = schema.new({
            id = id.from(_N, "UpdateFeedOutput", "dataEndpoints"),
            type = "list",
            name = "dataEndpoints",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        outputs = schema.new({
            id = id.from(_N, "UpdateFeedOutput", "outputs"),
            type = "list",
            name = "outputs",
            target_id = prelude.Document.id,
            list_member = M.GetOutput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdateFeedOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        association = schema.new({
            id = id.from(_N, "UpdateFeedOutput", "association"),
            type = "structure",
            name = "association",
            target_id = id.from(_N, "FeedAssociation"),
            target = M.FeedAssociation,
        }),
        tags = schema.new({
            id = id.from(_N, "UpdateFeedOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceResponse"),
    type = "structure",
    members = {
        tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "TagResourceInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = prelude.Unit

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        tagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "tagKeys"),
            type = "list",
            name = "tagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "tagKeys" },
            },
        }),
    },
})

M.UntagResourceOutput = prelude.Unit

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
