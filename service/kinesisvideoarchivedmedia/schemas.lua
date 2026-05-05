local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.kinesisvideoarchivedmedia"

local M = {}

M.FormatConfig = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.Images = schema.new({ type = "list", list_member = M.Image })

M.FragmentNumberList = schema.new({ type = "list", list_member = prelude.String })

M.FragmentList = schema.new({ type = "list", list_member = M.Fragment })

M.ClientLimitExceededException = schema.new({
    id = id.from(_N, "ClientLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ClientLimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ClipTimestampRange = schema.new({
    id = id.from(_N, "ClipTimestampRange"),
    type = "structure",
    members = {
        StartTimestamp = schema.new({
            id = id.from(_N, "ClipTimestampRange", "StartTimestamp"),
            type = "timestamp",
            name = "StartTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndTimestamp = schema.new({
            id = id.from(_N, "ClipTimestampRange", "EndTimestamp"),
            type = "timestamp",
            name = "EndTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ClipFragmentSelector = schema.new({
    id = id.from(_N, "ClipFragmentSelector"),
    type = "structure",
    members = {
        FragmentSelectorType = schema.new({
            id = id.from(_N, "ClipFragmentSelector", "FragmentSelectorType"),
            type = "string",
            name = "FragmentSelectorType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TimestampRange = schema.new({
            id = id.from(_N, "ClipFragmentSelector", "TimestampRange"),
            type = "structure",
            name = "TimestampRange",
            target_id = id.from(_N, "ClipTimestampRange"),
            target = M.ClipTimestampRange,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetClipInput = schema.new({
    id = id.from(_N, "GetClipInput"),
    type = "structure",
    members = {
        StreamName = schema.new({
            id = id.from(_N, "GetClipInput", "StreamName"),
            type = "string",
            name = "StreamName",
            target_id = prelude.String.id,
        }),
        StreamARN = schema.new({
            id = id.from(_N, "GetClipInput", "StreamARN"),
            type = "string",
            name = "StreamARN",
            target_id = prelude.String.id,
        }),
        ClipFragmentSelector = schema.new({
            id = id.from(_N, "GetClipInput", "ClipFragmentSelector"),
            type = "structure",
            name = "ClipFragmentSelector",
            target_id = id.from(_N, "ClipFragmentSelector"),
            target = M.ClipFragmentSelector,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetClipOutput = schema.new({
    id = id.from(_N, "GetClipOutput"),
    type = "structure",
    members = {
        ContentType = schema.new({
            id = id.from(_N, "GetClipOutput", "ContentType"),
            type = "string",
            name = "ContentType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Content-Type" },
            },
        }),
        Payload = schema.new({
            id = id.from(_N, "GetClipOutput", "Payload"),
            type = "blob",
            name = "Payload",
            target_id = prelude.Blob.id,
            traits = {
                [traits.DEFAULT] = { value = "" },
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.InvalidArgumentException = schema.new({
    id = id.from(_N, "InvalidArgumentException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidArgumentException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidCodecPrivateDataException = schema.new({
    id = id.from(_N, "InvalidCodecPrivateDataException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidCodecPrivateDataException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidMediaFrameException = schema.new({
    id = id.from(_N, "InvalidMediaFrameException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidMediaFrameException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.MissingCodecPrivateDataException = schema.new({
    id = id.from(_N, "MissingCodecPrivateDataException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "MissingCodecPrivateDataException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.NoDataRetentionException = schema.new({
    id = id.from(_N, "NoDataRetentionException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NoDataRetentionException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.NotAuthorizedException = schema.new({
    id = id.from(_N, "NotAuthorizedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NotAuthorizedException", "Message"),
            type = "string",
            name = "Message",
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
        Message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.UnsupportedStreamMediaTypeException = schema.new({
    id = id.from(_N, "UnsupportedStreamMediaTypeException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "UnsupportedStreamMediaTypeException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DASHTimestampRange = schema.new({
    id = id.from(_N, "DASHTimestampRange"),
    type = "structure",
    members = {
        StartTimestamp = schema.new({
            id = id.from(_N, "DASHTimestampRange", "StartTimestamp"),
            type = "timestamp",
            name = "StartTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        EndTimestamp = schema.new({
            id = id.from(_N, "DASHTimestampRange", "EndTimestamp"),
            type = "timestamp",
            name = "EndTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DASHFragmentSelector = schema.new({
    id = id.from(_N, "DASHFragmentSelector"),
    type = "structure",
    members = {
        FragmentSelectorType = schema.new({
            id = id.from(_N, "DASHFragmentSelector", "FragmentSelectorType"),
            type = "string",
            name = "FragmentSelectorType",
            target_id = prelude.String.id,
        }),
        TimestampRange = schema.new({
            id = id.from(_N, "DASHFragmentSelector", "TimestampRange"),
            type = "structure",
            name = "TimestampRange",
            target_id = id.from(_N, "DASHTimestampRange"),
            target = M.DASHTimestampRange,
        }),
    },
})

M.GetDASHStreamingSessionURLInput = schema.new({
    id = id.from(_N, "GetDASHStreamingSessionURLInput"),
    type = "structure",
    members = {
        StreamName = schema.new({
            id = id.from(_N, "GetDASHStreamingSessionURLInput", "StreamName"),
            type = "string",
            name = "StreamName",
            target_id = prelude.String.id,
        }),
        StreamARN = schema.new({
            id = id.from(_N, "GetDASHStreamingSessionURLInput", "StreamARN"),
            type = "string",
            name = "StreamARN",
            target_id = prelude.String.id,
        }),
        PlaybackMode = schema.new({
            id = id.from(_N, "GetDASHStreamingSessionURLInput", "PlaybackMode"),
            type = "string",
            name = "PlaybackMode",
            target_id = prelude.String.id,
        }),
        DisplayFragmentTimestamp = schema.new({
            id = id.from(_N, "GetDASHStreamingSessionURLInput", "DisplayFragmentTimestamp"),
            type = "string",
            name = "DisplayFragmentTimestamp",
            target_id = prelude.String.id,
        }),
        DisplayFragmentNumber = schema.new({
            id = id.from(_N, "GetDASHStreamingSessionURLInput", "DisplayFragmentNumber"),
            type = "string",
            name = "DisplayFragmentNumber",
            target_id = prelude.String.id,
        }),
        DASHFragmentSelector = schema.new({
            id = id.from(_N, "GetDASHStreamingSessionURLInput", "DASHFragmentSelector"),
            type = "structure",
            name = "DASHFragmentSelector",
            target_id = id.from(_N, "DASHFragmentSelector"),
            target = M.DASHFragmentSelector,
        }),
        Expires = schema.new({
            id = id.from(_N, "GetDASHStreamingSessionURLInput", "Expires"),
            type = "integer",
            name = "Expires",
            target_id = prelude.Integer.id,
        }),
        MaxManifestFragmentResults = schema.new({
            id = id.from(_N, "GetDASHStreamingSessionURLInput", "MaxManifestFragmentResults"),
            type = "long",
            name = "MaxManifestFragmentResults",
            target_id = prelude.Long.id,
        }),
    },
})

M.GetDASHStreamingSessionURLOutput = schema.new({
    id = id.from(_N, "GetDASHStreamingSessionURLOutput"),
    type = "structure",
    members = {
        DASHStreamingSessionURL = schema.new({
            id = id.from(_N, "GetDASHStreamingSessionURLOutput", "DASHStreamingSessionURL"),
            type = "string",
            name = "DASHStreamingSessionURL",
            target_id = prelude.String.id,
        }),
    },
})

M.HLSTimestampRange = schema.new({
    id = id.from(_N, "HLSTimestampRange"),
    type = "structure",
    members = {
        StartTimestamp = schema.new({
            id = id.from(_N, "HLSTimestampRange", "StartTimestamp"),
            type = "timestamp",
            name = "StartTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        EndTimestamp = schema.new({
            id = id.from(_N, "HLSTimestampRange", "EndTimestamp"),
            type = "timestamp",
            name = "EndTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.HLSFragmentSelector = schema.new({
    id = id.from(_N, "HLSFragmentSelector"),
    type = "structure",
    members = {
        FragmentSelectorType = schema.new({
            id = id.from(_N, "HLSFragmentSelector", "FragmentSelectorType"),
            type = "string",
            name = "FragmentSelectorType",
            target_id = prelude.String.id,
        }),
        TimestampRange = schema.new({
            id = id.from(_N, "HLSFragmentSelector", "TimestampRange"),
            type = "structure",
            name = "TimestampRange",
            target_id = id.from(_N, "HLSTimestampRange"),
            target = M.HLSTimestampRange,
        }),
    },
})

M.GetHLSStreamingSessionURLInput = schema.new({
    id = id.from(_N, "GetHLSStreamingSessionURLInput"),
    type = "structure",
    members = {
        StreamName = schema.new({
            id = id.from(_N, "GetHLSStreamingSessionURLInput", "StreamName"),
            type = "string",
            name = "StreamName",
            target_id = prelude.String.id,
        }),
        StreamARN = schema.new({
            id = id.from(_N, "GetHLSStreamingSessionURLInput", "StreamARN"),
            type = "string",
            name = "StreamARN",
            target_id = prelude.String.id,
        }),
        PlaybackMode = schema.new({
            id = id.from(_N, "GetHLSStreamingSessionURLInput", "PlaybackMode"),
            type = "string",
            name = "PlaybackMode",
            target_id = prelude.String.id,
        }),
        HLSFragmentSelector = schema.new({
            id = id.from(_N, "GetHLSStreamingSessionURLInput", "HLSFragmentSelector"),
            type = "structure",
            name = "HLSFragmentSelector",
            target_id = id.from(_N, "HLSFragmentSelector"),
            target = M.HLSFragmentSelector,
        }),
        ContainerFormat = schema.new({
            id = id.from(_N, "GetHLSStreamingSessionURLInput", "ContainerFormat"),
            type = "string",
            name = "ContainerFormat",
            target_id = prelude.String.id,
        }),
        DiscontinuityMode = schema.new({
            id = id.from(_N, "GetHLSStreamingSessionURLInput", "DiscontinuityMode"),
            type = "string",
            name = "DiscontinuityMode",
            target_id = prelude.String.id,
        }),
        DisplayFragmentTimestamp = schema.new({
            id = id.from(_N, "GetHLSStreamingSessionURLInput", "DisplayFragmentTimestamp"),
            type = "string",
            name = "DisplayFragmentTimestamp",
            target_id = prelude.String.id,
        }),
        Expires = schema.new({
            id = id.from(_N, "GetHLSStreamingSessionURLInput", "Expires"),
            type = "integer",
            name = "Expires",
            target_id = prelude.Integer.id,
        }),
        MaxMediaPlaylistFragmentResults = schema.new({
            id = id.from(_N, "GetHLSStreamingSessionURLInput", "MaxMediaPlaylistFragmentResults"),
            type = "long",
            name = "MaxMediaPlaylistFragmentResults",
            target_id = prelude.Long.id,
        }),
    },
})

M.GetHLSStreamingSessionURLOutput = schema.new({
    id = id.from(_N, "GetHLSStreamingSessionURLOutput"),
    type = "structure",
    members = {
        HLSStreamingSessionURL = schema.new({
            id = id.from(_N, "GetHLSStreamingSessionURLOutput", "HLSStreamingSessionURL"),
            type = "string",
            name = "HLSStreamingSessionURL",
            target_id = prelude.String.id,
        }),
    },
})

M.GetImagesInput = schema.new({
    id = id.from(_N, "GetImagesInput"),
    type = "structure",
    members = {
        StreamName = schema.new({
            id = id.from(_N, "GetImagesInput", "StreamName"),
            type = "string",
            name = "StreamName",
            target_id = prelude.String.id,
        }),
        StreamARN = schema.new({
            id = id.from(_N, "GetImagesInput", "StreamARN"),
            type = "string",
            name = "StreamARN",
            target_id = prelude.String.id,
        }),
        ImageSelectorType = schema.new({
            id = id.from(_N, "GetImagesInput", "ImageSelectorType"),
            type = "string",
            name = "ImageSelectorType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartTimestamp = schema.new({
            id = id.from(_N, "GetImagesInput", "StartTimestamp"),
            type = "timestamp",
            name = "StartTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndTimestamp = schema.new({
            id = id.from(_N, "GetImagesInput", "EndTimestamp"),
            type = "timestamp",
            name = "EndTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SamplingInterval = schema.new({
            id = id.from(_N, "GetImagesInput", "SamplingInterval"),
            type = "integer",
            name = "SamplingInterval",
            target_id = prelude.Integer.id,
        }),
        Format = schema.new({
            id = id.from(_N, "GetImagesInput", "Format"),
            type = "string",
            name = "Format",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FormatConfig = schema.new({
            id = id.from(_N, "GetImagesInput", "FormatConfig"),
            type = "map",
            name = "FormatConfig",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        WidthPixels = schema.new({
            id = id.from(_N, "GetImagesInput", "WidthPixels"),
            type = "integer",
            name = "WidthPixels",
            target_id = prelude.Integer.id,
        }),
        HeightPixels = schema.new({
            id = id.from(_N, "GetImagesInput", "HeightPixels"),
            type = "integer",
            name = "HeightPixels",
            target_id = prelude.Integer.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetImagesInput", "MaxResults"),
            type = "long",
            name = "MaxResults",
            target_id = prelude.Long.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetImagesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.Image = schema.new({
    id = id.from(_N, "Image"),
    type = "structure",
    members = {
        TimeStamp = schema.new({
            id = id.from(_N, "Image", "TimeStamp"),
            type = "timestamp",
            name = "TimeStamp",
            target_id = prelude.Timestamp.id,
        }),
        Error = schema.new({
            id = id.from(_N, "Image", "Error"),
            type = "string",
            name = "Error",
            target_id = prelude.String.id,
        }),
        ImageContent = schema.new({
            id = id.from(_N, "Image", "ImageContent"),
            type = "string",
            name = "ImageContent",
            target_id = prelude.String.id,
        }),
    },
})

M.GetImagesOutput = schema.new({
    id = id.from(_N, "GetImagesOutput"),
    type = "structure",
    members = {
        Images = schema.new({
            id = id.from(_N, "GetImagesOutput", "Images"),
            type = "list",
            name = "Images",
            target_id = prelude.Document.id,
            list_member = M.Image,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetImagesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetMediaForFragmentListInput = schema.new({
    id = id.from(_N, "GetMediaForFragmentListInput"),
    type = "structure",
    members = {
        StreamName = schema.new({
            id = id.from(_N, "GetMediaForFragmentListInput", "StreamName"),
            type = "string",
            name = "StreamName",
            target_id = prelude.String.id,
        }),
        StreamARN = schema.new({
            id = id.from(_N, "GetMediaForFragmentListInput", "StreamARN"),
            type = "string",
            name = "StreamARN",
            target_id = prelude.String.id,
        }),
        Fragments = schema.new({
            id = id.from(_N, "GetMediaForFragmentListInput", "Fragments"),
            type = "list",
            name = "Fragments",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetMediaForFragmentListOutput = schema.new({
    id = id.from(_N, "GetMediaForFragmentListOutput"),
    type = "structure",
    members = {
        ContentType = schema.new({
            id = id.from(_N, "GetMediaForFragmentListOutput", "ContentType"),
            type = "string",
            name = "ContentType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Content-Type" },
            },
        }),
        Payload = schema.new({
            id = id.from(_N, "GetMediaForFragmentListOutput", "Payload"),
            type = "blob",
            name = "Payload",
            target_id = prelude.Blob.id,
            traits = {
                [traits.DEFAULT] = { value = "" },
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.TimestampRange = schema.new({
    id = id.from(_N, "TimestampRange"),
    type = "structure",
    members = {
        StartTimestamp = schema.new({
            id = id.from(_N, "TimestampRange", "StartTimestamp"),
            type = "timestamp",
            name = "StartTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndTimestamp = schema.new({
            id = id.from(_N, "TimestampRange", "EndTimestamp"),
            type = "timestamp",
            name = "EndTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FragmentSelector = schema.new({
    id = id.from(_N, "FragmentSelector"),
    type = "structure",
    members = {
        FragmentSelectorType = schema.new({
            id = id.from(_N, "FragmentSelector", "FragmentSelectorType"),
            type = "string",
            name = "FragmentSelectorType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TimestampRange = schema.new({
            id = id.from(_N, "FragmentSelector", "TimestampRange"),
            type = "structure",
            name = "TimestampRange",
            target_id = id.from(_N, "TimestampRange"),
            target = M.TimestampRange,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListFragmentsInput = schema.new({
    id = id.from(_N, "ListFragmentsInput"),
    type = "structure",
    members = {
        StreamName = schema.new({
            id = id.from(_N, "ListFragmentsInput", "StreamName"),
            type = "string",
            name = "StreamName",
            target_id = prelude.String.id,
        }),
        StreamARN = schema.new({
            id = id.from(_N, "ListFragmentsInput", "StreamARN"),
            type = "string",
            name = "StreamARN",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListFragmentsInput", "MaxResults"),
            type = "long",
            name = "MaxResults",
            target_id = prelude.Long.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListFragmentsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        FragmentSelector = schema.new({
            id = id.from(_N, "ListFragmentsInput", "FragmentSelector"),
            type = "structure",
            name = "FragmentSelector",
            target_id = id.from(_N, "FragmentSelector"),
            target = M.FragmentSelector,
        }),
    },
})

M.Fragment = schema.new({
    id = id.from(_N, "Fragment"),
    type = "structure",
    members = {
        FragmentNumber = schema.new({
            id = id.from(_N, "Fragment", "FragmentNumber"),
            type = "string",
            name = "FragmentNumber",
            target_id = prelude.String.id,
        }),
        FragmentSizeInBytes = schema.new({
            id = id.from(_N, "Fragment", "FragmentSizeInBytes"),
            type = "long",
            name = "FragmentSizeInBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ProducerTimestamp = schema.new({
            id = id.from(_N, "Fragment", "ProducerTimestamp"),
            type = "timestamp",
            name = "ProducerTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        ServerTimestamp = schema.new({
            id = id.from(_N, "Fragment", "ServerTimestamp"),
            type = "timestamp",
            name = "ServerTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        FragmentLengthInMilliseconds = schema.new({
            id = id.from(_N, "Fragment", "FragmentLengthInMilliseconds"),
            type = "long",
            name = "FragmentLengthInMilliseconds",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ListFragmentsOutput = schema.new({
    id = id.from(_N, "ListFragmentsOutput"),
    type = "structure",
    members = {
        Fragments = schema.new({
            id = id.from(_N, "ListFragmentsOutput", "Fragments"),
            type = "list",
            name = "Fragments",
            target_id = prelude.Document.id,
            list_member = M.Fragment,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListFragmentsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
