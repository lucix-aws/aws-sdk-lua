local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.marketplacecommerceanalytics"

local M = {}

M.CustomerDefinedValues = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.GenerateDataSetInput = schema.new({
    id = id.from(_N, "GenerateDataSetRequest"),
    type = "structure",
    members = {
        dataSetType = schema.new({
            id = id.from(_N, "GenerateDataSetInput", "dataSetType"),
            type = "string",
            name = "dataSetType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataSetPublicationDate = schema.new({
            id = id.from(_N, "GenerateDataSetInput", "dataSetPublicationDate"),
            type = "timestamp",
            name = "dataSetPublicationDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleNameArn = schema.new({
            id = id.from(_N, "GenerateDataSetInput", "roleNameArn"),
            type = "string",
            name = "roleNameArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destinationS3BucketName = schema.new({
            id = id.from(_N, "GenerateDataSetInput", "destinationS3BucketName"),
            type = "string",
            name = "destinationS3BucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destinationS3Prefix = schema.new({
            id = id.from(_N, "GenerateDataSetInput", "destinationS3Prefix"),
            type = "string",
            name = "destinationS3Prefix",
            target_id = prelude.String.id,
        }),
        snsTopicArn = schema.new({
            id = id.from(_N, "GenerateDataSetInput", "snsTopicArn"),
            type = "string",
            name = "snsTopicArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        customerDefinedValues = schema.new({
            id = id.from(_N, "GenerateDataSetInput", "customerDefinedValues"),
            type = "map",
            name = "customerDefinedValues",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GenerateDataSetOutput = schema.new({
    id = id.from(_N, "GenerateDataSetResult"),
    type = "structure",
    members = {
        dataSetRequestId = schema.new({
            id = id.from(_N, "GenerateDataSetOutput", "dataSetRequestId"),
            type = "string",
            name = "dataSetRequestId",
            target_id = prelude.String.id,
        }),
    },
})

M.MarketplaceCommerceAnalyticsException = schema.new({
    id = id.from(_N, "MarketplaceCommerceAnalyticsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "MarketplaceCommerceAnalyticsException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.StartSupportDataExportInput = schema.new({
    id = id.from(_N, "StartSupportDataExportRequest"),
    type = "structure",
    members = {
        dataSetType = schema.new({
            id = id.from(_N, "StartSupportDataExportInput", "dataSetType"),
            type = "string",
            name = "dataSetType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fromDate = schema.new({
            id = id.from(_N, "StartSupportDataExportInput", "fromDate"),
            type = "timestamp",
            name = "fromDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleNameArn = schema.new({
            id = id.from(_N, "StartSupportDataExportInput", "roleNameArn"),
            type = "string",
            name = "roleNameArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destinationS3BucketName = schema.new({
            id = id.from(_N, "StartSupportDataExportInput", "destinationS3BucketName"),
            type = "string",
            name = "destinationS3BucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destinationS3Prefix = schema.new({
            id = id.from(_N, "StartSupportDataExportInput", "destinationS3Prefix"),
            type = "string",
            name = "destinationS3Prefix",
            target_id = prelude.String.id,
        }),
        snsTopicArn = schema.new({
            id = id.from(_N, "StartSupportDataExportInput", "snsTopicArn"),
            type = "string",
            name = "snsTopicArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        customerDefinedValues = schema.new({
            id = id.from(_N, "StartSupportDataExportInput", "customerDefinedValues"),
            type = "map",
            name = "customerDefinedValues",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.StartSupportDataExportOutput = schema.new({
    id = id.from(_N, "StartSupportDataExportResult"),
    type = "structure",
    members = {
        dataSetRequestId = schema.new({
            id = id.from(_N, "StartSupportDataExportOutput", "dataSetRequestId"),
            type = "string",
            name = "dataSetRequestId",
            target_id = prelude.String.id,
        }),
    },
})

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
