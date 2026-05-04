local record GetClipInput
    StreamName: string
    StreamARN: string
    ClipFragmentSelector: ClipFragmentSelector
end

local record GetClipOutput
    ContentType: string
    Payload: string
end

local record GetDASHStreamingSessionURLInput
    StreamName: string
    StreamARN: string
    PlaybackMode: string
    DisplayFragmentTimestamp: string
    DisplayFragmentNumber: string
    DASHFragmentSelector: DASHFragmentSelector
    Expires: number
    MaxManifestFragmentResults: number
end

local record GetDASHStreamingSessionURLOutput
    DASHStreamingSessionURL: string
end

local record GetHLSStreamingSessionURLInput
    StreamName: string
    StreamARN: string
    PlaybackMode: string
    HLSFragmentSelector: HLSFragmentSelector
    ContainerFormat: string
    DiscontinuityMode: string
    DisplayFragmentTimestamp: string
    Expires: number
    MaxMediaPlaylistFragmentResults: number
end

local record GetHLSStreamingSessionURLOutput
    HLSStreamingSessionURL: string
end

local record GetImagesInput
    StreamName: string
    StreamARN: string
    ImageSelectorType: string
    StartTimestamp: number
    EndTimestamp: number
    SamplingInterval: number
    Format: string
    FormatConfig: {string : string}
    WidthPixels: number
    HeightPixels: number
    MaxResults: number
    NextToken: string
end

local record GetImagesOutput
    Images: {Image}
    NextToken: string
end

local record GetMediaForFragmentListInput
    StreamName: string
    StreamARN: string
    Fragments: {string}
end

local record GetMediaForFragmentListOutput
    ContentType: string
    Payload: string
end

local record ListFragmentsInput
    StreamName: string
    StreamARN: string
    MaxResults: number
    NextToken: string
    FragmentSelector: FragmentSelector
end

local record ListFragmentsOutput
    Fragments: {Fragment}
    NextToken: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidCodecPrivateDataException
    Message: string
end

local record InvalidMediaFrameException
    Message: string
end

local record MissingCodecPrivateDataException
    Message: string
end

local record NoDataRetentionException
    Message: string
end

local record NotAuthorizedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record UnsupportedStreamMediaTypeException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidCodecPrivateDataException
    Message: string
end

local record MissingCodecPrivateDataException
    Message: string
end

local record NoDataRetentionException
    Message: string
end

local record NotAuthorizedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record UnsupportedStreamMediaTypeException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidCodecPrivateDataException
    Message: string
end

local record MissingCodecPrivateDataException
    Message: string
end

local record NoDataRetentionException
    Message: string
end

local record NotAuthorizedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record UnsupportedStreamMediaTypeException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record NoDataRetentionException
    Message: string
end

local record NotAuthorizedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record NotAuthorizedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record NotAuthorizedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local type Format = "JPEG" | "PNG"

local type HLSPlaybackMode = "LIVE" | "LIVE_REPLAY" | "ON_DEMAND"

local type DASHPlaybackMode = "LIVE" | "LIVE_REPLAY" | "ON_DEMAND"

local type HLSDiscontinuityMode = "ALWAYS" | "NEVER" | "ON_DISCONTINUITY"

local type HLSDisplayFragmentTimestamp = "ALWAYS" | "NEVER"

local type DASHDisplayFragmentTimestamp = "ALWAYS" | "NEVER"

local type DASHDisplayFragmentNumber = "ALWAYS" | "NEVER"

local type ImageSelectorType = "PRODUCER_TIMESTAMP" | "SERVER_TIMESTAMP"

local type ContainerFormat = "FRAGMENTED_MP4" | "MPEG_TS"

local record M
    GetClipInput: GetClipInput
    GetClipOutput: GetClipOutput
    GetDASHStreamingSessionURLInput: GetDASHStreamingSessionURLInput
    GetDASHStreamingSessionURLOutput: GetDASHStreamingSessionURLOutput
    GetHLSStreamingSessionURLInput: GetHLSStreamingSessionURLInput
    GetHLSStreamingSessionURLOutput: GetHLSStreamingSessionURLOutput
    GetImagesInput: GetImagesInput
    GetImagesOutput: GetImagesOutput
    GetMediaForFragmentListInput: GetMediaForFragmentListInput
    GetMediaForFragmentListOutput: GetMediaForFragmentListOutput
    ListFragmentsInput: ListFragmentsInput
    ListFragmentsOutput: ListFragmentsOutput
end

return M
