local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.costandusagereportservice"

local M = {}

M.DeleteReportDefinitionInput = schema.new({
    id = id.from(_N, "DeleteReportDefinitionInput"),
    type = "structure",
    members = {
        ReportName = schema.new({
            id = id.from(_N, "DeleteReportDefinitionInput", "ReportName"),
            type = "string",
            name = "ReportName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteReportDefinitionOutput = schema.new({
    id = id.from(_N, "DeleteReportDefinitionOutput"),
    type = "structure",
    members = {
        ResponseMessage = schema.new({
            id = id.from(_N, "DeleteReportDefinitionOutput", "ResponseMessage"),
            type = "string",
            name = "ResponseMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.InternalErrorException = schema.new({
    id = id.from(_N, "InternalErrorException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InternalErrorException", "Message"),
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

M.DescribeReportDefinitionsInput = schema.new({
    id = id.from(_N, "DescribeReportDefinitionsInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "DescribeReportDefinitionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeReportDefinitionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ReportStatus = schema.new({
    id = id.from(_N, "ReportStatus"),
    type = "structure",
    members = {
        lastDelivery = schema.new({
            id = id.from(_N, "ReportStatus", "lastDelivery"),
            type = "string",
            name = "lastDelivery",
            target_id = prelude.String.id,
        }),
        lastStatus = schema.new({
            id = id.from(_N, "ReportStatus", "lastStatus"),
            type = "string",
            name = "lastStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.ReportDefinition = schema.new({
    id = id.from(_N, "ReportDefinition"),
    type = "structure",
    members = {
        ReportName = schema.new({
            id = id.from(_N, "ReportDefinition", "ReportName"),
            type = "string",
            name = "ReportName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TimeUnit = schema.new({
            id = id.from(_N, "ReportDefinition", "TimeUnit"),
            type = "string",
            name = "TimeUnit",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Format = schema.new({
            id = id.from(_N, "ReportDefinition", "Format"),
            type = "string",
            name = "Format",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Compression = schema.new({
            id = id.from(_N, "ReportDefinition", "Compression"),
            type = "string",
            name = "Compression",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AdditionalSchemaElements = schema.new({
            id = id.from(_N, "ReportDefinition", "AdditionalSchemaElements"),
            type = "list",
            name = "AdditionalSchemaElements",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        S3Bucket = schema.new({
            id = id.from(_N, "ReportDefinition", "S3Bucket"),
            type = "string",
            name = "S3Bucket",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        S3Prefix = schema.new({
            id = id.from(_N, "ReportDefinition", "S3Prefix"),
            type = "string",
            name = "S3Prefix",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        S3Region = schema.new({
            id = id.from(_N, "ReportDefinition", "S3Region"),
            type = "string",
            name = "S3Region",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AdditionalArtifacts = schema.new({
            id = id.from(_N, "ReportDefinition", "AdditionalArtifacts"),
            type = "list",
            name = "AdditionalArtifacts",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        RefreshClosedReports = schema.new({
            id = id.from(_N, "ReportDefinition", "RefreshClosedReports"),
            type = "boolean",
            name = "RefreshClosedReports",
            target_id = prelude.Boolean.id,
        }),
        ReportVersioning = schema.new({
            id = id.from(_N, "ReportDefinition", "ReportVersioning"),
            type = "string",
            name = "ReportVersioning",
            target_id = prelude.String.id,
        }),
        BillingViewArn = schema.new({
            id = id.from(_N, "ReportDefinition", "BillingViewArn"),
            type = "string",
            name = "BillingViewArn",
            target_id = prelude.String.id,
        }),
        ReportStatus = schema.new({
            id = id.from(_N, "ReportDefinition", "ReportStatus"),
            type = "structure",
            name = "ReportStatus",
            target_id = id.from(_N, "ReportStatus"),
            target = M.ReportStatus,
        }),
    },
})

M.DescribeReportDefinitionsOutput = schema.new({
    id = id.from(_N, "DescribeReportDefinitionsOutput"),
    type = "structure",
    members = {
        ReportDefinitions = schema.new({
            id = id.from(_N, "DescribeReportDefinitionsOutput", "ReportDefinitions"),
            type = "list",
            name = "ReportDefinitions",
            target_id = prelude.Document.id,
            list_member = M.ReportDefinition,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeReportDefinitionsOutput", "NextToken"),
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
        ReportName = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ReportName"),
            type = "string",
            name = "ReportName",
            target_id = prelude.String.id,
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

M.ModifyReportDefinitionInput = schema.new({
    id = id.from(_N, "ModifyReportDefinitionInput"),
    type = "structure",
    members = {
        ReportName = schema.new({
            id = id.from(_N, "ModifyReportDefinitionInput", "ReportName"),
            type = "string",
            name = "ReportName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReportDefinition = schema.new({
            id = id.from(_N, "ModifyReportDefinitionInput", "ReportDefinition"),
            type = "structure",
            name = "ReportDefinition",
            target_id = id.from(_N, "ReportDefinition"),
            target = M.ReportDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ModifyReportDefinitionOutput = schema.new({
    id = id.from(_N, "ModifyReportDefinitionOutput"),
    type = "structure",
})

M.DuplicateReportNameException = schema.new({
    id = id.from(_N, "DuplicateReportNameException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DuplicateReportNameException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.PutReportDefinitionInput = schema.new({
    id = id.from(_N, "PutReportDefinitionInput"),
    type = "structure",
    members = {
        ReportDefinition = schema.new({
            id = id.from(_N, "PutReportDefinitionInput", "ReportDefinition"),
            type = "structure",
            name = "ReportDefinition",
            target_id = id.from(_N, "ReportDefinition"),
            target = M.ReportDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "PutReportDefinitionInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.PutReportDefinitionOutput = schema.new({
    id = id.from(_N, "PutReportDefinitionOutput"),
    type = "structure",
})

M.ReportLimitReachedException = schema.new({
    id = id.from(_N, "ReportLimitReachedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ReportLimitReachedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        ReportName = schema.new({
            id = id.from(_N, "TagResourceInput", "ReportName"),
            type = "string",
            name = "ReportName",
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
        ReportName = schema.new({
            id = id.from(_N, "UntagResourceInput", "ReportName"),
            type = "string",
            name = "ReportName",
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

return M
