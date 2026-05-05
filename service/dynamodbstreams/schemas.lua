local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.dynamodbstreams"

local M = {}

M.ShardFilter = schema.new({
    id = id.from(_N, "ShardFilter"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "ShardFilter", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        ShardId = schema.new({
            id = id.from(_N, "ShardFilter", "ShardId"),
            type = "string",
            name = "ShardId",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeStreamInput = schema.new({
    id = id.from(_N, "DescribeStreamInput"),
    type = "structure",
    members = {
        StreamArn = schema.new({
            id = id.from(_N, "DescribeStreamInput", "StreamArn"),
            type = "string",
            name = "StreamArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Limit = schema.new({
            id = id.from(_N, "DescribeStreamInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
        ExclusiveStartShardId = schema.new({
            id = id.from(_N, "DescribeStreamInput", "ExclusiveStartShardId"),
            type = "string",
            name = "ExclusiveStartShardId",
            target_id = prelude.String.id,
        }),
        ShardFilter = schema.new({
            id = id.from(_N, "DescribeStreamInput", "ShardFilter"),
            type = "structure",
            name = "ShardFilter",
            target_id = id.from(_N, "ShardFilter"),
            target = M.ShardFilter,
        }),
    },
})

M.KeySchemaElement = schema.new({
    id = id.from(_N, "KeySchemaElement"),
    type = "structure",
    members = {
        AttributeName = schema.new({
            id = id.from(_N, "KeySchemaElement", "AttributeName"),
            type = "string",
            name = "AttributeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KeyType = schema.new({
            id = id.from(_N, "KeySchemaElement", "KeyType"),
            type = "string",
            name = "KeyType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SequenceNumberRange = schema.new({
    id = id.from(_N, "SequenceNumberRange"),
    type = "structure",
    members = {
        StartingSequenceNumber = schema.new({
            id = id.from(_N, "SequenceNumberRange", "StartingSequenceNumber"),
            type = "string",
            name = "StartingSequenceNumber",
            target_id = prelude.String.id,
        }),
        EndingSequenceNumber = schema.new({
            id = id.from(_N, "SequenceNumberRange", "EndingSequenceNumber"),
            type = "string",
            name = "EndingSequenceNumber",
            target_id = prelude.String.id,
        }),
    },
})

M.Shard = schema.new({
    id = id.from(_N, "Shard"),
    type = "structure",
    members = {
        ShardId = schema.new({
            id = id.from(_N, "Shard", "ShardId"),
            type = "string",
            name = "ShardId",
            target_id = prelude.String.id,
        }),
        SequenceNumberRange = schema.new({
            id = id.from(_N, "Shard", "SequenceNumberRange"),
            type = "structure",
            name = "SequenceNumberRange",
            target_id = id.from(_N, "SequenceNumberRange"),
            target = M.SequenceNumberRange,
        }),
        ParentShardId = schema.new({
            id = id.from(_N, "Shard", "ParentShardId"),
            type = "string",
            name = "ParentShardId",
            target_id = prelude.String.id,
        }),
    },
})

M.StreamDescription = schema.new({
    id = id.from(_N, "StreamDescription"),
    type = "structure",
    members = {
        StreamArn = schema.new({
            id = id.from(_N, "StreamDescription", "StreamArn"),
            type = "string",
            name = "StreamArn",
            target_id = prelude.String.id,
        }),
        StreamLabel = schema.new({
            id = id.from(_N, "StreamDescription", "StreamLabel"),
            type = "string",
            name = "StreamLabel",
            target_id = prelude.String.id,
        }),
        StreamStatus = schema.new({
            id = id.from(_N, "StreamDescription", "StreamStatus"),
            type = "string",
            name = "StreamStatus",
            target_id = prelude.String.id,
        }),
        StreamViewType = schema.new({
            id = id.from(_N, "StreamDescription", "StreamViewType"),
            type = "string",
            name = "StreamViewType",
            target_id = prelude.String.id,
        }),
        CreationRequestDateTime = schema.new({
            id = id.from(_N, "StreamDescription", "CreationRequestDateTime"),
            type = "timestamp",
            name = "CreationRequestDateTime",
            target_id = prelude.Timestamp.id,
        }),
        TableName = schema.new({
            id = id.from(_N, "StreamDescription", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
        }),
        KeySchema = schema.new({
            id = id.from(_N, "StreamDescription", "KeySchema"),
            type = "list",
            name = "KeySchema",
            target_id = prelude.Document.id,
            list_member = M.KeySchemaElement,
        }),
        Shards = schema.new({
            id = id.from(_N, "StreamDescription", "Shards"),
            type = "list",
            name = "Shards",
            target_id = prelude.Document.id,
            list_member = M.Shard,
        }),
        LastEvaluatedShardId = schema.new({
            id = id.from(_N, "StreamDescription", "LastEvaluatedShardId"),
            type = "string",
            name = "LastEvaluatedShardId",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeStreamOutput = schema.new({
    id = id.from(_N, "DescribeStreamOutput"),
    type = "structure",
    members = {
        StreamDescription = schema.new({
            id = id.from(_N, "DescribeStreamOutput", "StreamDescription"),
            type = "structure",
            name = "StreamDescription",
            target_id = id.from(_N, "StreamDescription"),
            target = M.StreamDescription,
        }),
    },
})

M.InternalServerError = schema.new({
    id = id.from(_N, "InternalServerError"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InternalServerError", "message"),
            type = "string",
            name = "message",
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
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ExpiredIteratorException = schema.new({
    id = id.from(_N, "ExpiredIteratorException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ExpiredIteratorException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRecordsInput = schema.new({
    id = id.from(_N, "GetRecordsInput"),
    type = "structure",
    members = {
        ShardIterator = schema.new({
            id = id.from(_N, "GetRecordsInput", "ShardIterator"),
            type = "string",
            name = "ShardIterator",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Limit = schema.new({
            id = id.from(_N, "GetRecordsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
    },
})

M.Identity = schema.new({
    id = id.from(_N, "Identity"),
    type = "structure",
    members = {
        PrincipalId = schema.new({
            id = id.from(_N, "Identity", "PrincipalId"),
            type = "string",
            name = "PrincipalId",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "Identity", "Type"),
            type = "string",
            name = "Type",
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
        message = schema.new({
            id = id.from(_N, "LimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.TrimmedDataAccessException = schema.new({
    id = id.from(_N, "TrimmedDataAccessException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TrimmedDataAccessException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetShardIteratorInput = schema.new({
    id = id.from(_N, "GetShardIteratorInput"),
    type = "structure",
    members = {
        StreamArn = schema.new({
            id = id.from(_N, "GetShardIteratorInput", "StreamArn"),
            type = "string",
            name = "StreamArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ShardId = schema.new({
            id = id.from(_N, "GetShardIteratorInput", "ShardId"),
            type = "string",
            name = "ShardId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ShardIteratorType = schema.new({
            id = id.from(_N, "GetShardIteratorInput", "ShardIteratorType"),
            type = "string",
            name = "ShardIteratorType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SequenceNumber = schema.new({
            id = id.from(_N, "GetShardIteratorInput", "SequenceNumber"),
            type = "string",
            name = "SequenceNumber",
            target_id = prelude.String.id,
        }),
    },
})

M.GetShardIteratorOutput = schema.new({
    id = id.from(_N, "GetShardIteratorOutput"),
    type = "structure",
    members = {
        ShardIterator = schema.new({
            id = id.from(_N, "GetShardIteratorOutput", "ShardIterator"),
            type = "string",
            name = "ShardIterator",
            target_id = prelude.String.id,
        }),
    },
})

M.ListStreamsInput = schema.new({
    id = id.from(_N, "ListStreamsInput"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "ListStreamsInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListStreamsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
        ExclusiveStartStreamArn = schema.new({
            id = id.from(_N, "ListStreamsInput", "ExclusiveStartStreamArn"),
            type = "string",
            name = "ExclusiveStartStreamArn",
            target_id = prelude.String.id,
        }),
    },
})

M.Stream = schema.new({
    id = id.from(_N, "Stream"),
    type = "structure",
    members = {
        StreamArn = schema.new({
            id = id.from(_N, "Stream", "StreamArn"),
            type = "string",
            name = "StreamArn",
            target_id = prelude.String.id,
        }),
        TableName = schema.new({
            id = id.from(_N, "Stream", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
        }),
        StreamLabel = schema.new({
            id = id.from(_N, "Stream", "StreamLabel"),
            type = "string",
            name = "StreamLabel",
            target_id = prelude.String.id,
        }),
    },
})

M.ListStreamsOutput = schema.new({
    id = id.from(_N, "ListStreamsOutput"),
    type = "structure",
    members = {
        Streams = schema.new({
            id = id.from(_N, "ListStreamsOutput", "Streams"),
            type = "list",
            name = "Streams",
            target_id = prelude.Document.id,
            list_member = M.Stream,
        }),
        LastEvaluatedStreamArn = schema.new({
            id = id.from(_N, "ListStreamsOutput", "LastEvaluatedStreamArn"),
            type = "string",
            name = "LastEvaluatedStreamArn",
            target_id = prelude.String.id,
        }),
    },
})

M.AttributeValue = schema.new({
    id = id.from(_N, "AttributeValue"),
    type = "union",
    members = {
        S = schema.new({
            id = id.from(_N, "AttributeValue", "S"),
            type = "string",
            name = "S",
            target_id = prelude.String.id,
        }),
        N = schema.new({
            id = id.from(_N, "AttributeValue", "N"),
            type = "string",
            name = "N",
            target_id = prelude.String.id,
        }),
        B = schema.new({
            id = id.from(_N, "AttributeValue", "B"),
            type = "blob",
            name = "B",
            target_id = prelude.Blob.id,
        }),
        SS = schema.new({
            id = id.from(_N, "AttributeValue", "SS"),
            type = "list",
            name = "SS",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NS = schema.new({
            id = id.from(_N, "AttributeValue", "NS"),
            type = "list",
            name = "NS",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        BS = schema.new({
            id = id.from(_N, "AttributeValue", "BS"),
            type = "list",
            name = "BS",
            target_id = prelude.Document.id,
            list_member = prelude.Blob,
        }),
        M = schema.new({
            id = id.from(_N, "AttributeValue", "M"),
            type = "map",
            name = "M",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
        L = schema.new({
            id = id.from(_N, "AttributeValue", "L"),
            type = "list",
            name = "L",
            target_id = prelude.Document.id,
            list_member = M.AttributeValue,
        }),
        NULL = schema.new({
            id = id.from(_N, "AttributeValue", "NULL"),
            type = "boolean",
            name = "NULL",
            target_id = prelude.Boolean.id,
        }),
        BOOL = schema.new({
            id = id.from(_N, "AttributeValue", "BOOL"),
            type = "boolean",
            name = "BOOL",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.StreamRecord = schema.new({
    id = id.from(_N, "StreamRecord"),
    type = "structure",
    members = {
        ApproximateCreationDateTime = schema.new({
            id = id.from(_N, "StreamRecord", "ApproximateCreationDateTime"),
            type = "timestamp",
            name = "ApproximateCreationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        Keys = schema.new({
            id = id.from(_N, "StreamRecord", "Keys"),
            type = "map",
            name = "Keys",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
        NewImage = schema.new({
            id = id.from(_N, "StreamRecord", "NewImage"),
            type = "map",
            name = "NewImage",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
        OldImage = schema.new({
            id = id.from(_N, "StreamRecord", "OldImage"),
            type = "map",
            name = "OldImage",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
        SequenceNumber = schema.new({
            id = id.from(_N, "StreamRecord", "SequenceNumber"),
            type = "string",
            name = "SequenceNumber",
            target_id = prelude.String.id,
        }),
        SizeBytes = schema.new({
            id = id.from(_N, "StreamRecord", "SizeBytes"),
            type = "long",
            name = "SizeBytes",
            target_id = prelude.Long.id,
        }),
        StreamViewType = schema.new({
            id = id.from(_N, "StreamRecord", "StreamViewType"),
            type = "string",
            name = "StreamViewType",
            target_id = prelude.String.id,
        }),
    },
})

M.Record = schema.new({
    id = id.from(_N, "Record"),
    type = "structure",
    members = {
        eventID = schema.new({
            id = id.from(_N, "Record", "eventID"),
            type = "string",
            name = "eventID",
            target_id = prelude.String.id,
        }),
        eventName = schema.new({
            id = id.from(_N, "Record", "eventName"),
            type = "string",
            name = "eventName",
            target_id = prelude.String.id,
        }),
        eventVersion = schema.new({
            id = id.from(_N, "Record", "eventVersion"),
            type = "string",
            name = "eventVersion",
            target_id = prelude.String.id,
        }),
        eventSource = schema.new({
            id = id.from(_N, "Record", "eventSource"),
            type = "string",
            name = "eventSource",
            target_id = prelude.String.id,
        }),
        awsRegion = schema.new({
            id = id.from(_N, "Record", "awsRegion"),
            type = "string",
            name = "awsRegion",
            target_id = prelude.String.id,
        }),
        dynamodb = schema.new({
            id = id.from(_N, "Record", "dynamodb"),
            type = "structure",
            name = "dynamodb",
            target_id = id.from(_N, "StreamRecord"),
            target = M.StreamRecord,
        }),
        userIdentity = schema.new({
            id = id.from(_N, "Record", "userIdentity"),
            type = "structure",
            name = "userIdentity",
            target_id = id.from(_N, "Identity"),
            target = M.Identity,
        }),
    },
})

M.GetRecordsOutput = schema.new({
    id = id.from(_N, "GetRecordsOutput"),
    type = "structure",
    members = {
        Records = schema.new({
            id = id.from(_N, "GetRecordsOutput", "Records"),
            type = "list",
            name = "Records",
            target_id = prelude.Document.id,
            list_member = M.Record,
        }),
        NextShardIterator = schema.new({
            id = id.from(_N, "GetRecordsOutput", "NextShardIterator"),
            type = "string",
            name = "NextShardIterator",
            target_id = prelude.String.id,
        }),
    },
})

return M
