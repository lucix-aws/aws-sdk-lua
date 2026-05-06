local record CompleteSnapshotInput
    SnapshotId: string
    ChangedBlocksCount: number
    Checksum: string
    ChecksumAlgorithm: string
    ChecksumAggregationMethod: string
end

local record CompleteSnapshotOutput
    Status: string
end

local record GetSnapshotBlockInput
    SnapshotId: string
    BlockIndex: number
    BlockToken: string
end

local record GetSnapshotBlockOutput
    DataLength: number
    BlockData: function(): string, string
    Checksum: string
    ChecksumAlgorithm: string
end

local record ListChangedBlocksInput
    FirstSnapshotId: string
    SecondSnapshotId: string
    NextToken: string
    MaxResults: number
    StartingBlockIndex: number
end

local record ListChangedBlocksOutput
    ChangedBlocks: {ChangedBlock}
    ExpiryTime: number
    VolumeSize: number
    BlockSize: number
    NextToken: string
end

local record ListSnapshotBlocksInput
    SnapshotId: string
    NextToken: string
    MaxResults: number
    StartingBlockIndex: number
end

local record ListSnapshotBlocksOutput
    Blocks: {Block}
    ExpiryTime: number
    VolumeSize: number
    BlockSize: number
    NextToken: string
end

local record PutSnapshotBlockInput
    SnapshotId: string
    BlockIndex: number
    BlockData: function(): string, string
    DataLength: number
    Progress: number
    Checksum: string
    ChecksumAlgorithm: string
end

local record PutSnapshotBlockOutput
    Checksum: string
    ChecksumAlgorithm: string
end

local record StartSnapshotInput
    VolumeSize: number
    ParentSnapshotId: string
    Tags: {Tag}
    Description: string
    ClientToken: string
    Encrypted: boolean
    KmsKeyArn: string
    Timeout: number
end

local record StartSnapshotOutput
    Description: string
    SnapshotId: string
    OwnerId: string
    Status: string
    StartTime: number
    VolumeSize: number
    BlockSize: number
    Tags: {Tag}
    ParentSnapshotId: string
    KmsKeyArn: string
    SseType: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record RequestThrottledException
    Message: string
    Reason: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record RequestThrottledException
    Message: string
    Reason: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record RequestThrottledException
    Message: string
    Reason: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record RequestThrottledException
    Message: string
    Reason: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record RequestThrottledException
    Message: string
    Reason: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConcurrentLimitExceededException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record RequestThrottledException
    Message: string
    Reason: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local type SSEType = "sse-ebs" | "sse-kms" | "none"

local type ChecksumAggregationMethod = "LINEAR"

local type Status = "completed" | "pending" | "error"

local type ChecksumAlgorithm = "SHA256"

local record M
    CompleteSnapshotInput: CompleteSnapshotInput
    CompleteSnapshotOutput: CompleteSnapshotOutput
    GetSnapshotBlockInput: GetSnapshotBlockInput
    GetSnapshotBlockOutput: GetSnapshotBlockOutput
    ListChangedBlocksInput: ListChangedBlocksInput
    ListChangedBlocksOutput: ListChangedBlocksOutput
    ListSnapshotBlocksInput: ListSnapshotBlocksInput
    ListSnapshotBlocksOutput: ListSnapshotBlocksOutput
    PutSnapshotBlockInput: PutSnapshotBlockInput
    PutSnapshotBlockOutput: PutSnapshotBlockOutput
    StartSnapshotInput: StartSnapshotInput
    StartSnapshotOutput: StartSnapshotOutput
end

return M
