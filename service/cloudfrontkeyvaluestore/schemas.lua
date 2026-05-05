local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.cloudfrontkeyvaluestore"

local M = {}

M.ListKeysResponseList = schema.new({ type = "list", list_member = M.ListKeysResponseListItem })

M.PutKeyRequestsList = schema.new({ type = "list", list_member = M.PutKeyRequestListItem })

M.DeleteKeyRequestsList = schema.new({ type = "list", list_member = M.DeleteKeyRequestListItem })

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

M.DeleteKeyInput = schema.new({
    id = id.from(_N, "DeleteKeyRequest"),
    type = "structure",
    members = {
        KvsARN = schema.new({
            id = id.from(_N, "DeleteKeyInput", "KvsARN"),
            type = "string",
            name = "KvsARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Key = schema.new({
            id = id.from(_N, "DeleteKeyInput", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "DeleteKeyInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.DeleteKeyOutput = schema.new({
    id = id.from(_N, "DeleteKeyResponse"),
    type = "structure",
    members = {
        ItemCount = schema.new({
            id = id.from(_N, "DeleteKeyOutput", "ItemCount"),
            type = "integer",
            name = "ItemCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TotalSizeInBytes = schema.new({
            id = id.from(_N, "DeleteKeyOutput", "TotalSizeInBytes"),
            type = "long",
            name = "TotalSizeInBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "DeleteKeyOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "ETag" },
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

M.DescribeKeyValueStoreInput = schema.new({
    id = id.from(_N, "DescribeKeyValueStoreRequest"),
    type = "structure",
    members = {
        KvsARN = schema.new({
            id = id.from(_N, "DescribeKeyValueStoreInput", "KvsARN"),
            type = "string",
            name = "KvsARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeKeyValueStoreOutput = schema.new({
    id = id.from(_N, "DescribeKeyValueStoreResponse"),
    type = "structure",
    members = {
        ItemCount = schema.new({
            id = id.from(_N, "DescribeKeyValueStoreOutput", "ItemCount"),
            type = "integer",
            name = "ItemCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TotalSizeInBytes = schema.new({
            id = id.from(_N, "DescribeKeyValueStoreOutput", "TotalSizeInBytes"),
            type = "long",
            name = "TotalSizeInBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KvsARN = schema.new({
            id = id.from(_N, "DescribeKeyValueStoreOutput", "KvsARN"),
            type = "string",
            name = "KvsARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Created = schema.new({
            id = id.from(_N, "DescribeKeyValueStoreOutput", "Created"),
            type = "timestamp",
            name = "Created",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "DescribeKeyValueStoreOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
        LastModified = schema.new({
            id = id.from(_N, "DescribeKeyValueStoreOutput", "LastModified"),
            type = "timestamp",
            name = "LastModified",
            target_id = prelude.Timestamp.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DescribeKeyValueStoreOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        FailureReason = schema.new({
            id = id.from(_N, "DescribeKeyValueStoreOutput", "FailureReason"),
            type = "string",
            name = "FailureReason",
            target_id = prelude.String.id,
        }),
    },
})

M.GetKeyInput = schema.new({
    id = id.from(_N, "GetKeyRequest"),
    type = "structure",
    members = {
        KvsARN = schema.new({
            id = id.from(_N, "GetKeyInput", "KvsARN"),
            type = "string",
            name = "KvsARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Key = schema.new({
            id = id.from(_N, "GetKeyInput", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetKeyOutput = schema.new({
    id = id.from(_N, "GetKeyResponse"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "GetKeyOutput", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "GetKeyOutput", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ItemCount = schema.new({
            id = id.from(_N, "GetKeyOutput", "ItemCount"),
            type = "integer",
            name = "ItemCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TotalSizeInBytes = schema.new({
            id = id.from(_N, "GetKeyOutput", "TotalSizeInBytes"),
            type = "long",
            name = "TotalSizeInBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListKeysInput = schema.new({
    id = id.from(_N, "ListKeysRequest"),
    type = "structure",
    members = {
        KvsARN = schema.new({
            id = id.from(_N, "ListKeysInput", "KvsARN"),
            type = "string",
            name = "KvsARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListKeysInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListKeysInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 10 },
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
    },
})

M.ListKeysResponseListItem = schema.new({
    id = id.from(_N, "ListKeysResponseListItem"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "ListKeysResponseListItem", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "ListKeysResponseListItem", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListKeysOutput = schema.new({
    id = id.from(_N, "ListKeysResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListKeysOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Items = schema.new({
            id = id.from(_N, "ListKeysOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.ListKeysResponseListItem,
        }),
    },
})

M.PutKeyInput = schema.new({
    id = id.from(_N, "PutKeyRequest"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "PutKeyInput", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "PutKeyInput", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KvsARN = schema.new({
            id = id.from(_N, "PutKeyInput", "KvsARN"),
            type = "string",
            name = "KvsARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "PutKeyInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
    },
})

M.PutKeyOutput = schema.new({
    id = id.from(_N, "PutKeyResponse"),
    type = "structure",
    members = {
        ItemCount = schema.new({
            id = id.from(_N, "PutKeyOutput", "ItemCount"),
            type = "integer",
            name = "ItemCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TotalSizeInBytes = schema.new({
            id = id.from(_N, "PutKeyOutput", "TotalSizeInBytes"),
            type = "long",
            name = "TotalSizeInBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "PutKeyOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.DeleteKeyRequestListItem = schema.new({
    id = id.from(_N, "DeleteKeyRequestListItem"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "DeleteKeyRequestListItem", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutKeyRequestListItem = schema.new({
    id = id.from(_N, "PutKeyRequestListItem"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "PutKeyRequestListItem", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "PutKeyRequestListItem", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateKeysInput = schema.new({
    id = id.from(_N, "UpdateKeysRequest"),
    type = "structure",
    members = {
        KvsARN = schema.new({
            id = id.from(_N, "UpdateKeysInput", "KvsARN"),
            type = "string",
            name = "KvsARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IfMatch = schema.new({
            id = id.from(_N, "UpdateKeysInput", "IfMatch"),
            type = "string",
            name = "IfMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
        Puts = schema.new({
            id = id.from(_N, "UpdateKeysInput", "Puts"),
            type = "list",
            name = "Puts",
            target_id = prelude.Document.id,
            list_member = M.PutKeyRequestListItem,
        }),
        Deletes = schema.new({
            id = id.from(_N, "UpdateKeysInput", "Deletes"),
            type = "list",
            name = "Deletes",
            target_id = prelude.Document.id,
            list_member = M.DeleteKeyRequestListItem,
        }),
    },
})

M.UpdateKeysOutput = schema.new({
    id = id.from(_N, "UpdateKeysResponse"),
    type = "structure",
    members = {
        ItemCount = schema.new({
            id = id.from(_N, "UpdateKeysOutput", "ItemCount"),
            type = "integer",
            name = "ItemCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TotalSizeInBytes = schema.new({
            id = id.from(_N, "UpdateKeysOutput", "TotalSizeInBytes"),
            type = "long",
            name = "TotalSizeInBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "UpdateKeysOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
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
