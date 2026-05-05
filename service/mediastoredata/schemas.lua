local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.mediastoredata"

local M = {}

M.ItemList = schema.new({ type = "list", list_member = M.Item })

M.ContainerNotFoundException = schema.new({
    id = id.from(_N, "ContainerNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ContainerNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteObjectInput = schema.new({
    id = id.from(_N, "DeleteObjectRequest"),
    type = "structure",
    members = {
        Path = schema.new({
            id = id.from(_N, "DeleteObjectInput", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteObjectOutput = schema.new({
    id = id.from(_N, "DeleteObjectResponse"),
    type = "structure",
})

M.InternalServerError = schema.new({
    id = id.from(_N, "InternalServerError"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InternalServerError", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ObjectNotFoundException = schema.new({
    id = id.from(_N, "ObjectNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ObjectNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeObjectInput = schema.new({
    id = id.from(_N, "DescribeObjectRequest"),
    type = "structure",
    members = {
        Path = schema.new({
            id = id.from(_N, "DescribeObjectInput", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeObjectOutput = schema.new({
    id = id.from(_N, "DescribeObjectResponse"),
    type = "structure",
    members = {
        ETag = schema.new({
            id = id.from(_N, "DescribeObjectOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
        ContentType = schema.new({
            id = id.from(_N, "DescribeObjectOutput", "ContentType"),
            type = "string",
            name = "ContentType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Content-Type" },
            },
        }),
        ContentLength = schema.new({
            id = id.from(_N, "DescribeObjectOutput", "ContentLength"),
            type = "long",
            name = "ContentLength",
            target_id = prelude.Long.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Content-Length" },
            },
        }),
        CacheControl = schema.new({
            id = id.from(_N, "DescribeObjectOutput", "CacheControl"),
            type = "string",
            name = "CacheControl",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Cache-Control" },
            },
        }),
        LastModified = schema.new({
            id = id.from(_N, "DescribeObjectOutput", "LastModified"),
            type = "timestamp",
            name = "LastModified",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Last-Modified" },
            },
        }),
    },
})

M.GetObjectInput = schema.new({
    id = id.from(_N, "GetObjectRequest"),
    type = "structure",
    members = {
        Path = schema.new({
            id = id.from(_N, "GetObjectInput", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Range = schema.new({
            id = id.from(_N, "GetObjectInput", "Range"),
            type = "string",
            name = "Range",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Range" },
            },
        }),
    },
})

M.GetObjectOutput = schema.new({
    id = id.from(_N, "GetObjectResponse"),
    type = "structure",
    members = {
        Body = schema.new({
            id = id.from(_N, "GetObjectOutput", "Body"),
            type = "blob",
            name = "Body",
            target_id = prelude.Blob.id,
            traits = {
                [traits.DEFAULT] = { value = "" },
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        CacheControl = schema.new({
            id = id.from(_N, "GetObjectOutput", "CacheControl"),
            type = "string",
            name = "CacheControl",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Cache-Control" },
            },
        }),
        ContentRange = schema.new({
            id = id.from(_N, "GetObjectOutput", "ContentRange"),
            type = "string",
            name = "ContentRange",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Content-Range" },
            },
        }),
        ContentLength = schema.new({
            id = id.from(_N, "GetObjectOutput", "ContentLength"),
            type = "long",
            name = "ContentLength",
            target_id = prelude.Long.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Content-Length" },
            },
        }),
        ContentType = schema.new({
            id = id.from(_N, "GetObjectOutput", "ContentType"),
            type = "string",
            name = "ContentType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Content-Type" },
            },
        }),
        ETag = schema.new({
            id = id.from(_N, "GetObjectOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
        LastModified = schema.new({
            id = id.from(_N, "GetObjectOutput", "LastModified"),
            type = "timestamp",
            name = "LastModified",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Last-Modified" },
            },
        }),
        StatusCode = schema.new({
            id = id.from(_N, "GetObjectOutput", "StatusCode"),
            type = "integer",
            name = "StatusCode",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_RESPONSE_CODE] = {},
            },
        }),
    },
})

M.RequestedRangeNotSatisfiableException = schema.new({
    id = id.from(_N, "RequestedRangeNotSatisfiableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "RequestedRangeNotSatisfiableException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.Item = schema.new({
    id = id.from(_N, "Item"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Item", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "Item", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        ETag = schema.new({
            id = id.from(_N, "Item", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
        }),
        LastModified = schema.new({
            id = id.from(_N, "Item", "LastModified"),
            type = "timestamp",
            name = "LastModified",
            target_id = prelude.Timestamp.id,
        }),
        ContentType = schema.new({
            id = id.from(_N, "Item", "ContentType"),
            type = "string",
            name = "ContentType",
            target_id = prelude.String.id,
        }),
        ContentLength = schema.new({
            id = id.from(_N, "Item", "ContentLength"),
            type = "long",
            name = "ContentLength",
            target_id = prelude.Long.id,
        }),
    },
})

M.ListItemsInput = schema.new({
    id = id.from(_N, "ListItemsRequest"),
    type = "structure",
    members = {
        Path = schema.new({
            id = id.from(_N, "ListItemsInput", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Path" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListItemsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListItemsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.ListItemsOutput = schema.new({
    id = id.from(_N, "ListItemsResponse"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ListItemsOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.Item,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListItemsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PutObjectInput = schema.new({
    id = id.from(_N, "PutObjectRequest"),
    type = "structure",
    members = {
        Body = schema.new({
            id = id.from(_N, "PutObjectInput", "Body"),
            type = "blob",
            name = "Body",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        Path = schema.new({
            id = id.from(_N, "PutObjectInput", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ContentType = schema.new({
            id = id.from(_N, "PutObjectInput", "ContentType"),
            type = "string",
            name = "ContentType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Content-Type" },
            },
        }),
        CacheControl = schema.new({
            id = id.from(_N, "PutObjectInput", "CacheControl"),
            type = "string",
            name = "CacheControl",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Cache-Control" },
            },
        }),
        StorageClass = schema.new({
            id = id.from(_N, "PutObjectInput", "StorageClass"),
            type = "string",
            name = "StorageClass",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-storage-class" },
            },
        }),
        UploadAvailability = schema.new({
            id = id.from(_N, "PutObjectInput", "UploadAvailability"),
            type = "string",
            name = "UploadAvailability",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-upload-availability" },
            },
        }),
    },
})

M.PutObjectOutput = schema.new({
    id = id.from(_N, "PutObjectResponse"),
    type = "structure",
    members = {
        ContentSHA256 = schema.new({
            id = id.from(_N, "PutObjectOutput", "ContentSHA256"),
            type = "string",
            name = "ContentSHA256",
            target_id = prelude.String.id,
        }),
        ETag = schema.new({
            id = id.from(_N, "PutObjectOutput", "ETag"),
            type = "string",
            name = "ETag",
            target_id = prelude.String.id,
        }),
        StorageClass = schema.new({
            id = id.from(_N, "PutObjectOutput", "StorageClass"),
            type = "string",
            name = "StorageClass",
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
