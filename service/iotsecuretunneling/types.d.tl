local record CloseTunnelInput
    tunnelId: string
    delete: boolean
end

local record CloseTunnelOutput
end

local record DescribeTunnelInput
    tunnelId: string
end

local record DescribeTunnelOutput
    tunnel: Tunnel
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {Tag}
end

local record ListTunnelsInput
    thingName: string
    maxResults: number
    nextToken: string
end

local record ListTunnelsOutput
    tunnelSummaries: {TunnelSummary}
    nextToken: string
end

local record OpenTunnelInput
    description: string
    tags: {Tag}
    destinationConfig: DestinationConfig
    timeoutConfig: TimeoutConfig
end

local record OpenTunnelOutput
    tunnelId: string
    tunnelArn: string
    sourceAccessToken: string
    destinationAccessToken: string
end

local record RotateTunnelAccessTokenInput
    tunnelId: string
    clientMode: string
    destinationConfig: DestinationConfig
end

local record RotateTunnelAccessTokenOutput
    tunnelArn: string
    sourceAccessToken: string
    destinationAccessToken: string
end

local record TagResourceInput
    resourceArn: string
    tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record ResourceNotFoundException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local type ClientMode = "SOURCE" | "DESTINATION" | "ALL"

local record M
    CloseTunnelInput: CloseTunnelInput
    CloseTunnelOutput: CloseTunnelOutput
    DescribeTunnelInput: DescribeTunnelInput
    DescribeTunnelOutput: DescribeTunnelOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTunnelsInput: ListTunnelsInput
    ListTunnelsOutput: ListTunnelsOutput
    OpenTunnelInput: OpenTunnelInput
    OpenTunnelOutput: OpenTunnelOutput
    RotateTunnelAccessTokenInput: RotateTunnelAccessTokenInput
    RotateTunnelAccessTokenOutput: RotateTunnelAccessTokenOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
end

return M
