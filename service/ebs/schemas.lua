local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.ebs"

local M = {}

M.ChangedBlocks = schema.new({ type = "list", list_member = M.ChangedBlock })

M.Blocks = schema.new({ type = "list", list_member = M.Block })

M.Tags = schema.new({ type = "list", list_member = M.Tag })

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
        Reason = schema.new({
            id = id.from(_N, "AccessDeniedException", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Block = schema.new({
    id = id.from(_N, "Block"),
    type = "structure",
    members = {
        BlockIndex = schema.new({
            id = id.from(_N, "Block", "BlockIndex"),
            type = "integer",
            name = "BlockIndex",
            target_id = prelude.Integer.id,
        }),
        BlockToken = schema.new({
            id = id.from(_N, "Block", "BlockToken"),
            type = "string",
            name = "BlockToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ChangedBlock = schema.new({
    id = id.from(_N, "ChangedBlock"),
    type = "structure",
    members = {
        BlockIndex = schema.new({
            id = id.from(_N, "ChangedBlock", "BlockIndex"),
            type = "integer",
            name = "BlockIndex",
            target_id = prelude.Integer.id,
        }),
        FirstBlockToken = schema.new({
            id = id.from(_N, "ChangedBlock", "FirstBlockToken"),
            type = "string",
            name = "FirstBlockToken",
            target_id = prelude.String.id,
        }),
        SecondBlockToken = schema.new({
            id = id.from(_N, "ChangedBlock", "SecondBlockToken"),
            type = "string",
            name = "SecondBlockToken",
            target_id = prelude.String.id,
        }),
    },
})

M.CompleteSnapshotInput = schema.new({
    id = id.from(_N, "CompleteSnapshotRequest"),
    type = "structure",
    members = {
        SnapshotId = schema.new({
            id = id.from(_N, "CompleteSnapshotInput", "SnapshotId"),
            type = "string",
            name = "SnapshotId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ChangedBlocksCount = schema.new({
            id = id.from(_N, "CompleteSnapshotInput", "ChangedBlocksCount"),
            type = "integer",
            name = "ChangedBlocksCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-ChangedBlocksCount" },
            },
        }),
        Checksum = schema.new({
            id = id.from(_N, "CompleteSnapshotInput", "Checksum"),
            type = "string",
            name = "Checksum",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-Checksum" },
            },
        }),
        ChecksumAlgorithm = schema.new({
            id = id.from(_N, "CompleteSnapshotInput", "ChecksumAlgorithm"),
            type = "string",
            name = "ChecksumAlgorithm",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-Checksum-Algorithm" },
            },
        }),
        ChecksumAggregationMethod = schema.new({
            id = id.from(_N, "CompleteSnapshotInput", "ChecksumAggregationMethod"),
            type = "string",
            name = "ChecksumAggregationMethod",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-Checksum-Aggregation-Method" },
            },
        }),
    },
})

M.CompleteSnapshotOutput = schema.new({
    id = id.from(_N, "CompleteSnapshotResponse"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "CompleteSnapshotOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
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

M.RequestThrottledException = schema.new({
    id = id.from(_N, "RequestThrottledException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "RequestThrottledException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        Reason = schema.new({
            id = id.from(_N, "RequestThrottledException", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
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
        Reason = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Reason"),
            type = "string",
            name = "Reason",
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
        Reason = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "Reason"),
            type = "string",
            name = "Reason",
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
        Reason = schema.new({
            id = id.from(_N, "ValidationException", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
    },
})

M.ConcurrentLimitExceededException = schema.new({
    id = id.from(_N, "ConcurrentLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ConcurrentLimitExceededException", "Message"),
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

M.GetSnapshotBlockInput = schema.new({
    id = id.from(_N, "GetSnapshotBlockRequest"),
    type = "structure",
    members = {
        SnapshotId = schema.new({
            id = id.from(_N, "GetSnapshotBlockInput", "SnapshotId"),
            type = "string",
            name = "SnapshotId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        BlockIndex = schema.new({
            id = id.from(_N, "GetSnapshotBlockInput", "BlockIndex"),
            type = "integer",
            name = "BlockIndex",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        BlockToken = schema.new({
            id = id.from(_N, "GetSnapshotBlockInput", "BlockToken"),
            type = "string",
            name = "BlockToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "blockToken" },
            },
        }),
    },
})

M.GetSnapshotBlockOutput = schema.new({
    id = id.from(_N, "GetSnapshotBlockResponse"),
    type = "structure",
    members = {
        DataLength = schema.new({
            id = id.from(_N, "GetSnapshotBlockOutput", "DataLength"),
            type = "integer",
            name = "DataLength",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-Data-Length" },
            },
        }),
        BlockData = schema.new({
            id = id.from(_N, "GetSnapshotBlockOutput", "BlockData"),
            type = "blob",
            name = "BlockData",
            target_id = prelude.Blob.id,
            traits = {
                [traits.DEFAULT] = { value = "" },
                [traits.HTTP_PAYLOAD] = {},
                [traits.STREAMING] = {},
            },
            direct_traits = {
                [traits.DEFAULT] = { value = "" },
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        Checksum = schema.new({
            id = id.from(_N, "GetSnapshotBlockOutput", "Checksum"),
            type = "string",
            name = "Checksum",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-Checksum" },
            },
        }),
        ChecksumAlgorithm = schema.new({
            id = id.from(_N, "GetSnapshotBlockOutput", "ChecksumAlgorithm"),
            type = "string",
            name = "ChecksumAlgorithm",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-Checksum-Algorithm" },
            },
        }),
    },
})

M.ListChangedBlocksInput = schema.new({
    id = id.from(_N, "ListChangedBlocksRequest"),
    type = "structure",
    members = {
        FirstSnapshotId = schema.new({
            id = id.from(_N, "ListChangedBlocksInput", "FirstSnapshotId"),
            type = "string",
            name = "FirstSnapshotId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "firstSnapshotId" },
            },
        }),
        SecondSnapshotId = schema.new({
            id = id.from(_N, "ListChangedBlocksInput", "SecondSnapshotId"),
            type = "string",
            name = "SecondSnapshotId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListChangedBlocksInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "pageToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListChangedBlocksInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        StartingBlockIndex = schema.new({
            id = id.from(_N, "ListChangedBlocksInput", "StartingBlockIndex"),
            type = "integer",
            name = "StartingBlockIndex",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "startingBlockIndex" },
            },
        }),
    },
})

M.ListChangedBlocksOutput = schema.new({
    id = id.from(_N, "ListChangedBlocksResponse"),
    type = "structure",
    members = {
        ChangedBlocks = schema.new({
            id = id.from(_N, "ListChangedBlocksOutput", "ChangedBlocks"),
            type = "list",
            name = "ChangedBlocks",
            target_id = prelude.Document.id,
            list_member = M.ChangedBlock,
        }),
        ExpiryTime = schema.new({
            id = id.from(_N, "ListChangedBlocksOutput", "ExpiryTime"),
            type = "timestamp",
            name = "ExpiryTime",
            target_id = prelude.Timestamp.id,
        }),
        VolumeSize = schema.new({
            id = id.from(_N, "ListChangedBlocksOutput", "VolumeSize"),
            type = "long",
            name = "VolumeSize",
            target_id = prelude.Long.id,
        }),
        BlockSize = schema.new({
            id = id.from(_N, "ListChangedBlocksOutput", "BlockSize"),
            type = "integer",
            name = "BlockSize",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListChangedBlocksOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSnapshotBlocksInput = schema.new({
    id = id.from(_N, "ListSnapshotBlocksRequest"),
    type = "structure",
    members = {
        SnapshotId = schema.new({
            id = id.from(_N, "ListSnapshotBlocksInput", "SnapshotId"),
            type = "string",
            name = "SnapshotId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSnapshotBlocksInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "pageToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListSnapshotBlocksInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        StartingBlockIndex = schema.new({
            id = id.from(_N, "ListSnapshotBlocksInput", "StartingBlockIndex"),
            type = "integer",
            name = "StartingBlockIndex",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "startingBlockIndex" },
            },
        }),
    },
})

M.ListSnapshotBlocksOutput = schema.new({
    id = id.from(_N, "ListSnapshotBlocksResponse"),
    type = "structure",
    members = {
        Blocks = schema.new({
            id = id.from(_N, "ListSnapshotBlocksOutput", "Blocks"),
            type = "list",
            name = "Blocks",
            target_id = prelude.Document.id,
            list_member = M.Block,
        }),
        ExpiryTime = schema.new({
            id = id.from(_N, "ListSnapshotBlocksOutput", "ExpiryTime"),
            type = "timestamp",
            name = "ExpiryTime",
            target_id = prelude.Timestamp.id,
        }),
        VolumeSize = schema.new({
            id = id.from(_N, "ListSnapshotBlocksOutput", "VolumeSize"),
            type = "long",
            name = "VolumeSize",
            target_id = prelude.Long.id,
        }),
        BlockSize = schema.new({
            id = id.from(_N, "ListSnapshotBlocksOutput", "BlockSize"),
            type = "integer",
            name = "BlockSize",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSnapshotBlocksOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PutSnapshotBlockInput = schema.new({
    id = id.from(_N, "PutSnapshotBlockRequest"),
    type = "structure",
    members = {
        SnapshotId = schema.new({
            id = id.from(_N, "PutSnapshotBlockInput", "SnapshotId"),
            type = "string",
            name = "SnapshotId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        BlockIndex = schema.new({
            id = id.from(_N, "PutSnapshotBlockInput", "BlockIndex"),
            type = "integer",
            name = "BlockIndex",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        BlockData = schema.new({
            id = id.from(_N, "PutSnapshotBlockInput", "BlockData"),
            type = "blob",
            name = "BlockData",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
                [traits.STREAMING] = {},
            },
            direct_traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        DataLength = schema.new({
            id = id.from(_N, "PutSnapshotBlockInput", "DataLength"),
            type = "integer",
            name = "DataLength",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-Data-Length" },
            },
        }),
        Progress = schema.new({
            id = id.from(_N, "PutSnapshotBlockInput", "Progress"),
            type = "integer",
            name = "Progress",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-Progress" },
            },
        }),
        Checksum = schema.new({
            id = id.from(_N, "PutSnapshotBlockInput", "Checksum"),
            type = "string",
            name = "Checksum",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-Checksum" },
            },
        }),
        ChecksumAlgorithm = schema.new({
            id = id.from(_N, "PutSnapshotBlockInput", "ChecksumAlgorithm"),
            type = "string",
            name = "ChecksumAlgorithm",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-Checksum-Algorithm" },
            },
        }),
    },
})

M.PutSnapshotBlockOutput = schema.new({
    id = id.from(_N, "PutSnapshotBlockResponse"),
    type = "structure",
    members = {
        Checksum = schema.new({
            id = id.from(_N, "PutSnapshotBlockOutput", "Checksum"),
            type = "string",
            name = "Checksum",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-Checksum" },
            },
        }),
        ChecksumAlgorithm = schema.new({
            id = id.from(_N, "PutSnapshotBlockOutput", "ChecksumAlgorithm"),
            type = "string",
            name = "ChecksumAlgorithm",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-Checksum-Algorithm" },
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
        }),
        Value = schema.new({
            id = id.from(_N, "Tag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.StartSnapshotInput = schema.new({
    id = id.from(_N, "StartSnapshotRequest"),
    type = "structure",
    members = {
        VolumeSize = schema.new({
            id = id.from(_N, "StartSnapshotInput", "VolumeSize"),
            type = "long",
            name = "VolumeSize",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ParentSnapshotId = schema.new({
            id = id.from(_N, "StartSnapshotInput", "ParentSnapshotId"),
            type = "string",
            name = "ParentSnapshotId",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "StartSnapshotInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        Description = schema.new({
            id = id.from(_N, "StartSnapshotInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "StartSnapshotInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Encrypted = schema.new({
            id = id.from(_N, "StartSnapshotInput", "Encrypted"),
            type = "boolean",
            name = "Encrypted",
            target_id = prelude.Boolean.id,
        }),
        KmsKeyArn = schema.new({
            id = id.from(_N, "StartSnapshotInput", "KmsKeyArn"),
            type = "string",
            name = "KmsKeyArn",
            target_id = prelude.String.id,
        }),
        Timeout = schema.new({
            id = id.from(_N, "StartSnapshotInput", "Timeout"),
            type = "integer",
            name = "Timeout",
            target_id = prelude.Integer.id,
        }),
    },
})

M.StartSnapshotOutput = schema.new({
    id = id.from(_N, "StartSnapshotResponse"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "StartSnapshotOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        SnapshotId = schema.new({
            id = id.from(_N, "StartSnapshotOutput", "SnapshotId"),
            type = "string",
            name = "SnapshotId",
            target_id = prelude.String.id,
        }),
        OwnerId = schema.new({
            id = id.from(_N, "StartSnapshotOutput", "OwnerId"),
            type = "string",
            name = "OwnerId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "StartSnapshotOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "StartSnapshotOutput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        VolumeSize = schema.new({
            id = id.from(_N, "StartSnapshotOutput", "VolumeSize"),
            type = "long",
            name = "VolumeSize",
            target_id = prelude.Long.id,
        }),
        BlockSize = schema.new({
            id = id.from(_N, "StartSnapshotOutput", "BlockSize"),
            type = "integer",
            name = "BlockSize",
            target_id = prelude.Integer.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "StartSnapshotOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ParentSnapshotId = schema.new({
            id = id.from(_N, "StartSnapshotOutput", "ParentSnapshotId"),
            type = "string",
            name = "ParentSnapshotId",
            target_id = prelude.String.id,
        }),
        KmsKeyArn = schema.new({
            id = id.from(_N, "StartSnapshotOutput", "KmsKeyArn"),
            type = "string",
            name = "KmsKeyArn",
            target_id = prelude.String.id,
        }),
        SseType = schema.new({
            id = id.from(_N, "StartSnapshotOutput", "SseType"),
            type = "string",
            name = "SseType",
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
