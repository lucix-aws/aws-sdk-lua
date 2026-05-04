local M = {}

M.ClientLimitExceededException = {
    type = "structure",
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
    members = {
        FragmentSelectorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimestampRange = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetClipInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
        ClipFragmentSelector = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetClipOutput = {
    type = "structure",
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
                http_payload = true,
            },
        },
    },
}

M.InvalidArgumentException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidCodecPrivateDataException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidMediaFrameException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MissingCodecPrivateDataException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoDataRetentionException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NotAuthorizedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedStreamMediaTypeException = {
    type = "structure",
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
    members = {
        FragmentSelectorType = {
            type = "string",
        },
        TimestampRange = {
            type = "structure",
        },
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
        DASHFragmentSelector = {
            type = "structure",
        },
        Expires = {
            type = "number",
        },
        MaxManifestFragmentResults = {
            type = "number",
        },
    },
}

M.GetDASHStreamingSessionURLOutput = {
    type = "structure",
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
    members = {
        FragmentSelectorType = {
            type = "string",
        },
        TimestampRange = {
            type = "structure",
        },
    },
}

M.HLSPlaybackMode = {
    LIVE = "LIVE",
    LIVE_REPLAY = "LIVE_REPLAY",
    ON_DEMAND = "ON_DEMAND",
}

M.GetHLSStreamingSessionURLInput = {
    type = "structure",
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
        HLSFragmentSelector = {
            type = "structure",
        },
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
            type = "number",
        },
        MaxMediaPlaylistFragmentResults = {
            type = "number",
        },
    },
}

M.GetHLSStreamingSessionURLOutput = {
    type = "structure",
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
            type = "number",
        },
        Format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FormatConfig = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        WidthPixels = {
            type = "number",
        },
        HeightPixels = {
            type = "number",
        },
        MaxResults = {
            type = "number",
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
    members = {
        Images = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetMediaForFragmentListInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
        Fragments = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetMediaForFragmentListOutput = {
    type = "structure",
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
    members = {
        FragmentSelectorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimestampRange = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListFragmentsInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        FragmentSelector = {
            type = "structure",
        },
    },
}

M.Fragment = {
    type = "structure",
    members = {
        FragmentNumber = {
            type = "string",
        },
        FragmentSizeInBytes = {
            type = "number",
        },
        ProducerTimestamp = {
            type = "timestamp",
        },
        ServerTimestamp = {
            type = "timestamp",
        },
        FragmentLengthInMilliseconds = {
            type = "number",
        },
    },
}

M.ListFragmentsOutput = {
    type = "structure",
    members = {
        Fragments = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

return M
