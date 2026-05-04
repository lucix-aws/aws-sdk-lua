local record GetRecordsInput
    shardIterator: string
    maxResults: number
end

local record GetRecordsOutput
    changeRecords: {Record}
    nextShardIterator: string
end

local record GetShardIteratorInput
    streamArn: string
    shardId: string
    shardIteratorType: string
    sequenceNumber: string
end

local record GetShardIteratorOutput
    shardIterator: string
end

local record GetStreamInput
    streamArn: string
    maxResults: number
    shardFilter: ShardFilter
    nextToken: string
end

local record GetStreamOutput
    streamArn: string
    streamLabel: string
    streamStatus: string
    streamViewType: string
    creationRequestDateTime: number
    keyspaceName: string
    tableName: string
    shards: {Shard}
    nextToken: string
end

local record ListStreamsInput
    keyspaceName: string
    tableName: string
    maxResults: number
    nextToken: string
end

local record ListStreamsOutput
    streams: {Stream}
    nextToken: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    errorCode: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    errorCode: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    errorCode: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    errorCode: string
end

local type StreamViewType = "NEW_IMAGE" | "OLD_IMAGE" | "NEW_AND_OLD_IMAGES" | "KEYS_ONLY"

local type StreamStatus = "ENABLING" | "ENABLED" | "DISABLING" | "DISABLED"

local type ShardIteratorType = "TRIM_HORIZON" | "LATEST" | "AT_SEQUENCE_NUMBER" | "AFTER_SEQUENCE_NUMBER"

local record M
    GetRecordsInput: GetRecordsInput
    GetRecordsOutput: GetRecordsOutput
    GetShardIteratorInput: GetShardIteratorInput
    GetShardIteratorOutput: GetShardIteratorOutput
    GetStreamInput: GetStreamInput
    GetStreamOutput: GetStreamOutput
    ListStreamsInput: ListStreamsInput
    ListStreamsOutput: ListStreamsOutput
end

return M
