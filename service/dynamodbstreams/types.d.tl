local record DescribeStreamInput
    StreamArn: string
    Limit: number
    ExclusiveStartShardId: string
    ShardFilter: ShardFilter
end

local record DescribeStreamOutput
    StreamDescription: StreamDescription
end

local record GetRecordsInput
    ShardIterator: string
    Limit: number
end

local record GetRecordsOutput
    Records: {Record}
    NextShardIterator: string
end

local record GetShardIteratorInput
    StreamArn: string
    ShardId: string
    ShardIteratorType: string
    SequenceNumber: string
end

local record GetShardIteratorOutput
    ShardIterator: string
end

local record ListStreamsInput
    TableName: string
    Limit: number
    ExclusiveStartStreamArn: string
end

local record ListStreamsOutput
    Streams: {Stream}
    LastEvaluatedStreamArn: string
end

local record InternalServerError
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ExpiredIteratorException
    message: string
end

local record InternalServerError
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TrimmedDataAccessException
    message: string
end

local record InternalServerError
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TrimmedDataAccessException
    message: string
end

local record InternalServerError
    message: string
end

local record ResourceNotFoundException
    message: string
end

local type ShardIteratorType = "TRIM_HORIZON" | "LATEST" | "AT_SEQUENCE_NUMBER" | "AFTER_SEQUENCE_NUMBER"

local record M
    DescribeStreamInput: DescribeStreamInput
    DescribeStreamOutput: DescribeStreamOutput
    GetRecordsInput: GetRecordsInput
    GetRecordsOutput: GetRecordsOutput
    GetShardIteratorInput: GetShardIteratorInput
    GetShardIteratorOutput: GetShardIteratorOutput
    ListStreamsInput: ListStreamsInput
    ListStreamsOutput: ListStreamsOutput
end

return M
