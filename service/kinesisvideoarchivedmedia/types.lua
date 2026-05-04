local M = {}

M.ClientLimitExceededException = {
    type = "structure",
    id = "ClientLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ClipFragmentSelectorType = {
    PRODUCER_TIMESTAMP = "PRODUCER_TIMESTAMP",
    SERVER_TIMESTAMP = "SERVER_TIMESTAMP",
}

M.ClipTimestampRange = {
    type = "structure",
    id = "ClipTimestampRange",
    members = {
        StartTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ClipFragmentSelector = {
    type = "structure",
    id = "ClipFragmentSelector",
    members = {
        FragmentSelectorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimestampRange = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ClipTimestampRange }),
    },
}

M.GetClipInput = {
    type = "structure",
    id = "GetClipInput",
    members = {
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
        ClipFragmentSelector = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ClipFragmentSelector }),
    },
}

M.GetClipOutput = {
    type = "structure",
    id = "GetClipOutput",
    members = {
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        Payload = {
            type = "blob",
            traits = {
                default = "",
                http_payload = true,
            },
        },
    },
}

M.InvalidArgumentException = {
    type = "structure",
    id = "InvalidArgumentException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidCodecPrivateDataException = {
    type = "structure",
    id = "InvalidCodecPrivateDataException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidMediaFrameException = {
    type = "structure",
    id = "InvalidMediaFrameException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MissingCodecPrivateDataException = {
    type = "structure",
    id = "MissingCodecPrivateDataException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoDataRetentionException = {
    type = "structure",
    id = "NoDataRetentionException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NotAuthorizedException = {
    type = "structure",
    id = "NotAuthorizedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedStreamMediaTypeException = {
    type = "structure",
    id = "UnsupportedStreamMediaTypeException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DASHFragmentSelectorType = {
    PRODUCER_TIMESTAMP = "PRODUCER_TIMESTAMP",
    SERVER_TIMESTAMP = "SERVER_TIMESTAMP",
}

M.DASHTimestampRange = {
    type = "structure",
    id = "DASHTimestampRange",
    members = {
        StartTimestamp = {
            type = "timestamp",
        },
        EndTimestamp = {
            type = "timestamp",
        },
    },
}

M.DASHFragmentSelector = {
    type = "structure",
    id = "DASHFragmentSelector",
    members = {
        FragmentSelectorType = {
            type = "string",
        },
        TimestampRange = M.DASHTimestampRange,
    },
}

M.DASHDisplayFragmentNumber = {
    ALWAYS = "ALWAYS",
    NEVER = "NEVER",
}

M.DASHDisplayFragmentTimestamp = {
    ALWAYS = "ALWAYS",
    NEVER = "NEVER",
}

M.DASHPlaybackMode = {
    LIVE = "LIVE",
    LIVE_REPLAY = "LIVE_REPLAY",
    ON_DEMAND = "ON_DEMAND",
}

M.GetDASHStreamingSessionURLInput = {
    type = "structure",
    id = "GetDASHStreamingSessionURLInput",
    members = {
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
        PlaybackMode = {
            type = "string",
        },
        DisplayFragmentTimestamp = {
            type = "string",
        },
        DisplayFragmentNumber = {
            type = "string",
        },
        DASHFragmentSelector = M.DASHFragmentSelector,
        Expires = {
            type = "integer",
        },
        MaxManifestFragmentResults = {
            type = "long",
        },
    },
}

M.GetDASHStreamingSessionURLOutput = {
    type = "structure",
    id = "GetDASHStreamingSessionURLOutput",
    members = {
        DASHStreamingSessionURL = {
            type = "string",
        },
    },
}

M.ContainerFormat = {
    FRAGMENTED_MP4 = "FRAGMENTED_MP4",
    MPEG_TS = "MPEG_TS",
}

M.HLSDiscontinuityMode = {
    ALWAYS = "ALWAYS",
    NEVER = "NEVER",
    ON_DISCONTINUITY = "ON_DISCONTINUITY",
}

M.HLSDisplayFragmentTimestamp = {
    ALWAYS = "ALWAYS",
    NEVER = "NEVER",
}

M.HLSFragmentSelectorType = {
    PRODUCER_TIMESTAMP = "PRODUCER_TIMESTAMP",
    SERVER_TIMESTAMP = "SERVER_TIMESTAMP",
}

M.HLSTimestampRange = {
    type = "structure",
    id = "HLSTimestampRange",
    members = {
        StartTimestamp = {
            type = "timestamp",
        },
        EndTimestamp = {
            type = "timestamp",
        },
    },
}

M.HLSFragmentSelector = {
    type = "structure",
    id = "HLSFragmentSelector",
    members = {
        FragmentSelectorType = {
            type = "string",
        },
        TimestampRange = M.HLSTimestampRange,
    },
}

M.HLSPlaybackMode = {
    LIVE = "LIVE",
    LIVE_REPLAY = "LIVE_REPLAY",
    ON_DEMAND = "ON_DEMAND",
}

M.GetHLSStreamingSessionURLInput = {
    type = "structure",
    id = "GetHLSStreamingSessionURLInput",
    members = {
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
        PlaybackMode = {
            type = "string",
        },
        HLSFragmentSelector = M.HLSFragmentSelector,
        ContainerFormat = {
            type = "string",
        },
        DiscontinuityMode = {
            type = "string",
        },
        DisplayFragmentTimestamp = {
            type = "string",
        },
        Expires = {
            type = "integer",
        },
        MaxMediaPlaylistFragmentResults = {
            type = "long",
        },
    },
}

M.GetHLSStreamingSessionURLOutput = {
    type = "structure",
    id = "GetHLSStreamingSessionURLOutput",
    members = {
        HLSStreamingSessionURL = {
            type = "string",
        },
    },
}

M.Format = {
    JPEG = "JPEG",
    PNG = "PNG",
}

M.FormatConfigKey = {
    JPEGQuality = "JPEGQuality",
}

M.ImageSelectorType = {
    PRODUCER_TIMESTAMP = "PRODUCER_TIMESTAMP",
    SERVER_TIMESTAMP = "SERVER_TIMESTAMP",
}

M.GetImagesInput = {
    type = "structure",
    id = "GetImagesInput",
    members = {
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
        ImageSelectorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        SamplingInterval = {
            type = "integer",
        },
        Format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FormatConfig = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        WidthPixels = {
            type = "integer",
        },
        HeightPixels = {
            type = "integer",
        },
        MaxResults = {
            type = "long",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ImageError = {
    NO_MEDIA = "NO_MEDIA",
    MEDIA_ERROR = "MEDIA_ERROR",
}

M.Image = {
    type = "structure",
    id = "Image",
    members = {
        TimeStamp = {
            type = "timestamp",
        },
        Error = {
            type = "string",
        },
        ImageContent = {
            type = "string",
        },
    },
}

M.GetImagesOutput = {
    type = "structure",
    id = "GetImagesOutput",
    members = {
        Images = {
            type = "list",
            member = M.Image,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetMediaForFragmentListInput = {
    type = "structure",
    id = "GetMediaForFragmentListInput",
    members = {
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
        Fragments = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetMediaForFragmentListOutput = {
    type = "structure",
    id = "GetMediaForFragmentListOutput",
    members = {
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        Payload = {
            type = "blob",
            traits = {
                default = "",
                http_payload = true,
            },
        },
    },
}

M.FragmentSelectorType = {
    PRODUCER_TIMESTAMP = "PRODUCER_TIMESTAMP",
    SERVER_TIMESTAMP = "SERVER_TIMESTAMP",
}

M.TimestampRange = {
    type = "structure",
    id = "TimestampRange",
    members = {
        StartTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.FragmentSelector = {
    type = "structure",
    id = "FragmentSelector",
    members = {
        FragmentSelectorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimestampRange = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TimestampRange }),
    },
}

M.ListFragmentsInput = {
    type = "structure",
    id = "ListFragmentsInput",
    members = {
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
        MaxResults = {
            type = "long",
        },
        NextToken = {
            type = "string",
        },
        FragmentSelector = M.FragmentSelector,
    },
}

M.Fragment = {
    type = "structure",
    id = "Fragment",
    members = {
        FragmentNumber = {
            type = "string",
        },
        FragmentSizeInBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        ProducerTimestamp = {
            type = "timestamp",
        },
        ServerTimestamp = {
            type = "timestamp",
        },
        FragmentLengthInMilliseconds = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.ListFragmentsOutput = {
    type = "structure",
    id = "ListFragmentsOutput",
    members = {
        Fragments = {
            type = "list",
            member = M.Fragment,
        },
        NextToken = {
            type = "string",
        },
    },
}

return M
