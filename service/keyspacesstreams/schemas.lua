local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.keyspacesstreams"

local M = {}

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
        }),
    },
})

M.GetRecordsInput = schema.new({
    id = id.from(_N, "GetRecordsInput"),
    type = "structure",
    members = {
        shardIterator = schema.new({
            id = id.from(_N, "GetRecordsInput", "shardIterator"),
            type = "string",
            name = "shardIterator",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "GetRecordsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.KeyspacesMetadata = schema.new({
    id = id.from(_N, "KeyspacesMetadata"),
    type = "structure",
    members = {
        expirationTime = schema.new({
            id = id.from(_N, "KeyspacesMetadata", "expirationTime"),
            type = "string",
            name = "expirationTime",
            target_id = prelude.String.id,
        }),
        writeTime = schema.new({
            id = id.from(_N, "KeyspacesMetadata", "writeTime"),
            type = "string",
            name = "writeTime",
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
        message = schema.new({
            id = id.from(_N, "InternalServerException", "message"),
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

M.ThrottlingException = schema.new({
    id = id.from(_N, "ThrottlingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ThrottlingException", "message"),
            type = "string",
            name = "message",
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
        message = schema.new({
            id = id.from(_N, "ValidationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        errorCode = schema.new({
            id = id.from(_N, "ValidationException", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
    },
})

M.GetShardIteratorInput = schema.new({
    id = id.from(_N, "GetShardIteratorInput"),
    type = "structure",
    members = {
        streamArn = schema.new({
            id = id.from(_N, "GetShardIteratorInput", "streamArn"),
            type = "string",
            name = "streamArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        shardId = schema.new({
            id = id.from(_N, "GetShardIteratorInput", "shardId"),
            type = "string",
            name = "shardId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        shardIteratorType = schema.new({
            id = id.from(_N, "GetShardIteratorInput", "shardIteratorType"),
            type = "string",
            name = "shardIteratorType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sequenceNumber = schema.new({
            id = id.from(_N, "GetShardIteratorInput", "sequenceNumber"),
            type = "string",
            name = "sequenceNumber",
            target_id = prelude.String.id,
        }),
    },
})

M.GetShardIteratorOutput = schema.new({
    id = id.from(_N, "GetShardIteratorOutput"),
    type = "structure",
    members = {
        shardIterator = schema.new({
            id = id.from(_N, "GetShardIteratorOutput", "shardIterator"),
            type = "string",
            name = "shardIterator",
            target_id = prelude.String.id,
        }),
    },
})

M.ShardFilter = schema.new({
    id = id.from(_N, "ShardFilter"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "ShardFilter", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        shardId = schema.new({
            id = id.from(_N, "ShardFilter", "shardId"),
            type = "string",
            name = "shardId",
            target_id = prelude.String.id,
        }),
    },
})

M.GetStreamInput = schema.new({
    id = id.from(_N, "GetStreamInput"),
    type = "structure",
    members = {
        streamArn = schema.new({
            id = id.from(_N, "GetStreamInput", "streamArn"),
            type = "string",
            name = "streamArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "GetStreamInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        shardFilter = schema.new({
            id = id.from(_N, "GetStreamInput", "shardFilter"),
            type = "structure",
            name = "shardFilter",
            target_id = id.from(_N, "ShardFilter"),
            target = M.ShardFilter,
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetStreamInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SequenceNumberRange = schema.new({
    id = id.from(_N, "SequenceNumberRange"),
    type = "structure",
    members = {
        startingSequenceNumber = schema.new({
            id = id.from(_N, "SequenceNumberRange", "startingSequenceNumber"),
            type = "string",
            name = "startingSequenceNumber",
            target_id = prelude.String.id,
        }),
        endingSequenceNumber = schema.new({
            id = id.from(_N, "SequenceNumberRange", "endingSequenceNumber"),
            type = "string",
            name = "endingSequenceNumber",
            target_id = prelude.String.id,
        }),
    },
})

M.Shard = schema.new({
    id = id.from(_N, "Shard"),
    type = "structure",
    members = {
        shardId = schema.new({
            id = id.from(_N, "Shard", "shardId"),
            type = "string",
            name = "shardId",
            target_id = prelude.String.id,
        }),
        sequenceNumberRange = schema.new({
            id = id.from(_N, "Shard", "sequenceNumberRange"),
            type = "structure",
            name = "sequenceNumberRange",
            target_id = id.from(_N, "SequenceNumberRange"),
            target = M.SequenceNumberRange,
        }),
        parentShardIds = schema.new({
            id = id.from(_N, "Shard", "parentShardIds"),
            type = "list",
            name = "parentShardIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.GetStreamOutput = schema.new({
    id = id.from(_N, "GetStreamOutput"),
    type = "structure",
    members = {
        streamArn = schema.new({
            id = id.from(_N, "GetStreamOutput", "streamArn"),
            type = "string",
            name = "streamArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        streamLabel = schema.new({
            id = id.from(_N, "GetStreamOutput", "streamLabel"),
            type = "string",
            name = "streamLabel",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        streamStatus = schema.new({
            id = id.from(_N, "GetStreamOutput", "streamStatus"),
            type = "string",
            name = "streamStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        streamViewType = schema.new({
            id = id.from(_N, "GetStreamOutput", "streamViewType"),
            type = "string",
            name = "streamViewType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationRequestDateTime = schema.new({
            id = id.from(_N, "GetStreamOutput", "creationRequestDateTime"),
            type = "timestamp",
            name = "creationRequestDateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        keyspaceName = schema.new({
            id = id.from(_N, "GetStreamOutput", "keyspaceName"),
            type = "string",
            name = "keyspaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tableName = schema.new({
            id = id.from(_N, "GetStreamOutput", "tableName"),
            type = "string",
            name = "tableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        shards = schema.new({
            id = id.from(_N, "GetStreamOutput", "shards"),
            type = "list",
            name = "shards",
            target_id = prelude.Document.id,
            list_member = M.Shard,
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetStreamOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListStreamsInput = schema.new({
    id = id.from(_N, "ListStreamsInput"),
    type = "structure",
    members = {
        keyspaceName = schema.new({
            id = id.from(_N, "ListStreamsInput", "keyspaceName"),
            type = "string",
            name = "keyspaceName",
            target_id = prelude.String.id,
        }),
        tableName = schema.new({
            id = id.from(_N, "ListStreamsInput", "tableName"),
            type = "string",
            name = "tableName",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListStreamsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListStreamsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.Stream = schema.new({
    id = id.from(_N, "Stream"),
    type = "structure",
    members = {
        streamArn = schema.new({
            id = id.from(_N, "Stream", "streamArn"),
            type = "string",
            name = "streamArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        keyspaceName = schema.new({
            id = id.from(_N, "Stream", "keyspaceName"),
            type = "string",
            name = "keyspaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tableName = schema.new({
            id = id.from(_N, "Stream", "tableName"),
            type = "string",
            name = "tableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        streamLabel = schema.new({
            id = id.from(_N, "Stream", "streamLabel"),
            type = "string",
            name = "streamLabel",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListStreamsOutput = schema.new({
    id = id.from(_N, "ListStreamsOutput"),
    type = "structure",
    members = {
        streams = schema.new({
            id = id.from(_N, "ListStreamsOutput", "streams"),
            type = "list",
            name = "streams",
            target_id = prelude.Document.id,
            list_member = M.Stream,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListStreamsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.KeyspacesCellValue = schema.new({
    id = id.from(_N, "KeyspacesCellValue"),
    type = "union",
    members = {
        asciiT = schema.new({
            id = id.from(_N, "KeyspacesCellValue", "asciiT"),
            type = "string",
            name = "asciiT",
            target_id = prelude.String.id,
        }),
        bigintT = schema.new({
            id = id.from(_N, "KeyspacesCellValue", "bigintT"),
            type = "string",
            name = "bigintT",
            target_id = prelude.String.id,
        }),
        blobT = schema.new({
            id = id.from(_N, "KeyspacesCellValue", "blobT"),
            type = "blob",
            name = "blobT",
            target_id = prelude.Blob.id,
        }),
        boolT = schema.new({
            id = id.from(_N, "KeyspacesCellValue", "boolT"),
            type = "boolean",
            name = "boolT",
            target_id = prelude.Boolean.id,
        }),
        counterT = schema.new({
            id = id.from(_N, "KeyspacesCellValue", "counterT"),
            type = "string",
            name = "counterT",
            target_id = prelude.String.id,
        }),
        dateT = schema.new({
            id = id.from(_N, "KeyspacesCellValue", "dateT"),
            type = "string",
            name = "dateT",
            target_id = prelude.String.id,
        }),
        decimalT = schema.new({
            id = id.from(_N, "KeyspacesCellValue", "decimalT"),
            type = "string",
            name = "decimalT",
            target_id = prelude.String.id,
        }),
        doubleT = schema.new({
            id = id.from(_N, "KeyspacesCellValue", "doubleT"),
            type = "string",
            name = "doubleT",
            target_id = prelude.String.id,
        }),
        durationT = schema.new({
            id = id.from(_N, "KeyspacesCellValue", "durationT"),
            type = "string",
            name = "durationT",
            target_id = prelude.String.id,
        }),
        floatT = schema.new({
            id = id.from(_N, "KeyspacesCellValue", "floatT"),
            type = "string",
            name = "floatT",
            target_id = prelude.String.id,
        }),
        inetT = schema.new({
            id = id.from(_N, "KeyspacesCellValue", "inetT"),
            type = "string",
            name = "inetT",
            target_id = prelude.String.id,
        }),
        intT = schema.new({
            id = id.from(_N, "KeyspacesCellValue", "intT"),
            type = "string",
            name = "intT",
            target_id = prelude.String.id,
        }),
        listT = schema.new({
            id = id.from(_N, "KeyspacesCellValue", "listT"),
            type = "list",
            name = "listT",
            target_id = prelude.Document.id,
            list_member = M.KeyspacesCell,
        }),
        mapT = schema.new({
            id = id.from(_N, "KeyspacesCellValue", "mapT"),
            type = "list",
            name = "mapT",
            target_id = prelude.Document.id,
            list_member = M.KeyspacesCellMapDefinition,
        }),
        setT = schema.new({
            id = id.from(_N, "KeyspacesCellValue", "setT"),
            type = "list",
            name = "setT",
            target_id = prelude.Document.id,
            list_member = M.KeyspacesCell,
        }),
        smallintT = schema.new({
            id = id.from(_N, "KeyspacesCellValue", "smallintT"),
            type = "string",
            name = "smallintT",
            target_id = prelude.String.id,
        }),
        textT = schema.new({
            id = id.from(_N, "KeyspacesCellValue", "textT"),
            type = "string",
            name = "textT",
            target_id = prelude.String.id,
        }),
        timeT = schema.new({
            id = id.from(_N, "KeyspacesCellValue", "timeT"),
            type = "string",
            name = "timeT",
            target_id = prelude.String.id,
        }),
        timestampT = schema.new({
            id = id.from(_N, "KeyspacesCellValue", "timestampT"),
            type = "string",
            name = "timestampT",
            target_id = prelude.String.id,
        }),
        timeuuidT = schema.new({
            id = id.from(_N, "KeyspacesCellValue", "timeuuidT"),
            type = "string",
            name = "timeuuidT",
            target_id = prelude.String.id,
        }),
        tinyintT = schema.new({
            id = id.from(_N, "KeyspacesCellValue", "tinyintT"),
            type = "string",
            name = "tinyintT",
            target_id = prelude.String.id,
        }),
        tupleT = schema.new({
            id = id.from(_N, "KeyspacesCellValue", "tupleT"),
            type = "list",
            name = "tupleT",
            target_id = prelude.Document.id,
            list_member = M.KeyspacesCell,
        }),
        uuidT = schema.new({
            id = id.from(_N, "KeyspacesCellValue", "uuidT"),
            type = "string",
            name = "uuidT",
            target_id = prelude.String.id,
        }),
        varcharT = schema.new({
            id = id.from(_N, "KeyspacesCellValue", "varcharT"),
            type = "string",
            name = "varcharT",
            target_id = prelude.String.id,
        }),
        varintT = schema.new({
            id = id.from(_N, "KeyspacesCellValue", "varintT"),
            type = "string",
            name = "varintT",
            target_id = prelude.String.id,
        }),
        udtT = schema.new({
            id = id.from(_N, "KeyspacesCellValue", "udtT"),
            type = "map",
            name = "udtT",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.KeyspacesCell,
        }),
    },
})

M.KeyspacesCell = schema.new({
    id = id.from(_N, "KeyspacesCell"),
    type = "structure",
    members = {
        value = schema.new({
            id = id.from(_N, "KeyspacesCell", "value"),
            type = "union",
            name = "value",
            target_id = id.from(_N, "KeyspacesCellValue"),
            target = M.KeyspacesCellValue,
        }),
        metadata = schema.new({
            id = id.from(_N, "KeyspacesCell", "metadata"),
            type = "structure",
            name = "metadata",
            target_id = id.from(_N, "KeyspacesMetadata"),
            target = M.KeyspacesMetadata,
        }),
    },
})

M.KeyspacesCellMapDefinition = schema.new({
    id = id.from(_N, "KeyspacesCellMapDefinition"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "KeyspacesCellMapDefinition", "key"),
            type = "union",
            name = "key",
            target_id = id.from(_N, "KeyspacesCellValue"),
            target = M.KeyspacesCellValue,
        }),
        value = schema.new({
            id = id.from(_N, "KeyspacesCellMapDefinition", "value"),
            type = "union",
            name = "value",
            target_id = id.from(_N, "KeyspacesCellValue"),
            target = M.KeyspacesCellValue,
        }),
        metadata = schema.new({
            id = id.from(_N, "KeyspacesCellMapDefinition", "metadata"),
            type = "structure",
            name = "metadata",
            target_id = id.from(_N, "KeyspacesMetadata"),
            target = M.KeyspacesMetadata,
        }),
    },
})

M.KeyspacesRow = schema.new({
    id = id.from(_N, "KeyspacesRow"),
    type = "structure",
    members = {
        valueCells = schema.new({
            id = id.from(_N, "KeyspacesRow", "valueCells"),
            type = "map",
            name = "valueCells",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.KeyspacesCell,
        }),
        staticCells = schema.new({
            id = id.from(_N, "KeyspacesRow", "staticCells"),
            type = "map",
            name = "staticCells",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.KeyspacesCell,
        }),
        rowMetadata = schema.new({
            id = id.from(_N, "KeyspacesRow", "rowMetadata"),
            type = "structure",
            name = "rowMetadata",
            target_id = id.from(_N, "KeyspacesMetadata"),
            target = M.KeyspacesMetadata,
        }),
    },
})

M.Record = schema.new({
    id = id.from(_N, "Record"),
    type = "structure",
    members = {
        eventVersion = schema.new({
            id = id.from(_N, "Record", "eventVersion"),
            type = "string",
            name = "eventVersion",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "Record", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        origin = schema.new({
            id = id.from(_N, "Record", "origin"),
            type = "string",
            name = "origin",
            target_id = prelude.String.id,
        }),
        partitionKeys = schema.new({
            id = id.from(_N, "Record", "partitionKeys"),
            type = "map",
            name = "partitionKeys",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.KeyspacesCellValue,
        }),
        clusteringKeys = schema.new({
            id = id.from(_N, "Record", "clusteringKeys"),
            type = "map",
            name = "clusteringKeys",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.KeyspacesCellValue,
        }),
        newImage = schema.new({
            id = id.from(_N, "Record", "newImage"),
            type = "structure",
            name = "newImage",
            target_id = id.from(_N, "KeyspacesRow"),
            target = M.KeyspacesRow,
        }),
        oldImage = schema.new({
            id = id.from(_N, "Record", "oldImage"),
            type = "structure",
            name = "oldImage",
            target_id = id.from(_N, "KeyspacesRow"),
            target = M.KeyspacesRow,
        }),
        sequenceNumber = schema.new({
            id = id.from(_N, "Record", "sequenceNumber"),
            type = "string",
            name = "sequenceNumber",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRecordsOutput = schema.new({
    id = id.from(_N, "GetRecordsOutput"),
    type = "structure",
    members = {
        changeRecords = schema.new({
            id = id.from(_N, "GetRecordsOutput", "changeRecords"),
            type = "list",
            name = "changeRecords",
            target_id = prelude.Document.id,
            list_member = M.Record,
        }),
        nextShardIterator = schema.new({
            id = id.from(_N, "GetRecordsOutput", "nextShardIterator"),
            type = "string",
            name = "nextShardIterator",
            target_id = prelude.String.id,
        }),
    },
})

return M
