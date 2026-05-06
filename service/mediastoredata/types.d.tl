local record DeleteObjectInput
    Path: string
end

local record DeleteObjectOutput
end

local record DescribeObjectInput
    Path: string
end

local record DescribeObjectOutput
    ETag: string
    ContentType: string
    ContentLength: number
    CacheControl: string
    LastModified: number
end

local record GetObjectInput
    Path: string
    Range: string
end

local record GetObjectOutput
    Body: function(): string, string
    CacheControl: string
    ContentRange: string
    ContentLength: number
    ContentType: string
    ETag: string
    LastModified: number
    StatusCode: number
end

local record ListItemsInput
    Path: string
    MaxResults: number
    NextToken: string
end

local record ListItemsOutput
    Items: {Item}
    NextToken: string
end

local record PutObjectInput
    Body: function(): string, string
    Path: string
    ContentType: string
    CacheControl: string
    StorageClass: string
    UploadAvailability: string
end

local record PutObjectOutput
    ContentSHA256: string
    ETag: string
    StorageClass: string
end

local record ContainerNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record ObjectNotFoundException
    Message: string
end

local record ContainerNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record ObjectNotFoundException
    Message: string
end

local record ContainerNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record ObjectNotFoundException
    Message: string
end

local record RequestedRangeNotSatisfiableException
    Message: string
end

local record ContainerNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local record ContainerNotFoundException
    Message: string
end

local record InternalServerError
    Message: string
end

local type StorageClass = "TEMPORAL"

local type UploadAvailability = "STANDARD" | "STREAMING"

local record M
    DeleteObjectInput: DeleteObjectInput
    DeleteObjectOutput: DeleteObjectOutput
    DescribeObjectInput: DescribeObjectInput
    DescribeObjectOutput: DescribeObjectOutput
    GetObjectInput: GetObjectInput
    GetObjectOutput: GetObjectOutput
    ListItemsInput: ListItemsInput
    ListItemsOutput: ListItemsOutput
    PutObjectInput: PutObjectInput
    PutObjectOutput: PutObjectOutput
end

return M
