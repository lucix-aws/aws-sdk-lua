local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.mediatailor"

local M = {}

M.KeyValuePair = schema.new({
    id = id.from(_N, "KeyValuePair"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "KeyValuePair", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "KeyValuePair", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SlateSource = schema.new({
    id = id.from(_N, "SlateSource"),
    type = "structure",
    members = {
        SourceLocationName = schema.new({
            id = id.from(_N, "SlateSource", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
        }),
        VodSourceName = schema.new({
            id = id.from(_N, "SlateSource", "VodSourceName"),
            type = "string",
            name = "VodSourceName",
            target_id = prelude.String.id,
        }),
    },
})

M.SpliceInsertMessage = schema.new({
    id = id.from(_N, "SpliceInsertMessage"),
    type = "structure",
    members = {
        AvailNum = schema.new({
            id = id.from(_N, "SpliceInsertMessage", "AvailNum"),
            type = "integer",
            name = "AvailNum",
            target_id = prelude.Integer.id,
        }),
        AvailsExpected = schema.new({
            id = id.from(_N, "SpliceInsertMessage", "AvailsExpected"),
            type = "integer",
            name = "AvailsExpected",
            target_id = prelude.Integer.id,
        }),
        SpliceEventId = schema.new({
            id = id.from(_N, "SpliceInsertMessage", "SpliceEventId"),
            type = "integer",
            name = "SpliceEventId",
            target_id = prelude.Integer.id,
        }),
        UniqueProgramId = schema.new({
            id = id.from(_N, "SpliceInsertMessage", "UniqueProgramId"),
            type = "integer",
            name = "UniqueProgramId",
            target_id = prelude.Integer.id,
        }),
    },
})

M.SegmentationDescriptor = schema.new({
    id = id.from(_N, "SegmentationDescriptor"),
    type = "structure",
    members = {
        SegmentationEventId = schema.new({
            id = id.from(_N, "SegmentationDescriptor", "SegmentationEventId"),
            type = "integer",
            name = "SegmentationEventId",
            target_id = prelude.Integer.id,
        }),
        SegmentationUpidType = schema.new({
            id = id.from(_N, "SegmentationDescriptor", "SegmentationUpidType"),
            type = "integer",
            name = "SegmentationUpidType",
            target_id = prelude.Integer.id,
        }),
        SegmentationUpid = schema.new({
            id = id.from(_N, "SegmentationDescriptor", "SegmentationUpid"),
            type = "string",
            name = "SegmentationUpid",
            target_id = prelude.String.id,
        }),
        SegmentationTypeId = schema.new({
            id = id.from(_N, "SegmentationDescriptor", "SegmentationTypeId"),
            type = "integer",
            name = "SegmentationTypeId",
            target_id = prelude.Integer.id,
        }),
        SegmentNum = schema.new({
            id = id.from(_N, "SegmentationDescriptor", "SegmentNum"),
            type = "integer",
            name = "SegmentNum",
            target_id = prelude.Integer.id,
        }),
        SegmentsExpected = schema.new({
            id = id.from(_N, "SegmentationDescriptor", "SegmentsExpected"),
            type = "integer",
            name = "SegmentsExpected",
            target_id = prelude.Integer.id,
        }),
        SubSegmentNum = schema.new({
            id = id.from(_N, "SegmentationDescriptor", "SubSegmentNum"),
            type = "integer",
            name = "SubSegmentNum",
            target_id = prelude.Integer.id,
        }),
        SubSegmentsExpected = schema.new({
            id = id.from(_N, "SegmentationDescriptor", "SubSegmentsExpected"),
            type = "integer",
            name = "SubSegmentsExpected",
            target_id = prelude.Integer.id,
        }),
    },
})

M.TimeSignalMessage = schema.new({
    id = id.from(_N, "TimeSignalMessage"),
    type = "structure",
    members = {
        SegmentationDescriptors = schema.new({
            id = id.from(_N, "TimeSignalMessage", "SegmentationDescriptors"),
            type = "list",
            name = "SegmentationDescriptors",
            target_id = prelude.Document.id,
            list_member = M.SegmentationDescriptor,
        }),
    },
})

M.AdBreak = schema.new({
    id = id.from(_N, "AdBreak"),
    type = "structure",
    members = {
        MessageType = schema.new({
            id = id.from(_N, "AdBreak", "MessageType"),
            type = "string",
            name = "MessageType",
            target_id = prelude.String.id,
        }),
        OffsetMillis = schema.new({
            id = id.from(_N, "AdBreak", "OffsetMillis"),
            type = "long",
            name = "OffsetMillis",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Slate = schema.new({
            id = id.from(_N, "AdBreak", "Slate"),
            type = "structure",
            name = "Slate",
            target_id = id.from(_N, "SlateSource"),
            target = M.SlateSource,
        }),
        SpliceInsertMessage = schema.new({
            id = id.from(_N, "AdBreak", "SpliceInsertMessage"),
            type = "structure",
            name = "SpliceInsertMessage",
            target_id = id.from(_N, "SpliceInsertMessage"),
            target = M.SpliceInsertMessage,
        }),
        TimeSignalMessage = schema.new({
            id = id.from(_N, "AdBreak", "TimeSignalMessage"),
            type = "structure",
            name = "TimeSignalMessage",
            target_id = id.from(_N, "TimeSignalMessage"),
            target = M.TimeSignalMessage,
        }),
        AdBreakMetadata = schema.new({
            id = id.from(_N, "AdBreak", "AdBreakMetadata"),
            type = "list",
            name = "AdBreakMetadata",
            target_id = prelude.Document.id,
            list_member = M.KeyValuePair,
        }),
    },
})

M.Alert = schema.new({
    id = id.from(_N, "Alert"),
    type = "structure",
    members = {
        AlertCode = schema.new({
            id = id.from(_N, "Alert", "AlertCode"),
            type = "string",
            name = "AlertCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AlertMessage = schema.new({
            id = id.from(_N, "Alert", "AlertMessage"),
            type = "string",
            name = "AlertMessage",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "Alert", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RelatedResourceArns = schema.new({
            id = id.from(_N, "Alert", "RelatedResourceArns"),
            type = "list",
            name = "RelatedResourceArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "Alert", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Category = schema.new({
            id = id.from(_N, "Alert", "Category"),
            type = "string",
            name = "Category",
            target_id = prelude.String.id,
        }),
    },
})

M.ClipRange = schema.new({
    id = id.from(_N, "ClipRange"),
    type = "structure",
    members = {
        EndOffsetMillis = schema.new({
            id = id.from(_N, "ClipRange", "EndOffsetMillis"),
            type = "long",
            name = "EndOffsetMillis",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        StartOffsetMillis = schema.new({
            id = id.from(_N, "ClipRange", "StartOffsetMillis"),
            type = "long",
            name = "StartOffsetMillis",
            target_id = prelude.Long.id,
        }),
    },
})

M.AlternateMedia = schema.new({
    id = id.from(_N, "AlternateMedia"),
    type = "structure",
    members = {
        SourceLocationName = schema.new({
            id = id.from(_N, "AlternateMedia", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
        }),
        LiveSourceName = schema.new({
            id = id.from(_N, "AlternateMedia", "LiveSourceName"),
            type = "string",
            name = "LiveSourceName",
            target_id = prelude.String.id,
        }),
        VodSourceName = schema.new({
            id = id.from(_N, "AlternateMedia", "VodSourceName"),
            type = "string",
            name = "VodSourceName",
            target_id = prelude.String.id,
        }),
        ClipRange = schema.new({
            id = id.from(_N, "AlternateMedia", "ClipRange"),
            type = "structure",
            name = "ClipRange",
            target_id = id.from(_N, "ClipRange"),
            target = M.ClipRange,
        }),
        ScheduledStartTimeMillis = schema.new({
            id = id.from(_N, "AlternateMedia", "ScheduledStartTimeMillis"),
            type = "long",
            name = "ScheduledStartTimeMillis",
            target_id = prelude.Long.id,
        }),
        AdBreaks = schema.new({
            id = id.from(_N, "AlternateMedia", "AdBreaks"),
            type = "list",
            name = "AdBreaks",
            target_id = prelude.Document.id,
            list_member = M.AdBreak,
        }),
        DurationMillis = schema.new({
            id = id.from(_N, "AlternateMedia", "DurationMillis"),
            type = "long",
            name = "DurationMillis",
            target_id = prelude.Long.id,
        }),
    },
})

M.AudienceMedia = schema.new({
    id = id.from(_N, "AudienceMedia"),
    type = "structure",
    members = {
        Audience = schema.new({
            id = id.from(_N, "AudienceMedia", "Audience"),
            type = "string",
            name = "Audience",
            target_id = prelude.String.id,
        }),
        AlternateMedia = schema.new({
            id = id.from(_N, "AudienceMedia", "AlternateMedia"),
            type = "list",
            name = "AlternateMedia",
            target_id = prelude.Document.id,
            list_member = M.AlternateMedia,
        }),
    },
})

M.AvailMatchingCriteria = schema.new({
    id = id.from(_N, "AvailMatchingCriteria"),
    type = "structure",
    members = {
        DynamicVariable = schema.new({
            id = id.from(_N, "AvailMatchingCriteria", "DynamicVariable"),
            type = "string",
            name = "DynamicVariable",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Operator = schema.new({
            id = id.from(_N, "AvailMatchingCriteria", "Operator"),
            type = "string",
            name = "Operator",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.LogConfigurationForChannel = schema.new({
    id = id.from(_N, "LogConfigurationForChannel"),
    type = "structure",
    members = {
        LogTypes = schema.new({
            id = id.from(_N, "LogConfigurationForChannel", "LogTypes"),
            type = "list",
            name = "LogTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DashPlaylistSettings = schema.new({
    id = id.from(_N, "DashPlaylistSettings"),
    type = "structure",
    members = {
        ManifestWindowSeconds = schema.new({
            id = id.from(_N, "DashPlaylistSettings", "ManifestWindowSeconds"),
            type = "integer",
            name = "ManifestWindowSeconds",
            target_id = prelude.Integer.id,
        }),
        MinBufferTimeSeconds = schema.new({
            id = id.from(_N, "DashPlaylistSettings", "MinBufferTimeSeconds"),
            type = "integer",
            name = "MinBufferTimeSeconds",
            target_id = prelude.Integer.id,
        }),
        MinUpdatePeriodSeconds = schema.new({
            id = id.from(_N, "DashPlaylistSettings", "MinUpdatePeriodSeconds"),
            type = "integer",
            name = "MinUpdatePeriodSeconds",
            target_id = prelude.Integer.id,
        }),
        SuggestedPresentationDelaySeconds = schema.new({
            id = id.from(_N, "DashPlaylistSettings", "SuggestedPresentationDelaySeconds"),
            type = "integer",
            name = "SuggestedPresentationDelaySeconds",
            target_id = prelude.Integer.id,
        }),
    },
})

M.HlsPlaylistSettings = schema.new({
    id = id.from(_N, "HlsPlaylistSettings"),
    type = "structure",
    members = {
        ManifestWindowSeconds = schema.new({
            id = id.from(_N, "HlsPlaylistSettings", "ManifestWindowSeconds"),
            type = "integer",
            name = "ManifestWindowSeconds",
            target_id = prelude.Integer.id,
        }),
        AdMarkupType = schema.new({
            id = id.from(_N, "HlsPlaylistSettings", "AdMarkupType"),
            type = "list",
            name = "AdMarkupType",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ResponseOutputItem = schema.new({
    id = id.from(_N, "ResponseOutputItem"),
    type = "structure",
    members = {
        DashPlaylistSettings = schema.new({
            id = id.from(_N, "ResponseOutputItem", "DashPlaylistSettings"),
            type = "structure",
            name = "DashPlaylistSettings",
            target_id = id.from(_N, "DashPlaylistSettings"),
            target = M.DashPlaylistSettings,
        }),
        HlsPlaylistSettings = schema.new({
            id = id.from(_N, "ResponseOutputItem", "HlsPlaylistSettings"),
            type = "structure",
            name = "HlsPlaylistSettings",
            target_id = id.from(_N, "HlsPlaylistSettings"),
            target = M.HlsPlaylistSettings,
        }),
        ManifestName = schema.new({
            id = id.from(_N, "ResponseOutputItem", "ManifestName"),
            type = "string",
            name = "ManifestName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PlaybackUrl = schema.new({
            id = id.from(_N, "ResponseOutputItem", "PlaybackUrl"),
            type = "string",
            name = "PlaybackUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceGroup = schema.new({
            id = id.from(_N, "ResponseOutputItem", "SourceGroup"),
            type = "string",
            name = "SourceGroup",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Channel = schema.new({
    id = id.from(_N, "Channel"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "Channel", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChannelName = schema.new({
            id = id.from(_N, "Channel", "ChannelName"),
            type = "string",
            name = "ChannelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChannelState = schema.new({
            id = id.from(_N, "Channel", "ChannelState"),
            type = "string",
            name = "ChannelState",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreationTime = schema.new({
            id = id.from(_N, "Channel", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        FillerSlate = schema.new({
            id = id.from(_N, "Channel", "FillerSlate"),
            type = "structure",
            name = "FillerSlate",
            target_id = id.from(_N, "SlateSource"),
            target = M.SlateSource,
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "Channel", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        Outputs = schema.new({
            id = id.from(_N, "Channel", "Outputs"),
            type = "list",
            name = "Outputs",
            target_id = prelude.Document.id,
            list_member = M.ResponseOutputItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PlaybackMode = schema.new({
            id = id.from(_N, "Channel", "PlaybackMode"),
            type = "string",
            name = "PlaybackMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "Channel", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        Tier = schema.new({
            id = id.from(_N, "Channel", "Tier"),
            type = "string",
            name = "Tier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LogConfiguration = schema.new({
            id = id.from(_N, "Channel", "LogConfiguration"),
            type = "structure",
            name = "LogConfiguration",
            target_id = id.from(_N, "LogConfigurationForChannel"),
            target = M.LogConfigurationForChannel,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Audiences = schema.new({
            id = id.from(_N, "Channel", "Audiences"),
            type = "list",
            name = "Audiences",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.HttpPackageConfiguration = schema.new({
    id = id.from(_N, "HttpPackageConfiguration"),
    type = "structure",
    members = {
        Path = schema.new({
            id = id.from(_N, "HttpPackageConfiguration", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceGroup = schema.new({
            id = id.from(_N, "HttpPackageConfiguration", "SourceGroup"),
            type = "string",
            name = "SourceGroup",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "HttpPackageConfiguration", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.LiveSource = schema.new({
    id = id.from(_N, "LiveSource"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "LiveSource", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreationTime = schema.new({
            id = id.from(_N, "LiveSource", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        HttpPackageConfigurations = schema.new({
            id = id.from(_N, "LiveSource", "HttpPackageConfigurations"),
            type = "list",
            name = "HttpPackageConfigurations",
            target_id = prelude.Document.id,
            list_member = M.HttpPackageConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "LiveSource", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        LiveSourceName = schema.new({
            id = id.from(_N, "LiveSource", "LiveSourceName"),
            type = "string",
            name = "LiveSourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceLocationName = schema.new({
            id = id.from(_N, "LiveSource", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "LiveSource", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.AdConditioningConfiguration = schema.new({
    id = id.from(_N, "AdConditioningConfiguration"),
    type = "structure",
    members = {
        StreamingMediaFileConditioning = schema.new({
            id = id.from(_N, "AdConditioningConfiguration", "StreamingMediaFileConditioning"),
            type = "string",
            name = "StreamingMediaFileConditioning",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.HttpRequest = schema.new({
    id = id.from(_N, "HttpRequest"),
    type = "structure",
    members = {
        Method = schema.new({
            id = id.from(_N, "HttpRequest", "Method"),
            type = "string",
            name = "Method",
            target_id = prelude.String.id,
        }),
        Body = schema.new({
            id = id.from(_N, "HttpRequest", "Body"),
            type = "string",
            name = "Body",
            target_id = prelude.String.id,
        }),
        Headers = schema.new({
            id = id.from(_N, "HttpRequest", "Headers"),
            type = "map",
            name = "Headers",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        CompressRequest = schema.new({
            id = id.from(_N, "HttpRequest", "CompressRequest"),
            type = "string",
            name = "CompressRequest",
            target_id = prelude.String.id,
        }),
    },
})

M.AdDecisionServerConfiguration = schema.new({
    id = id.from(_N, "AdDecisionServerConfiguration"),
    type = "structure",
    members = {
        HttpRequest = schema.new({
            id = id.from(_N, "AdDecisionServerConfiguration", "HttpRequest"),
            type = "structure",
            name = "HttpRequest",
            target_id = id.from(_N, "HttpRequest"),
            target = M.HttpRequest,
        }),
    },
})

M.AvailSuppression = schema.new({
    id = id.from(_N, "AvailSuppression"),
    type = "structure",
    members = {
        Mode = schema.new({
            id = id.from(_N, "AvailSuppression", "Mode"),
            type = "string",
            name = "Mode",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "AvailSuppression", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
        FillPolicy = schema.new({
            id = id.from(_N, "AvailSuppression", "FillPolicy"),
            type = "string",
            name = "FillPolicy",
            target_id = prelude.String.id,
        }),
    },
})

M.Bumper = schema.new({
    id = id.from(_N, "Bumper"),
    type = "structure",
    members = {
        EndUrl = schema.new({
            id = id.from(_N, "Bumper", "EndUrl"),
            type = "string",
            name = "EndUrl",
            target_id = prelude.String.id,
        }),
        StartUrl = schema.new({
            id = id.from(_N, "Bumper", "StartUrl"),
            type = "string",
            name = "StartUrl",
            target_id = prelude.String.id,
        }),
    },
})

M.CdnConfiguration = schema.new({
    id = id.from(_N, "CdnConfiguration"),
    type = "structure",
    members = {
        AdSegmentUrlPrefix = schema.new({
            id = id.from(_N, "CdnConfiguration", "AdSegmentUrlPrefix"),
            type = "string",
            name = "AdSegmentUrlPrefix",
            target_id = prelude.String.id,
        }),
        ContentSegmentUrlPrefix = schema.new({
            id = id.from(_N, "CdnConfiguration", "ContentSegmentUrlPrefix"),
            type = "string",
            name = "ContentSegmentUrlPrefix",
            target_id = prelude.String.id,
        }),
    },
})

M.DashConfiguration = schema.new({
    id = id.from(_N, "DashConfiguration"),
    type = "structure",
    members = {
        ManifestEndpointPrefix = schema.new({
            id = id.from(_N, "DashConfiguration", "ManifestEndpointPrefix"),
            type = "string",
            name = "ManifestEndpointPrefix",
            target_id = prelude.String.id,
        }),
        MpdLocation = schema.new({
            id = id.from(_N, "DashConfiguration", "MpdLocation"),
            type = "string",
            name = "MpdLocation",
            target_id = prelude.String.id,
        }),
        OriginManifestType = schema.new({
            id = id.from(_N, "DashConfiguration", "OriginManifestType"),
            type = "string",
            name = "OriginManifestType",
            target_id = prelude.String.id,
        }),
    },
})

M.HlsConfiguration = schema.new({
    id = id.from(_N, "HlsConfiguration"),
    type = "structure",
    members = {
        ManifestEndpointPrefix = schema.new({
            id = id.from(_N, "HlsConfiguration", "ManifestEndpointPrefix"),
            type = "string",
            name = "ManifestEndpointPrefix",
            target_id = prelude.String.id,
        }),
    },
})

M.LivePreRollConfiguration = schema.new({
    id = id.from(_N, "LivePreRollConfiguration"),
    type = "structure",
    members = {
        AdDecisionServerUrl = schema.new({
            id = id.from(_N, "LivePreRollConfiguration", "AdDecisionServerUrl"),
            type = "string",
            name = "AdDecisionServerUrl",
            target_id = prelude.String.id,
        }),
        MaxDurationSeconds = schema.new({
            id = id.from(_N, "LivePreRollConfiguration", "MaxDurationSeconds"),
            type = "integer",
            name = "MaxDurationSeconds",
            target_id = prelude.Integer.id,
        }),
    },
})

M.AdsInteractionLog = schema.new({
    id = id.from(_N, "AdsInteractionLog"),
    type = "structure",
    members = {
        PublishOptInEventTypes = schema.new({
            id = id.from(_N, "AdsInteractionLog", "PublishOptInEventTypes"),
            type = "list",
            name = "PublishOptInEventTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ExcludeEventTypes = schema.new({
            id = id.from(_N, "AdsInteractionLog", "ExcludeEventTypes"),
            type = "list",
            name = "ExcludeEventTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ManifestServiceInteractionLog = schema.new({
    id = id.from(_N, "ManifestServiceInteractionLog"),
    type = "structure",
    members = {
        ExcludeEventTypes = schema.new({
            id = id.from(_N, "ManifestServiceInteractionLog", "ExcludeEventTypes"),
            type = "list",
            name = "ExcludeEventTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.LogConfiguration = schema.new({
    id = id.from(_N, "LogConfiguration"),
    type = "structure",
    members = {
        PercentEnabled = schema.new({
            id = id.from(_N, "LogConfiguration", "PercentEnabled"),
            type = "integer",
            name = "PercentEnabled",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        EnabledLoggingStrategies = schema.new({
            id = id.from(_N, "LogConfiguration", "EnabledLoggingStrategies"),
            type = "list",
            name = "EnabledLoggingStrategies",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AdsInteractionLog = schema.new({
            id = id.from(_N, "LogConfiguration", "AdsInteractionLog"),
            type = "structure",
            name = "AdsInteractionLog",
            target_id = id.from(_N, "AdsInteractionLog"),
            target = M.AdsInteractionLog,
        }),
        ManifestServiceInteractionLog = schema.new({
            id = id.from(_N, "LogConfiguration", "ManifestServiceInteractionLog"),
            type = "structure",
            name = "ManifestServiceInteractionLog",
            target_id = id.from(_N, "ManifestServiceInteractionLog"),
            target = M.ManifestServiceInteractionLog,
        }),
    },
})

M.AdMarkerPassthrough = schema.new({
    id = id.from(_N, "AdMarkerPassthrough"),
    type = "structure",
    members = {
        Enabled = schema.new({
            id = id.from(_N, "AdMarkerPassthrough", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.ManifestProcessingRules = schema.new({
    id = id.from(_N, "ManifestProcessingRules"),
    type = "structure",
    members = {
        AdMarkerPassthrough = schema.new({
            id = id.from(_N, "ManifestProcessingRules", "AdMarkerPassthrough"),
            type = "structure",
            name = "AdMarkerPassthrough",
            target_id = id.from(_N, "AdMarkerPassthrough"),
            target = M.AdMarkerPassthrough,
        }),
    },
})

M.PlaybackConfiguration = schema.new({
    id = id.from(_N, "PlaybackConfiguration"),
    type = "structure",
    members = {
        AdDecisionServerUrl = schema.new({
            id = id.from(_N, "PlaybackConfiguration", "AdDecisionServerUrl"),
            type = "string",
            name = "AdDecisionServerUrl",
            target_id = prelude.String.id,
        }),
        AvailSuppression = schema.new({
            id = id.from(_N, "PlaybackConfiguration", "AvailSuppression"),
            type = "structure",
            name = "AvailSuppression",
            target_id = id.from(_N, "AvailSuppression"),
            target = M.AvailSuppression,
        }),
        Bumper = schema.new({
            id = id.from(_N, "PlaybackConfiguration", "Bumper"),
            type = "structure",
            name = "Bumper",
            target_id = id.from(_N, "Bumper"),
            target = M.Bumper,
        }),
        CdnConfiguration = schema.new({
            id = id.from(_N, "PlaybackConfiguration", "CdnConfiguration"),
            type = "structure",
            name = "CdnConfiguration",
            target_id = id.from(_N, "CdnConfiguration"),
            target = M.CdnConfiguration,
        }),
        ConfigurationAliases = schema.new({
            id = id.from(_N, "PlaybackConfiguration", "ConfigurationAliases"),
            type = "map",
            name = "ConfigurationAliases",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
        DashConfiguration = schema.new({
            id = id.from(_N, "PlaybackConfiguration", "DashConfiguration"),
            type = "structure",
            name = "DashConfiguration",
            target_id = id.from(_N, "DashConfiguration"),
            target = M.DashConfiguration,
        }),
        HlsConfiguration = schema.new({
            id = id.from(_N, "PlaybackConfiguration", "HlsConfiguration"),
            type = "structure",
            name = "HlsConfiguration",
            target_id = id.from(_N, "HlsConfiguration"),
            target = M.HlsConfiguration,
        }),
        InsertionMode = schema.new({
            id = id.from(_N, "PlaybackConfiguration", "InsertionMode"),
            type = "string",
            name = "InsertionMode",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "STITCHED_ONLY" },
            },
        }),
        LivePreRollConfiguration = schema.new({
            id = id.from(_N, "PlaybackConfiguration", "LivePreRollConfiguration"),
            type = "structure",
            name = "LivePreRollConfiguration",
            target_id = id.from(_N, "LivePreRollConfiguration"),
            target = M.LivePreRollConfiguration,
        }),
        LogConfiguration = schema.new({
            id = id.from(_N, "PlaybackConfiguration", "LogConfiguration"),
            type = "structure",
            name = "LogConfiguration",
            target_id = id.from(_N, "LogConfiguration"),
            target = M.LogConfiguration,
        }),
        ManifestProcessingRules = schema.new({
            id = id.from(_N, "PlaybackConfiguration", "ManifestProcessingRules"),
            type = "structure",
            name = "ManifestProcessingRules",
            target_id = id.from(_N, "ManifestProcessingRules"),
            target = M.ManifestProcessingRules,
        }),
        Name = schema.new({
            id = id.from(_N, "PlaybackConfiguration", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        PersonalizationThresholdSeconds = schema.new({
            id = id.from(_N, "PlaybackConfiguration", "PersonalizationThresholdSeconds"),
            type = "integer",
            name = "PersonalizationThresholdSeconds",
            target_id = prelude.Integer.id,
        }),
        PlaybackConfigurationArn = schema.new({
            id = id.from(_N, "PlaybackConfiguration", "PlaybackConfigurationArn"),
            type = "string",
            name = "PlaybackConfigurationArn",
            target_id = prelude.String.id,
        }),
        PlaybackEndpointPrefix = schema.new({
            id = id.from(_N, "PlaybackConfiguration", "PlaybackEndpointPrefix"),
            type = "string",
            name = "PlaybackEndpointPrefix",
            target_id = prelude.String.id,
        }),
        SessionInitializationEndpointPrefix = schema.new({
            id = id.from(_N, "PlaybackConfiguration", "SessionInitializationEndpointPrefix"),
            type = "string",
            name = "SessionInitializationEndpointPrefix",
            target_id = prelude.String.id,
        }),
        SlateAdUrl = schema.new({
            id = id.from(_N, "PlaybackConfiguration", "SlateAdUrl"),
            type = "string",
            name = "SlateAdUrl",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "PlaybackConfiguration", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        TranscodeProfileName = schema.new({
            id = id.from(_N, "PlaybackConfiguration", "TranscodeProfileName"),
            type = "string",
            name = "TranscodeProfileName",
            target_id = prelude.String.id,
        }),
        VideoContentSourceUrl = schema.new({
            id = id.from(_N, "PlaybackConfiguration", "VideoContentSourceUrl"),
            type = "string",
            name = "VideoContentSourceUrl",
            target_id = prelude.String.id,
        }),
        AdConditioningConfiguration = schema.new({
            id = id.from(_N, "PlaybackConfiguration", "AdConditioningConfiguration"),
            type = "structure",
            name = "AdConditioningConfiguration",
            target_id = id.from(_N, "AdConditioningConfiguration"),
            target = M.AdConditioningConfiguration,
        }),
        AdDecisionServerConfiguration = schema.new({
            id = id.from(_N, "PlaybackConfiguration", "AdDecisionServerConfiguration"),
            type = "structure",
            name = "AdDecisionServerConfiguration",
            target_id = id.from(_N, "AdDecisionServerConfiguration"),
            target = M.AdDecisionServerConfiguration,
        }),
    },
})

M.PrefetchConsumption = schema.new({
    id = id.from(_N, "PrefetchConsumption"),
    type = "structure",
    members = {
        AvailMatchingCriteria = schema.new({
            id = id.from(_N, "PrefetchConsumption", "AvailMatchingCriteria"),
            type = "list",
            name = "AvailMatchingCriteria",
            target_id = prelude.Document.id,
            list_member = M.AvailMatchingCriteria,
        }),
        EndTime = schema.new({
            id = id.from(_N, "PrefetchConsumption", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartTime = schema.new({
            id = id.from(_N, "PrefetchConsumption", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
    },
})

M.RecurringConsumption = schema.new({
    id = id.from(_N, "RecurringConsumption"),
    type = "structure",
    members = {
        RetrievedAdExpirationSeconds = schema.new({
            id = id.from(_N, "RecurringConsumption", "RetrievedAdExpirationSeconds"),
            type = "integer",
            name = "RetrievedAdExpirationSeconds",
            target_id = prelude.Integer.id,
        }),
        AvailMatchingCriteria = schema.new({
            id = id.from(_N, "RecurringConsumption", "AvailMatchingCriteria"),
            type = "list",
            name = "AvailMatchingCriteria",
            target_id = prelude.Document.id,
            list_member = M.AvailMatchingCriteria,
        }),
    },
})

M.TrafficShapingRetrievalWindow = schema.new({
    id = id.from(_N, "TrafficShapingRetrievalWindow"),
    type = "structure",
    members = {
        RetrievalWindowDurationSeconds = schema.new({
            id = id.from(_N, "TrafficShapingRetrievalWindow", "RetrievalWindowDurationSeconds"),
            type = "integer",
            name = "RetrievalWindowDurationSeconds",
            target_id = prelude.Integer.id,
        }),
    },
})

M.TrafficShapingTpsConfiguration = schema.new({
    id = id.from(_N, "TrafficShapingTpsConfiguration"),
    type = "structure",
    members = {
        PeakTps = schema.new({
            id = id.from(_N, "TrafficShapingTpsConfiguration", "PeakTps"),
            type = "integer",
            name = "PeakTps",
            target_id = prelude.Integer.id,
        }),
        PeakConcurrentUsers = schema.new({
            id = id.from(_N, "TrafficShapingTpsConfiguration", "PeakConcurrentUsers"),
            type = "integer",
            name = "PeakConcurrentUsers",
            target_id = prelude.Integer.id,
        }),
    },
})

M.RecurringRetrieval = schema.new({
    id = id.from(_N, "RecurringRetrieval"),
    type = "structure",
    members = {
        DynamicVariables = schema.new({
            id = id.from(_N, "RecurringRetrieval", "DynamicVariables"),
            type = "map",
            name = "DynamicVariables",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        DelayAfterAvailEndSeconds = schema.new({
            id = id.from(_N, "RecurringRetrieval", "DelayAfterAvailEndSeconds"),
            type = "integer",
            name = "DelayAfterAvailEndSeconds",
            target_id = prelude.Integer.id,
        }),
        TrafficShapingType = schema.new({
            id = id.from(_N, "RecurringRetrieval", "TrafficShapingType"),
            type = "string",
            name = "TrafficShapingType",
            target_id = prelude.String.id,
        }),
        TrafficShapingRetrievalWindow = schema.new({
            id = id.from(_N, "RecurringRetrieval", "TrafficShapingRetrievalWindow"),
            type = "structure",
            name = "TrafficShapingRetrievalWindow",
            target_id = id.from(_N, "TrafficShapingRetrievalWindow"),
            target = M.TrafficShapingRetrievalWindow,
        }),
        TrafficShapingTpsConfiguration = schema.new({
            id = id.from(_N, "RecurringRetrieval", "TrafficShapingTpsConfiguration"),
            type = "structure",
            name = "TrafficShapingTpsConfiguration",
            target_id = id.from(_N, "TrafficShapingTpsConfiguration"),
            target = M.TrafficShapingTpsConfiguration,
        }),
    },
})

M.RecurringPrefetchConfiguration = schema.new({
    id = id.from(_N, "RecurringPrefetchConfiguration"),
    type = "structure",
    members = {
        StartTime = schema.new({
            id = id.from(_N, "RecurringPrefetchConfiguration", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        EndTime = schema.new({
            id = id.from(_N, "RecurringPrefetchConfiguration", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RecurringConsumption = schema.new({
            id = id.from(_N, "RecurringPrefetchConfiguration", "RecurringConsumption"),
            type = "structure",
            name = "RecurringConsumption",
            target_id = id.from(_N, "RecurringConsumption"),
            target = M.RecurringConsumption,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RecurringRetrieval = schema.new({
            id = id.from(_N, "RecurringPrefetchConfiguration", "RecurringRetrieval"),
            type = "structure",
            name = "RecurringRetrieval",
            target_id = id.from(_N, "RecurringRetrieval"),
            target = M.RecurringRetrieval,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PrefetchRetrieval = schema.new({
    id = id.from(_N, "PrefetchRetrieval"),
    type = "structure",
    members = {
        DynamicVariables = schema.new({
            id = id.from(_N, "PrefetchRetrieval", "DynamicVariables"),
            type = "map",
            name = "DynamicVariables",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        EndTime = schema.new({
            id = id.from(_N, "PrefetchRetrieval", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartTime = schema.new({
            id = id.from(_N, "PrefetchRetrieval", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        TrafficShapingType = schema.new({
            id = id.from(_N, "PrefetchRetrieval", "TrafficShapingType"),
            type = "string",
            name = "TrafficShapingType",
            target_id = prelude.String.id,
        }),
        TrafficShapingRetrievalWindow = schema.new({
            id = id.from(_N, "PrefetchRetrieval", "TrafficShapingRetrievalWindow"),
            type = "structure",
            name = "TrafficShapingRetrievalWindow",
            target_id = id.from(_N, "TrafficShapingRetrievalWindow"),
            target = M.TrafficShapingRetrievalWindow,
        }),
        TrafficShapingTpsConfiguration = schema.new({
            id = id.from(_N, "PrefetchRetrieval", "TrafficShapingTpsConfiguration"),
            type = "structure",
            name = "TrafficShapingTpsConfiguration",
            target_id = id.from(_N, "TrafficShapingTpsConfiguration"),
            target = M.TrafficShapingTpsConfiguration,
        }),
    },
})

M.PrefetchSchedule = schema.new({
    id = id.from(_N, "PrefetchSchedule"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "PrefetchSchedule", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Consumption = schema.new({
            id = id.from(_N, "PrefetchSchedule", "Consumption"),
            type = "structure",
            name = "Consumption",
            target_id = id.from(_N, "PrefetchConsumption"),
            target = M.PrefetchConsumption,
        }),
        Name = schema.new({
            id = id.from(_N, "PrefetchSchedule", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PlaybackConfigurationName = schema.new({
            id = id.from(_N, "PrefetchSchedule", "PlaybackConfigurationName"),
            type = "string",
            name = "PlaybackConfigurationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Retrieval = schema.new({
            id = id.from(_N, "PrefetchSchedule", "Retrieval"),
            type = "structure",
            name = "Retrieval",
            target_id = id.from(_N, "PrefetchRetrieval"),
            target = M.PrefetchRetrieval,
        }),
        ScheduleType = schema.new({
            id = id.from(_N, "PrefetchSchedule", "ScheduleType"),
            type = "string",
            name = "ScheduleType",
            target_id = prelude.String.id,
        }),
        RecurringPrefetchConfiguration = schema.new({
            id = id.from(_N, "PrefetchSchedule", "RecurringPrefetchConfiguration"),
            type = "structure",
            name = "RecurringPrefetchConfiguration",
            target_id = id.from(_N, "RecurringPrefetchConfiguration"),
            target = M.RecurringPrefetchConfiguration,
        }),
        StreamId = schema.new({
            id = id.from(_N, "PrefetchSchedule", "StreamId"),
            type = "string",
            name = "StreamId",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "PrefetchSchedule", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.ScheduleAdBreak = schema.new({
    id = id.from(_N, "ScheduleAdBreak"),
    type = "structure",
    members = {
        ApproximateDurationSeconds = schema.new({
            id = id.from(_N, "ScheduleAdBreak", "ApproximateDurationSeconds"),
            type = "long",
            name = "ApproximateDurationSeconds",
            target_id = prelude.Long.id,
        }),
        ApproximateStartTime = schema.new({
            id = id.from(_N, "ScheduleAdBreak", "ApproximateStartTime"),
            type = "timestamp",
            name = "ApproximateStartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        SourceLocationName = schema.new({
            id = id.from(_N, "ScheduleAdBreak", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
        }),
        VodSourceName = schema.new({
            id = id.from(_N, "ScheduleAdBreak", "VodSourceName"),
            type = "string",
            name = "VodSourceName",
            target_id = prelude.String.id,
        }),
    },
})

M.ScheduleEntry = schema.new({
    id = id.from(_N, "ScheduleEntry"),
    type = "structure",
    members = {
        ApproximateDurationSeconds = schema.new({
            id = id.from(_N, "ScheduleEntry", "ApproximateDurationSeconds"),
            type = "long",
            name = "ApproximateDurationSeconds",
            target_id = prelude.Long.id,
        }),
        ApproximateStartTime = schema.new({
            id = id.from(_N, "ScheduleEntry", "ApproximateStartTime"),
            type = "timestamp",
            name = "ApproximateStartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        Arn = schema.new({
            id = id.from(_N, "ScheduleEntry", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChannelName = schema.new({
            id = id.from(_N, "ScheduleEntry", "ChannelName"),
            type = "string",
            name = "ChannelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LiveSourceName = schema.new({
            id = id.from(_N, "ScheduleEntry", "LiveSourceName"),
            type = "string",
            name = "LiveSourceName",
            target_id = prelude.String.id,
        }),
        ProgramName = schema.new({
            id = id.from(_N, "ScheduleEntry", "ProgramName"),
            type = "string",
            name = "ProgramName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScheduleAdBreaks = schema.new({
            id = id.from(_N, "ScheduleEntry", "ScheduleAdBreaks"),
            type = "list",
            name = "ScheduleAdBreaks",
            target_id = prelude.Document.id,
            list_member = M.ScheduleAdBreak,
        }),
        ScheduleEntryType = schema.new({
            id = id.from(_N, "ScheduleEntry", "ScheduleEntryType"),
            type = "string",
            name = "ScheduleEntryType",
            target_id = prelude.String.id,
        }),
        SourceLocationName = schema.new({
            id = id.from(_N, "ScheduleEntry", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VodSourceName = schema.new({
            id = id.from(_N, "ScheduleEntry", "VodSourceName"),
            type = "string",
            name = "VodSourceName",
            target_id = prelude.String.id,
        }),
        Audiences = schema.new({
            id = id.from(_N, "ScheduleEntry", "Audiences"),
            type = "list",
            name = "Audiences",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.SegmentDeliveryConfiguration = schema.new({
    id = id.from(_N, "SegmentDeliveryConfiguration"),
    type = "structure",
    members = {
        BaseUrl = schema.new({
            id = id.from(_N, "SegmentDeliveryConfiguration", "BaseUrl"),
            type = "string",
            name = "BaseUrl",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "SegmentDeliveryConfiguration", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.SecretsManagerAccessTokenConfiguration = schema.new({
    id = id.from(_N, "SecretsManagerAccessTokenConfiguration"),
    type = "structure",
    members = {
        HeaderName = schema.new({
            id = id.from(_N, "SecretsManagerAccessTokenConfiguration", "HeaderName"),
            type = "string",
            name = "HeaderName",
            target_id = prelude.String.id,
        }),
        SecretArn = schema.new({
            id = id.from(_N, "SecretsManagerAccessTokenConfiguration", "SecretArn"),
            type = "string",
            name = "SecretArn",
            target_id = prelude.String.id,
        }),
        SecretStringKey = schema.new({
            id = id.from(_N, "SecretsManagerAccessTokenConfiguration", "SecretStringKey"),
            type = "string",
            name = "SecretStringKey",
            target_id = prelude.String.id,
        }),
    },
})

M.AccessConfiguration = schema.new({
    id = id.from(_N, "AccessConfiguration"),
    type = "structure",
    members = {
        AccessType = schema.new({
            id = id.from(_N, "AccessConfiguration", "AccessType"),
            type = "string",
            name = "AccessType",
            target_id = prelude.String.id,
        }),
        SecretsManagerAccessTokenConfiguration = schema.new({
            id = id.from(_N, "AccessConfiguration", "SecretsManagerAccessTokenConfiguration"),
            type = "structure",
            name = "SecretsManagerAccessTokenConfiguration",
            target_id = id.from(_N, "SecretsManagerAccessTokenConfiguration"),
            target = M.SecretsManagerAccessTokenConfiguration,
        }),
    },
})

M.DefaultSegmentDeliveryConfiguration = schema.new({
    id = id.from(_N, "DefaultSegmentDeliveryConfiguration"),
    type = "structure",
    members = {
        BaseUrl = schema.new({
            id = id.from(_N, "DefaultSegmentDeliveryConfiguration", "BaseUrl"),
            type = "string",
            name = "BaseUrl",
            target_id = prelude.String.id,
        }),
    },
})

M.HttpConfiguration = schema.new({
    id = id.from(_N, "HttpConfiguration"),
    type = "structure",
    members = {
        BaseUrl = schema.new({
            id = id.from(_N, "HttpConfiguration", "BaseUrl"),
            type = "string",
            name = "BaseUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SourceLocation = schema.new({
    id = id.from(_N, "SourceLocation"),
    type = "structure",
    members = {
        AccessConfiguration = schema.new({
            id = id.from(_N, "SourceLocation", "AccessConfiguration"),
            type = "structure",
            name = "AccessConfiguration",
            target_id = id.from(_N, "AccessConfiguration"),
            target = M.AccessConfiguration,
        }),
        Arn = schema.new({
            id = id.from(_N, "SourceLocation", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreationTime = schema.new({
            id = id.from(_N, "SourceLocation", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        DefaultSegmentDeliveryConfiguration = schema.new({
            id = id.from(_N, "SourceLocation", "DefaultSegmentDeliveryConfiguration"),
            type = "structure",
            name = "DefaultSegmentDeliveryConfiguration",
            target_id = id.from(_N, "DefaultSegmentDeliveryConfiguration"),
            target = M.DefaultSegmentDeliveryConfiguration,
        }),
        HttpConfiguration = schema.new({
            id = id.from(_N, "SourceLocation", "HttpConfiguration"),
            type = "structure",
            name = "HttpConfiguration",
            target_id = id.from(_N, "HttpConfiguration"),
            target = M.HttpConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "SourceLocation", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        SegmentDeliveryConfigurations = schema.new({
            id = id.from(_N, "SourceLocation", "SegmentDeliveryConfigurations"),
            type = "list",
            name = "SegmentDeliveryConfigurations",
            target_id = prelude.Document.id,
            list_member = M.SegmentDeliveryConfiguration,
        }),
        SourceLocationName = schema.new({
            id = id.from(_N, "SourceLocation", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "SourceLocation", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.VodSource = schema.new({
    id = id.from(_N, "VodSource"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "VodSource", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreationTime = schema.new({
            id = id.from(_N, "VodSource", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        HttpPackageConfigurations = schema.new({
            id = id.from(_N, "VodSource", "HttpPackageConfigurations"),
            type = "list",
            name = "HttpPackageConfigurations",
            target_id = prelude.Document.id,
            list_member = M.HttpPackageConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "VodSource", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        SourceLocationName = schema.new({
            id = id.from(_N, "VodSource", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "VodSource", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        VodSourceName = schema.new({
            id = id.from(_N, "VodSource", "VodSourceName"),
            type = "string",
            name = "VodSourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AdBreakOpportunity = schema.new({
    id = id.from(_N, "AdBreakOpportunity"),
    type = "structure",
    members = {
        OffsetMillis = schema.new({
            id = id.from(_N, "AdBreakOpportunity", "OffsetMillis"),
            type = "long",
            name = "OffsetMillis",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.BadRequestException = schema.new({
    id = id.from(_N, "BadRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "BadRequestException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteChannelPolicyInput = schema.new({
    id = id.from(_N, "DeleteChannelPolicyInput"),
    type = "structure",
    members = {
        ChannelName = schema.new({
            id = id.from(_N, "DeleteChannelPolicyInput", "ChannelName"),
            type = "string",
            name = "ChannelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteChannelPolicyOutput = schema.new({
    id = id.from(_N, "DeleteChannelPolicyOutput"),
    type = "structure",
})

M.GetChannelPolicyInput = schema.new({
    id = id.from(_N, "GetChannelPolicyInput"),
    type = "structure",
    members = {
        ChannelName = schema.new({
            id = id.from(_N, "GetChannelPolicyInput", "ChannelName"),
            type = "string",
            name = "ChannelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetChannelPolicyOutput = schema.new({
    id = id.from(_N, "GetChannelPolicyOutput"),
    type = "structure",
    members = {
        Policy = schema.new({
            id = id.from(_N, "GetChannelPolicyOutput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
        }),
    },
})

M.PutChannelPolicyInput = schema.new({
    id = id.from(_N, "PutChannelPolicyInput"),
    type = "structure",
    members = {
        ChannelName = schema.new({
            id = id.from(_N, "PutChannelPolicyInput", "ChannelName"),
            type = "string",
            name = "ChannelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Policy = schema.new({
            id = id.from(_N, "PutChannelPolicyInput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutChannelPolicyOutput = schema.new({
    id = id.from(_N, "PutChannelPolicyOutput"),
    type = "structure",
})

M.ConfigureLogsForChannelInput = schema.new({
    id = id.from(_N, "ConfigureLogsForChannelInput"),
    type = "structure",
    members = {
        ChannelName = schema.new({
            id = id.from(_N, "ConfigureLogsForChannelInput", "ChannelName"),
            type = "string",
            name = "ChannelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LogTypes = schema.new({
            id = id.from(_N, "ConfigureLogsForChannelInput", "LogTypes"),
            type = "list",
            name = "LogTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConfigureLogsForChannelOutput = schema.new({
    id = id.from(_N, "ConfigureLogsForChannelOutput"),
    type = "structure",
    members = {
        ChannelName = schema.new({
            id = id.from(_N, "ConfigureLogsForChannelOutput", "ChannelName"),
            type = "string",
            name = "ChannelName",
            target_id = prelude.String.id,
        }),
        LogTypes = schema.new({
            id = id.from(_N, "ConfigureLogsForChannelOutput", "LogTypes"),
            type = "list",
            name = "LogTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.RequestOutputItem = schema.new({
    id = id.from(_N, "RequestOutputItem"),
    type = "structure",
    members = {
        DashPlaylistSettings = schema.new({
            id = id.from(_N, "RequestOutputItem", "DashPlaylistSettings"),
            type = "structure",
            name = "DashPlaylistSettings",
            target_id = id.from(_N, "DashPlaylistSettings"),
            target = M.DashPlaylistSettings,
        }),
        HlsPlaylistSettings = schema.new({
            id = id.from(_N, "RequestOutputItem", "HlsPlaylistSettings"),
            type = "structure",
            name = "HlsPlaylistSettings",
            target_id = id.from(_N, "HlsPlaylistSettings"),
            target = M.HlsPlaylistSettings,
        }),
        ManifestName = schema.new({
            id = id.from(_N, "RequestOutputItem", "ManifestName"),
            type = "string",
            name = "ManifestName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceGroup = schema.new({
            id = id.from(_N, "RequestOutputItem", "SourceGroup"),
            type = "string",
            name = "SourceGroup",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TimeShiftConfiguration = schema.new({
    id = id.from(_N, "TimeShiftConfiguration"),
    type = "structure",
    members = {
        MaxTimeDelaySeconds = schema.new({
            id = id.from(_N, "TimeShiftConfiguration", "MaxTimeDelaySeconds"),
            type = "integer",
            name = "MaxTimeDelaySeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateChannelInput = schema.new({
    id = id.from(_N, "CreateChannelInput"),
    type = "structure",
    members = {
        ChannelName = schema.new({
            id = id.from(_N, "CreateChannelInput", "ChannelName"),
            type = "string",
            name = "ChannelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        FillerSlate = schema.new({
            id = id.from(_N, "CreateChannelInput", "FillerSlate"),
            type = "structure",
            name = "FillerSlate",
            target_id = id.from(_N, "SlateSource"),
            target = M.SlateSource,
        }),
        Outputs = schema.new({
            id = id.from(_N, "CreateChannelInput", "Outputs"),
            type = "list",
            name = "Outputs",
            target_id = prelude.Document.id,
            list_member = M.RequestOutputItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PlaybackMode = schema.new({
            id = id.from(_N, "CreateChannelInput", "PlaybackMode"),
            type = "string",
            name = "PlaybackMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateChannelInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        Tier = schema.new({
            id = id.from(_N, "CreateChannelInput", "Tier"),
            type = "string",
            name = "Tier",
            target_id = prelude.String.id,
        }),
        TimeShiftConfiguration = schema.new({
            id = id.from(_N, "CreateChannelInput", "TimeShiftConfiguration"),
            type = "structure",
            name = "TimeShiftConfiguration",
            target_id = id.from(_N, "TimeShiftConfiguration"),
            target = M.TimeShiftConfiguration,
        }),
        Audiences = schema.new({
            id = id.from(_N, "CreateChannelInput", "Audiences"),
            type = "list",
            name = "Audiences",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateChannelOutput = schema.new({
    id = id.from(_N, "CreateChannelOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateChannelOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        ChannelName = schema.new({
            id = id.from(_N, "CreateChannelOutput", "ChannelName"),
            type = "string",
            name = "ChannelName",
            target_id = prelude.String.id,
        }),
        ChannelState = schema.new({
            id = id.from(_N, "CreateChannelOutput", "ChannelState"),
            type = "string",
            name = "ChannelState",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "CreateChannelOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        FillerSlate = schema.new({
            id = id.from(_N, "CreateChannelOutput", "FillerSlate"),
            type = "structure",
            name = "FillerSlate",
            target_id = id.from(_N, "SlateSource"),
            target = M.SlateSource,
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "CreateChannelOutput", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        Outputs = schema.new({
            id = id.from(_N, "CreateChannelOutput", "Outputs"),
            type = "list",
            name = "Outputs",
            target_id = prelude.Document.id,
            list_member = M.ResponseOutputItem,
        }),
        PlaybackMode = schema.new({
            id = id.from(_N, "CreateChannelOutput", "PlaybackMode"),
            type = "string",
            name = "PlaybackMode",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateChannelOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        Tier = schema.new({
            id = id.from(_N, "CreateChannelOutput", "Tier"),
            type = "string",
            name = "Tier",
            target_id = prelude.String.id,
        }),
        TimeShiftConfiguration = schema.new({
            id = id.from(_N, "CreateChannelOutput", "TimeShiftConfiguration"),
            type = "structure",
            name = "TimeShiftConfiguration",
            target_id = id.from(_N, "TimeShiftConfiguration"),
            target = M.TimeShiftConfiguration,
        }),
        Audiences = schema.new({
            id = id.from(_N, "CreateChannelOutput", "Audiences"),
            type = "list",
            name = "Audiences",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DeleteChannelInput = schema.new({
    id = id.from(_N, "DeleteChannelInput"),
    type = "structure",
    members = {
        ChannelName = schema.new({
            id = id.from(_N, "DeleteChannelInput", "ChannelName"),
            type = "string",
            name = "ChannelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteChannelOutput = schema.new({
    id = id.from(_N, "DeleteChannelOutput"),
    type = "structure",
})

M.DescribeChannelInput = schema.new({
    id = id.from(_N, "DescribeChannelInput"),
    type = "structure",
    members = {
        ChannelName = schema.new({
            id = id.from(_N, "DescribeChannelInput", "ChannelName"),
            type = "string",
            name = "ChannelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeChannelOutput = schema.new({
    id = id.from(_N, "DescribeChannelOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "DescribeChannelOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        ChannelName = schema.new({
            id = id.from(_N, "DescribeChannelOutput", "ChannelName"),
            type = "string",
            name = "ChannelName",
            target_id = prelude.String.id,
        }),
        ChannelState = schema.new({
            id = id.from(_N, "DescribeChannelOutput", "ChannelState"),
            type = "string",
            name = "ChannelState",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "DescribeChannelOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        FillerSlate = schema.new({
            id = id.from(_N, "DescribeChannelOutput", "FillerSlate"),
            type = "structure",
            name = "FillerSlate",
            target_id = id.from(_N, "SlateSource"),
            target = M.SlateSource,
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "DescribeChannelOutput", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        Outputs = schema.new({
            id = id.from(_N, "DescribeChannelOutput", "Outputs"),
            type = "list",
            name = "Outputs",
            target_id = prelude.Document.id,
            list_member = M.ResponseOutputItem,
        }),
        PlaybackMode = schema.new({
            id = id.from(_N, "DescribeChannelOutput", "PlaybackMode"),
            type = "string",
            name = "PlaybackMode",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "DescribeChannelOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        Tier = schema.new({
            id = id.from(_N, "DescribeChannelOutput", "Tier"),
            type = "string",
            name = "Tier",
            target_id = prelude.String.id,
        }),
        LogConfiguration = schema.new({
            id = id.from(_N, "DescribeChannelOutput", "LogConfiguration"),
            type = "structure",
            name = "LogConfiguration",
            target_id = id.from(_N, "LogConfigurationForChannel"),
            target = M.LogConfigurationForChannel,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TimeShiftConfiguration = schema.new({
            id = id.from(_N, "DescribeChannelOutput", "TimeShiftConfiguration"),
            type = "structure",
            name = "TimeShiftConfiguration",
            target_id = id.from(_N, "TimeShiftConfiguration"),
            target = M.TimeShiftConfiguration,
        }),
        Audiences = schema.new({
            id = id.from(_N, "DescribeChannelOutput", "Audiences"),
            type = "list",
            name = "Audiences",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.GetChannelScheduleInput = schema.new({
    id = id.from(_N, "GetChannelScheduleInput"),
    type = "structure",
    members = {
        ChannelName = schema.new({
            id = id.from(_N, "GetChannelScheduleInput", "ChannelName"),
            type = "string",
            name = "ChannelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        DurationMinutes = schema.new({
            id = id.from(_N, "GetChannelScheduleInput", "DurationMinutes"),
            type = "string",
            name = "DurationMinutes",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "durationMinutes" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetChannelScheduleInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetChannelScheduleInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        Audience = schema.new({
            id = id.from(_N, "GetChannelScheduleInput", "Audience"),
            type = "string",
            name = "Audience",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "audience" },
            },
        }),
    },
})

M.GetChannelScheduleOutput = schema.new({
    id = id.from(_N, "GetChannelScheduleOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "GetChannelScheduleOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.ScheduleEntry,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetChannelScheduleOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListChannelsInput = schema.new({
    id = id.from(_N, "ListChannelsInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListChannelsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListChannelsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListChannelsOutput = schema.new({
    id = id.from(_N, "ListChannelsOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ListChannelsOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.Channel,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListChannelsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.Transition = schema.new({
    id = id.from(_N, "Transition"),
    type = "structure",
    members = {
        DurationMillis = schema.new({
            id = id.from(_N, "Transition", "DurationMillis"),
            type = "long",
            name = "DurationMillis",
            target_id = prelude.Long.id,
        }),
        RelativePosition = schema.new({
            id = id.from(_N, "Transition", "RelativePosition"),
            type = "string",
            name = "RelativePosition",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RelativeProgram = schema.new({
            id = id.from(_N, "Transition", "RelativeProgram"),
            type = "string",
            name = "RelativeProgram",
            target_id = prelude.String.id,
        }),
        ScheduledStartTimeMillis = schema.new({
            id = id.from(_N, "Transition", "ScheduledStartTimeMillis"),
            type = "long",
            name = "ScheduledStartTimeMillis",
            target_id = prelude.Long.id,
        }),
        Type = schema.new({
            id = id.from(_N, "Transition", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ScheduleConfiguration = schema.new({
    id = id.from(_N, "ScheduleConfiguration"),
    type = "structure",
    members = {
        Transition = schema.new({
            id = id.from(_N, "ScheduleConfiguration", "Transition"),
            type = "structure",
            name = "Transition",
            target_id = id.from(_N, "Transition"),
            target = M.Transition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClipRange = schema.new({
            id = id.from(_N, "ScheduleConfiguration", "ClipRange"),
            type = "structure",
            name = "ClipRange",
            target_id = id.from(_N, "ClipRange"),
            target = M.ClipRange,
        }),
    },
})

M.CreateProgramInput = schema.new({
    id = id.from(_N, "CreateProgramInput"),
    type = "structure",
    members = {
        AdBreaks = schema.new({
            id = id.from(_N, "CreateProgramInput", "AdBreaks"),
            type = "list",
            name = "AdBreaks",
            target_id = prelude.Document.id,
            list_member = M.AdBreak,
        }),
        ChannelName = schema.new({
            id = id.from(_N, "CreateProgramInput", "ChannelName"),
            type = "string",
            name = "ChannelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        LiveSourceName = schema.new({
            id = id.from(_N, "CreateProgramInput", "LiveSourceName"),
            type = "string",
            name = "LiveSourceName",
            target_id = prelude.String.id,
        }),
        ProgramName = schema.new({
            id = id.from(_N, "CreateProgramInput", "ProgramName"),
            type = "string",
            name = "ProgramName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ScheduleConfiguration = schema.new({
            id = id.from(_N, "CreateProgramInput", "ScheduleConfiguration"),
            type = "structure",
            name = "ScheduleConfiguration",
            target_id = id.from(_N, "ScheduleConfiguration"),
            target = M.ScheduleConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceLocationName = schema.new({
            id = id.from(_N, "CreateProgramInput", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VodSourceName = schema.new({
            id = id.from(_N, "CreateProgramInput", "VodSourceName"),
            type = "string",
            name = "VodSourceName",
            target_id = prelude.String.id,
        }),
        AudienceMedia = schema.new({
            id = id.from(_N, "CreateProgramInput", "AudienceMedia"),
            type = "list",
            name = "AudienceMedia",
            target_id = prelude.Document.id,
            list_member = M.AudienceMedia,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateProgramInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.CreateProgramOutput = schema.new({
    id = id.from(_N, "CreateProgramOutput"),
    type = "structure",
    members = {
        AdBreaks = schema.new({
            id = id.from(_N, "CreateProgramOutput", "AdBreaks"),
            type = "list",
            name = "AdBreaks",
            target_id = prelude.Document.id,
            list_member = M.AdBreak,
        }),
        Arn = schema.new({
            id = id.from(_N, "CreateProgramOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        ChannelName = schema.new({
            id = id.from(_N, "CreateProgramOutput", "ChannelName"),
            type = "string",
            name = "ChannelName",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "CreateProgramOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        LiveSourceName = schema.new({
            id = id.from(_N, "CreateProgramOutput", "LiveSourceName"),
            type = "string",
            name = "LiveSourceName",
            target_id = prelude.String.id,
        }),
        ProgramName = schema.new({
            id = id.from(_N, "CreateProgramOutput", "ProgramName"),
            type = "string",
            name = "ProgramName",
            target_id = prelude.String.id,
        }),
        ScheduledStartTime = schema.new({
            id = id.from(_N, "CreateProgramOutput", "ScheduledStartTime"),
            type = "timestamp",
            name = "ScheduledStartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        SourceLocationName = schema.new({
            id = id.from(_N, "CreateProgramOutput", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
        }),
        VodSourceName = schema.new({
            id = id.from(_N, "CreateProgramOutput", "VodSourceName"),
            type = "string",
            name = "VodSourceName",
            target_id = prelude.String.id,
        }),
        ClipRange = schema.new({
            id = id.from(_N, "CreateProgramOutput", "ClipRange"),
            type = "structure",
            name = "ClipRange",
            target_id = id.from(_N, "ClipRange"),
            target = M.ClipRange,
        }),
        DurationMillis = schema.new({
            id = id.from(_N, "CreateProgramOutput", "DurationMillis"),
            type = "long",
            name = "DurationMillis",
            target_id = prelude.Long.id,
        }),
        AudienceMedia = schema.new({
            id = id.from(_N, "CreateProgramOutput", "AudienceMedia"),
            type = "list",
            name = "AudienceMedia",
            target_id = prelude.Document.id,
            list_member = M.AudienceMedia,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateProgramOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.DeleteProgramInput = schema.new({
    id = id.from(_N, "DeleteProgramInput"),
    type = "structure",
    members = {
        ChannelName = schema.new({
            id = id.from(_N, "DeleteProgramInput", "ChannelName"),
            type = "string",
            name = "ChannelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ProgramName = schema.new({
            id = id.from(_N, "DeleteProgramInput", "ProgramName"),
            type = "string",
            name = "ProgramName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteProgramOutput = schema.new({
    id = id.from(_N, "DeleteProgramOutput"),
    type = "structure",
})

M.DescribeProgramInput = schema.new({
    id = id.from(_N, "DescribeProgramInput"),
    type = "structure",
    members = {
        ChannelName = schema.new({
            id = id.from(_N, "DescribeProgramInput", "ChannelName"),
            type = "string",
            name = "ChannelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ProgramName = schema.new({
            id = id.from(_N, "DescribeProgramInput", "ProgramName"),
            type = "string",
            name = "ProgramName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeProgramOutput = schema.new({
    id = id.from(_N, "DescribeProgramOutput"),
    type = "structure",
    members = {
        AdBreaks = schema.new({
            id = id.from(_N, "DescribeProgramOutput", "AdBreaks"),
            type = "list",
            name = "AdBreaks",
            target_id = prelude.Document.id,
            list_member = M.AdBreak,
        }),
        Arn = schema.new({
            id = id.from(_N, "DescribeProgramOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        ChannelName = schema.new({
            id = id.from(_N, "DescribeProgramOutput", "ChannelName"),
            type = "string",
            name = "ChannelName",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "DescribeProgramOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        LiveSourceName = schema.new({
            id = id.from(_N, "DescribeProgramOutput", "LiveSourceName"),
            type = "string",
            name = "LiveSourceName",
            target_id = prelude.String.id,
        }),
        ProgramName = schema.new({
            id = id.from(_N, "DescribeProgramOutput", "ProgramName"),
            type = "string",
            name = "ProgramName",
            target_id = prelude.String.id,
        }),
        ScheduledStartTime = schema.new({
            id = id.from(_N, "DescribeProgramOutput", "ScheduledStartTime"),
            type = "timestamp",
            name = "ScheduledStartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        SourceLocationName = schema.new({
            id = id.from(_N, "DescribeProgramOutput", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
        }),
        VodSourceName = schema.new({
            id = id.from(_N, "DescribeProgramOutput", "VodSourceName"),
            type = "string",
            name = "VodSourceName",
            target_id = prelude.String.id,
        }),
        ClipRange = schema.new({
            id = id.from(_N, "DescribeProgramOutput", "ClipRange"),
            type = "structure",
            name = "ClipRange",
            target_id = id.from(_N, "ClipRange"),
            target = M.ClipRange,
        }),
        DurationMillis = schema.new({
            id = id.from(_N, "DescribeProgramOutput", "DurationMillis"),
            type = "long",
            name = "DurationMillis",
            target_id = prelude.Long.id,
        }),
        AudienceMedia = schema.new({
            id = id.from(_N, "DescribeProgramOutput", "AudienceMedia"),
            type = "list",
            name = "AudienceMedia",
            target_id = prelude.Document.id,
            list_member = M.AudienceMedia,
        }),
        Tags = schema.new({
            id = id.from(_N, "DescribeProgramOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.UpdateProgramTransition = schema.new({
    id = id.from(_N, "UpdateProgramTransition"),
    type = "structure",
    members = {
        ScheduledStartTimeMillis = schema.new({
            id = id.from(_N, "UpdateProgramTransition", "ScheduledStartTimeMillis"),
            type = "long",
            name = "ScheduledStartTimeMillis",
            target_id = prelude.Long.id,
        }),
        DurationMillis = schema.new({
            id = id.from(_N, "UpdateProgramTransition", "DurationMillis"),
            type = "long",
            name = "DurationMillis",
            target_id = prelude.Long.id,
        }),
    },
})

M.UpdateProgramScheduleConfiguration = schema.new({
    id = id.from(_N, "UpdateProgramScheduleConfiguration"),
    type = "structure",
    members = {
        Transition = schema.new({
            id = id.from(_N, "UpdateProgramScheduleConfiguration", "Transition"),
            type = "structure",
            name = "Transition",
            target_id = id.from(_N, "UpdateProgramTransition"),
            target = M.UpdateProgramTransition,
        }),
        ClipRange = schema.new({
            id = id.from(_N, "UpdateProgramScheduleConfiguration", "ClipRange"),
            type = "structure",
            name = "ClipRange",
            target_id = id.from(_N, "ClipRange"),
            target = M.ClipRange,
        }),
    },
})

M.UpdateProgramInput = schema.new({
    id = id.from(_N, "UpdateProgramInput"),
    type = "structure",
    members = {
        AdBreaks = schema.new({
            id = id.from(_N, "UpdateProgramInput", "AdBreaks"),
            type = "list",
            name = "AdBreaks",
            target_id = prelude.Document.id,
            list_member = M.AdBreak,
        }),
        ChannelName = schema.new({
            id = id.from(_N, "UpdateProgramInput", "ChannelName"),
            type = "string",
            name = "ChannelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ProgramName = schema.new({
            id = id.from(_N, "UpdateProgramInput", "ProgramName"),
            type = "string",
            name = "ProgramName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ScheduleConfiguration = schema.new({
            id = id.from(_N, "UpdateProgramInput", "ScheduleConfiguration"),
            type = "structure",
            name = "ScheduleConfiguration",
            target_id = id.from(_N, "UpdateProgramScheduleConfiguration"),
            target = M.UpdateProgramScheduleConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AudienceMedia = schema.new({
            id = id.from(_N, "UpdateProgramInput", "AudienceMedia"),
            type = "list",
            name = "AudienceMedia",
            target_id = prelude.Document.id,
            list_member = M.AudienceMedia,
        }),
    },
})

M.UpdateProgramOutput = schema.new({
    id = id.from(_N, "UpdateProgramOutput"),
    type = "structure",
    members = {
        AdBreaks = schema.new({
            id = id.from(_N, "UpdateProgramOutput", "AdBreaks"),
            type = "list",
            name = "AdBreaks",
            target_id = prelude.Document.id,
            list_member = M.AdBreak,
        }),
        Arn = schema.new({
            id = id.from(_N, "UpdateProgramOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        ChannelName = schema.new({
            id = id.from(_N, "UpdateProgramOutput", "ChannelName"),
            type = "string",
            name = "ChannelName",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "UpdateProgramOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        ProgramName = schema.new({
            id = id.from(_N, "UpdateProgramOutput", "ProgramName"),
            type = "string",
            name = "ProgramName",
            target_id = prelude.String.id,
        }),
        SourceLocationName = schema.new({
            id = id.from(_N, "UpdateProgramOutput", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
        }),
        VodSourceName = schema.new({
            id = id.from(_N, "UpdateProgramOutput", "VodSourceName"),
            type = "string",
            name = "VodSourceName",
            target_id = prelude.String.id,
        }),
        LiveSourceName = schema.new({
            id = id.from(_N, "UpdateProgramOutput", "LiveSourceName"),
            type = "string",
            name = "LiveSourceName",
            target_id = prelude.String.id,
        }),
        ClipRange = schema.new({
            id = id.from(_N, "UpdateProgramOutput", "ClipRange"),
            type = "structure",
            name = "ClipRange",
            target_id = id.from(_N, "ClipRange"),
            target = M.ClipRange,
        }),
        DurationMillis = schema.new({
            id = id.from(_N, "UpdateProgramOutput", "DurationMillis"),
            type = "long",
            name = "DurationMillis",
            target_id = prelude.Long.id,
        }),
        ScheduledStartTime = schema.new({
            id = id.from(_N, "UpdateProgramOutput", "ScheduledStartTime"),
            type = "timestamp",
            name = "ScheduledStartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        AudienceMedia = schema.new({
            id = id.from(_N, "UpdateProgramOutput", "AudienceMedia"),
            type = "list",
            name = "AudienceMedia",
            target_id = prelude.Document.id,
            list_member = M.AudienceMedia,
        }),
        Tags = schema.new({
            id = id.from(_N, "UpdateProgramOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.StartChannelInput = schema.new({
    id = id.from(_N, "StartChannelInput"),
    type = "structure",
    members = {
        ChannelName = schema.new({
            id = id.from(_N, "StartChannelInput", "ChannelName"),
            type = "string",
            name = "ChannelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.StartChannelOutput = schema.new({
    id = id.from(_N, "StartChannelOutput"),
    type = "structure",
})

M.StopChannelInput = schema.new({
    id = id.from(_N, "StopChannelInput"),
    type = "structure",
    members = {
        ChannelName = schema.new({
            id = id.from(_N, "StopChannelInput", "ChannelName"),
            type = "string",
            name = "ChannelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.StopChannelOutput = schema.new({
    id = id.from(_N, "StopChannelOutput"),
    type = "structure",
})

M.UpdateChannelInput = schema.new({
    id = id.from(_N, "UpdateChannelInput"),
    type = "structure",
    members = {
        ChannelName = schema.new({
            id = id.from(_N, "UpdateChannelInput", "ChannelName"),
            type = "string",
            name = "ChannelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        FillerSlate = schema.new({
            id = id.from(_N, "UpdateChannelInput", "FillerSlate"),
            type = "structure",
            name = "FillerSlate",
            target_id = id.from(_N, "SlateSource"),
            target = M.SlateSource,
        }),
        Outputs = schema.new({
            id = id.from(_N, "UpdateChannelInput", "Outputs"),
            type = "list",
            name = "Outputs",
            target_id = prelude.Document.id,
            list_member = M.RequestOutputItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TimeShiftConfiguration = schema.new({
            id = id.from(_N, "UpdateChannelInput", "TimeShiftConfiguration"),
            type = "structure",
            name = "TimeShiftConfiguration",
            target_id = id.from(_N, "TimeShiftConfiguration"),
            target = M.TimeShiftConfiguration,
        }),
        Audiences = schema.new({
            id = id.from(_N, "UpdateChannelInput", "Audiences"),
            type = "list",
            name = "Audiences",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UpdateChannelOutput = schema.new({
    id = id.from(_N, "UpdateChannelOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "UpdateChannelOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        ChannelName = schema.new({
            id = id.from(_N, "UpdateChannelOutput", "ChannelName"),
            type = "string",
            name = "ChannelName",
            target_id = prelude.String.id,
        }),
        ChannelState = schema.new({
            id = id.from(_N, "UpdateChannelOutput", "ChannelState"),
            type = "string",
            name = "ChannelState",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "UpdateChannelOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        FillerSlate = schema.new({
            id = id.from(_N, "UpdateChannelOutput", "FillerSlate"),
            type = "structure",
            name = "FillerSlate",
            target_id = id.from(_N, "SlateSource"),
            target = M.SlateSource,
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "UpdateChannelOutput", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        Outputs = schema.new({
            id = id.from(_N, "UpdateChannelOutput", "Outputs"),
            type = "list",
            name = "Outputs",
            target_id = prelude.Document.id,
            list_member = M.ResponseOutputItem,
        }),
        PlaybackMode = schema.new({
            id = id.from(_N, "UpdateChannelOutput", "PlaybackMode"),
            type = "string",
            name = "PlaybackMode",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "UpdateChannelOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        Tier = schema.new({
            id = id.from(_N, "UpdateChannelOutput", "Tier"),
            type = "string",
            name = "Tier",
            target_id = prelude.String.id,
        }),
        TimeShiftConfiguration = schema.new({
            id = id.from(_N, "UpdateChannelOutput", "TimeShiftConfiguration"),
            type = "structure",
            name = "TimeShiftConfiguration",
            target_id = id.from(_N, "TimeShiftConfiguration"),
            target = M.TimeShiftConfiguration,
        }),
        Audiences = schema.new({
            id = id.from(_N, "UpdateChannelOutput", "Audiences"),
            type = "list",
            name = "Audiences",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ConfigureLogsForPlaybackConfigurationInput = schema.new({
    id = id.from(_N, "ConfigureLogsForPlaybackConfigurationInput"),
    type = "structure",
    members = {
        PercentEnabled = schema.new({
            id = id.from(_N, "ConfigureLogsForPlaybackConfigurationInput", "PercentEnabled"),
            type = "integer",
            name = "PercentEnabled",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        PlaybackConfigurationName = schema.new({
            id = id.from(_N, "ConfigureLogsForPlaybackConfigurationInput", "PlaybackConfigurationName"),
            type = "string",
            name = "PlaybackConfigurationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EnabledLoggingStrategies = schema.new({
            id = id.from(_N, "ConfigureLogsForPlaybackConfigurationInput", "EnabledLoggingStrategies"),
            type = "list",
            name = "EnabledLoggingStrategies",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AdsInteractionLog = schema.new({
            id = id.from(_N, "ConfigureLogsForPlaybackConfigurationInput", "AdsInteractionLog"),
            type = "structure",
            name = "AdsInteractionLog",
            target_id = id.from(_N, "AdsInteractionLog"),
            target = M.AdsInteractionLog,
        }),
        ManifestServiceInteractionLog = schema.new({
            id = id.from(_N, "ConfigureLogsForPlaybackConfigurationInput", "ManifestServiceInteractionLog"),
            type = "structure",
            name = "ManifestServiceInteractionLog",
            target_id = id.from(_N, "ManifestServiceInteractionLog"),
            target = M.ManifestServiceInteractionLog,
        }),
    },
})

M.ConfigureLogsForPlaybackConfigurationOutput = schema.new({
    id = id.from(_N, "ConfigureLogsForPlaybackConfigurationOutput"),
    type = "structure",
    members = {
        PercentEnabled = schema.new({
            id = id.from(_N, "ConfigureLogsForPlaybackConfigurationOutput", "PercentEnabled"),
            type = "integer",
            name = "PercentEnabled",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        PlaybackConfigurationName = schema.new({
            id = id.from(_N, "ConfigureLogsForPlaybackConfigurationOutput", "PlaybackConfigurationName"),
            type = "string",
            name = "PlaybackConfigurationName",
            target_id = prelude.String.id,
        }),
        EnabledLoggingStrategies = schema.new({
            id = id.from(_N, "ConfigureLogsForPlaybackConfigurationOutput", "EnabledLoggingStrategies"),
            type = "list",
            name = "EnabledLoggingStrategies",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AdsInteractionLog = schema.new({
            id = id.from(_N, "ConfigureLogsForPlaybackConfigurationOutput", "AdsInteractionLog"),
            type = "structure",
            name = "AdsInteractionLog",
            target_id = id.from(_N, "AdsInteractionLog"),
            target = M.AdsInteractionLog,
        }),
        ManifestServiceInteractionLog = schema.new({
            id = id.from(_N, "ConfigureLogsForPlaybackConfigurationOutput", "ManifestServiceInteractionLog"),
            type = "structure",
            name = "ManifestServiceInteractionLog",
            target_id = id.from(_N, "ManifestServiceInteractionLog"),
            target = M.ManifestServiceInteractionLog,
        }),
    },
})

M.CreateLiveSourceInput = schema.new({
    id = id.from(_N, "CreateLiveSourceInput"),
    type = "structure",
    members = {
        HttpPackageConfigurations = schema.new({
            id = id.from(_N, "CreateLiveSourceInput", "HttpPackageConfigurations"),
            type = "list",
            name = "HttpPackageConfigurations",
            target_id = prelude.Document.id,
            list_member = M.HttpPackageConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LiveSourceName = schema.new({
            id = id.from(_N, "CreateLiveSourceInput", "LiveSourceName"),
            type = "string",
            name = "LiveSourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SourceLocationName = schema.new({
            id = id.from(_N, "CreateLiveSourceInput", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateLiveSourceInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.CreateLiveSourceOutput = schema.new({
    id = id.from(_N, "CreateLiveSourceOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateLiveSourceOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "CreateLiveSourceOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        HttpPackageConfigurations = schema.new({
            id = id.from(_N, "CreateLiveSourceOutput", "HttpPackageConfigurations"),
            type = "list",
            name = "HttpPackageConfigurations",
            target_id = prelude.Document.id,
            list_member = M.HttpPackageConfiguration,
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "CreateLiveSourceOutput", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        LiveSourceName = schema.new({
            id = id.from(_N, "CreateLiveSourceOutput", "LiveSourceName"),
            type = "string",
            name = "LiveSourceName",
            target_id = prelude.String.id,
        }),
        SourceLocationName = schema.new({
            id = id.from(_N, "CreateLiveSourceOutput", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateLiveSourceOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.CreatePrefetchScheduleInput = schema.new({
    id = id.from(_N, "CreatePrefetchScheduleInput"),
    type = "structure",
    members = {
        Consumption = schema.new({
            id = id.from(_N, "CreatePrefetchScheduleInput", "Consumption"),
            type = "structure",
            name = "Consumption",
            target_id = id.from(_N, "PrefetchConsumption"),
            target = M.PrefetchConsumption,
        }),
        Name = schema.new({
            id = id.from(_N, "CreatePrefetchScheduleInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        PlaybackConfigurationName = schema.new({
            id = id.from(_N, "CreatePrefetchScheduleInput", "PlaybackConfigurationName"),
            type = "string",
            name = "PlaybackConfigurationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Retrieval = schema.new({
            id = id.from(_N, "CreatePrefetchScheduleInput", "Retrieval"),
            type = "structure",
            name = "Retrieval",
            target_id = id.from(_N, "PrefetchRetrieval"),
            target = M.PrefetchRetrieval,
        }),
        RecurringPrefetchConfiguration = schema.new({
            id = id.from(_N, "CreatePrefetchScheduleInput", "RecurringPrefetchConfiguration"),
            type = "structure",
            name = "RecurringPrefetchConfiguration",
            target_id = id.from(_N, "RecurringPrefetchConfiguration"),
            target = M.RecurringPrefetchConfiguration,
        }),
        ScheduleType = schema.new({
            id = id.from(_N, "CreatePrefetchScheduleInput", "ScheduleType"),
            type = "string",
            name = "ScheduleType",
            target_id = prelude.String.id,
        }),
        StreamId = schema.new({
            id = id.from(_N, "CreatePrefetchScheduleInput", "StreamId"),
            type = "string",
            name = "StreamId",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreatePrefetchScheduleInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.CreatePrefetchScheduleOutput = schema.new({
    id = id.from(_N, "CreatePrefetchScheduleOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreatePrefetchScheduleOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Consumption = schema.new({
            id = id.from(_N, "CreatePrefetchScheduleOutput", "Consumption"),
            type = "structure",
            name = "Consumption",
            target_id = id.from(_N, "PrefetchConsumption"),
            target = M.PrefetchConsumption,
        }),
        Name = schema.new({
            id = id.from(_N, "CreatePrefetchScheduleOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        PlaybackConfigurationName = schema.new({
            id = id.from(_N, "CreatePrefetchScheduleOutput", "PlaybackConfigurationName"),
            type = "string",
            name = "PlaybackConfigurationName",
            target_id = prelude.String.id,
        }),
        Retrieval = schema.new({
            id = id.from(_N, "CreatePrefetchScheduleOutput", "Retrieval"),
            type = "structure",
            name = "Retrieval",
            target_id = id.from(_N, "PrefetchRetrieval"),
            target = M.PrefetchRetrieval,
        }),
        RecurringPrefetchConfiguration = schema.new({
            id = id.from(_N, "CreatePrefetchScheduleOutput", "RecurringPrefetchConfiguration"),
            type = "structure",
            name = "RecurringPrefetchConfiguration",
            target_id = id.from(_N, "RecurringPrefetchConfiguration"),
            target = M.RecurringPrefetchConfiguration,
        }),
        ScheduleType = schema.new({
            id = id.from(_N, "CreatePrefetchScheduleOutput", "ScheduleType"),
            type = "string",
            name = "ScheduleType",
            target_id = prelude.String.id,
        }),
        StreamId = schema.new({
            id = id.from(_N, "CreatePrefetchScheduleOutput", "StreamId"),
            type = "string",
            name = "StreamId",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreatePrefetchScheduleOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.CreateSourceLocationInput = schema.new({
    id = id.from(_N, "CreateSourceLocationInput"),
    type = "structure",
    members = {
        AccessConfiguration = schema.new({
            id = id.from(_N, "CreateSourceLocationInput", "AccessConfiguration"),
            type = "structure",
            name = "AccessConfiguration",
            target_id = id.from(_N, "AccessConfiguration"),
            target = M.AccessConfiguration,
        }),
        DefaultSegmentDeliveryConfiguration = schema.new({
            id = id.from(_N, "CreateSourceLocationInput", "DefaultSegmentDeliveryConfiguration"),
            type = "structure",
            name = "DefaultSegmentDeliveryConfiguration",
            target_id = id.from(_N, "DefaultSegmentDeliveryConfiguration"),
            target = M.DefaultSegmentDeliveryConfiguration,
        }),
        HttpConfiguration = schema.new({
            id = id.from(_N, "CreateSourceLocationInput", "HttpConfiguration"),
            type = "structure",
            name = "HttpConfiguration",
            target_id = id.from(_N, "HttpConfiguration"),
            target = M.HttpConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SegmentDeliveryConfigurations = schema.new({
            id = id.from(_N, "CreateSourceLocationInput", "SegmentDeliveryConfigurations"),
            type = "list",
            name = "SegmentDeliveryConfigurations",
            target_id = prelude.Document.id,
            list_member = M.SegmentDeliveryConfiguration,
        }),
        SourceLocationName = schema.new({
            id = id.from(_N, "CreateSourceLocationInput", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateSourceLocationInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.CreateSourceLocationOutput = schema.new({
    id = id.from(_N, "CreateSourceLocationOutput"),
    type = "structure",
    members = {
        AccessConfiguration = schema.new({
            id = id.from(_N, "CreateSourceLocationOutput", "AccessConfiguration"),
            type = "structure",
            name = "AccessConfiguration",
            target_id = id.from(_N, "AccessConfiguration"),
            target = M.AccessConfiguration,
        }),
        Arn = schema.new({
            id = id.from(_N, "CreateSourceLocationOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "CreateSourceLocationOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        DefaultSegmentDeliveryConfiguration = schema.new({
            id = id.from(_N, "CreateSourceLocationOutput", "DefaultSegmentDeliveryConfiguration"),
            type = "structure",
            name = "DefaultSegmentDeliveryConfiguration",
            target_id = id.from(_N, "DefaultSegmentDeliveryConfiguration"),
            target = M.DefaultSegmentDeliveryConfiguration,
        }),
        HttpConfiguration = schema.new({
            id = id.from(_N, "CreateSourceLocationOutput", "HttpConfiguration"),
            type = "structure",
            name = "HttpConfiguration",
            target_id = id.from(_N, "HttpConfiguration"),
            target = M.HttpConfiguration,
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "CreateSourceLocationOutput", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        SegmentDeliveryConfigurations = schema.new({
            id = id.from(_N, "CreateSourceLocationOutput", "SegmentDeliveryConfigurations"),
            type = "list",
            name = "SegmentDeliveryConfigurations",
            target_id = prelude.Document.id,
            list_member = M.SegmentDeliveryConfiguration,
        }),
        SourceLocationName = schema.new({
            id = id.from(_N, "CreateSourceLocationOutput", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateSourceLocationOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.CreateVodSourceInput = schema.new({
    id = id.from(_N, "CreateVodSourceInput"),
    type = "structure",
    members = {
        HttpPackageConfigurations = schema.new({
            id = id.from(_N, "CreateVodSourceInput", "HttpPackageConfigurations"),
            type = "list",
            name = "HttpPackageConfigurations",
            target_id = prelude.Document.id,
            list_member = M.HttpPackageConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceLocationName = schema.new({
            id = id.from(_N, "CreateVodSourceInput", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateVodSourceInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        VodSourceName = schema.new({
            id = id.from(_N, "CreateVodSourceInput", "VodSourceName"),
            type = "string",
            name = "VodSourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.CreateVodSourceOutput = schema.new({
    id = id.from(_N, "CreateVodSourceOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateVodSourceOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "CreateVodSourceOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        HttpPackageConfigurations = schema.new({
            id = id.from(_N, "CreateVodSourceOutput", "HttpPackageConfigurations"),
            type = "list",
            name = "HttpPackageConfigurations",
            target_id = prelude.Document.id,
            list_member = M.HttpPackageConfiguration,
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "CreateVodSourceOutput", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        SourceLocationName = schema.new({
            id = id.from(_N, "CreateVodSourceOutput", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateVodSourceOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        VodSourceName = schema.new({
            id = id.from(_N, "CreateVodSourceOutput", "VodSourceName"),
            type = "string",
            name = "VodSourceName",
            target_id = prelude.String.id,
        }),
    },
})

M.DashConfigurationForPut = schema.new({
    id = id.from(_N, "DashConfigurationForPut"),
    type = "structure",
    members = {
        MpdLocation = schema.new({
            id = id.from(_N, "DashConfigurationForPut", "MpdLocation"),
            type = "string",
            name = "MpdLocation",
            target_id = prelude.String.id,
        }),
        OriginManifestType = schema.new({
            id = id.from(_N, "DashConfigurationForPut", "OriginManifestType"),
            type = "string",
            name = "OriginManifestType",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteLiveSourceInput = schema.new({
    id = id.from(_N, "DeleteLiveSourceInput"),
    type = "structure",
    members = {
        LiveSourceName = schema.new({
            id = id.from(_N, "DeleteLiveSourceInput", "LiveSourceName"),
            type = "string",
            name = "LiveSourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SourceLocationName = schema.new({
            id = id.from(_N, "DeleteLiveSourceInput", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteLiveSourceOutput = schema.new({
    id = id.from(_N, "DeleteLiveSourceOutput"),
    type = "structure",
})

M.DeletePlaybackConfigurationInput = schema.new({
    id = id.from(_N, "DeletePlaybackConfigurationInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DeletePlaybackConfigurationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeletePlaybackConfigurationOutput = schema.new({
    id = id.from(_N, "DeletePlaybackConfigurationOutput"),
    type = "structure",
})

M.DeletePrefetchScheduleInput = schema.new({
    id = id.from(_N, "DeletePrefetchScheduleInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DeletePrefetchScheduleInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        PlaybackConfigurationName = schema.new({
            id = id.from(_N, "DeletePrefetchScheduleInput", "PlaybackConfigurationName"),
            type = "string",
            name = "PlaybackConfigurationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeletePrefetchScheduleOutput = schema.new({
    id = id.from(_N, "DeletePrefetchScheduleOutput"),
    type = "structure",
})

M.DeleteSourceLocationInput = schema.new({
    id = id.from(_N, "DeleteSourceLocationInput"),
    type = "structure",
    members = {
        SourceLocationName = schema.new({
            id = id.from(_N, "DeleteSourceLocationInput", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteSourceLocationOutput = schema.new({
    id = id.from(_N, "DeleteSourceLocationOutput"),
    type = "structure",
})

M.DeleteVodSourceInput = schema.new({
    id = id.from(_N, "DeleteVodSourceInput"),
    type = "structure",
    members = {
        SourceLocationName = schema.new({
            id = id.from(_N, "DeleteVodSourceInput", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        VodSourceName = schema.new({
            id = id.from(_N, "DeleteVodSourceInput", "VodSourceName"),
            type = "string",
            name = "VodSourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteVodSourceOutput = schema.new({
    id = id.from(_N, "DeleteVodSourceOutput"),
    type = "structure",
})

M.DescribeLiveSourceInput = schema.new({
    id = id.from(_N, "DescribeLiveSourceInput"),
    type = "structure",
    members = {
        LiveSourceName = schema.new({
            id = id.from(_N, "DescribeLiveSourceInput", "LiveSourceName"),
            type = "string",
            name = "LiveSourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SourceLocationName = schema.new({
            id = id.from(_N, "DescribeLiveSourceInput", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeLiveSourceOutput = schema.new({
    id = id.from(_N, "DescribeLiveSourceOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "DescribeLiveSourceOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "DescribeLiveSourceOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        HttpPackageConfigurations = schema.new({
            id = id.from(_N, "DescribeLiveSourceOutput", "HttpPackageConfigurations"),
            type = "list",
            name = "HttpPackageConfigurations",
            target_id = prelude.Document.id,
            list_member = M.HttpPackageConfiguration,
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "DescribeLiveSourceOutput", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        LiveSourceName = schema.new({
            id = id.from(_N, "DescribeLiveSourceOutput", "LiveSourceName"),
            type = "string",
            name = "LiveSourceName",
            target_id = prelude.String.id,
        }),
        SourceLocationName = schema.new({
            id = id.from(_N, "DescribeLiveSourceOutput", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "DescribeLiveSourceOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.DescribeSourceLocationInput = schema.new({
    id = id.from(_N, "DescribeSourceLocationInput"),
    type = "structure",
    members = {
        SourceLocationName = schema.new({
            id = id.from(_N, "DescribeSourceLocationInput", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeSourceLocationOutput = schema.new({
    id = id.from(_N, "DescribeSourceLocationOutput"),
    type = "structure",
    members = {
        AccessConfiguration = schema.new({
            id = id.from(_N, "DescribeSourceLocationOutput", "AccessConfiguration"),
            type = "structure",
            name = "AccessConfiguration",
            target_id = id.from(_N, "AccessConfiguration"),
            target = M.AccessConfiguration,
        }),
        Arn = schema.new({
            id = id.from(_N, "DescribeSourceLocationOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "DescribeSourceLocationOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        DefaultSegmentDeliveryConfiguration = schema.new({
            id = id.from(_N, "DescribeSourceLocationOutput", "DefaultSegmentDeliveryConfiguration"),
            type = "structure",
            name = "DefaultSegmentDeliveryConfiguration",
            target_id = id.from(_N, "DefaultSegmentDeliveryConfiguration"),
            target = M.DefaultSegmentDeliveryConfiguration,
        }),
        HttpConfiguration = schema.new({
            id = id.from(_N, "DescribeSourceLocationOutput", "HttpConfiguration"),
            type = "structure",
            name = "HttpConfiguration",
            target_id = id.from(_N, "HttpConfiguration"),
            target = M.HttpConfiguration,
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "DescribeSourceLocationOutput", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        SegmentDeliveryConfigurations = schema.new({
            id = id.from(_N, "DescribeSourceLocationOutput", "SegmentDeliveryConfigurations"),
            type = "list",
            name = "SegmentDeliveryConfigurations",
            target_id = prelude.Document.id,
            list_member = M.SegmentDeliveryConfiguration,
        }),
        SourceLocationName = schema.new({
            id = id.from(_N, "DescribeSourceLocationOutput", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "DescribeSourceLocationOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.DescribeVodSourceInput = schema.new({
    id = id.from(_N, "DescribeVodSourceInput"),
    type = "structure",
    members = {
        SourceLocationName = schema.new({
            id = id.from(_N, "DescribeVodSourceInput", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        VodSourceName = schema.new({
            id = id.from(_N, "DescribeVodSourceInput", "VodSourceName"),
            type = "string",
            name = "VodSourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeVodSourceOutput = schema.new({
    id = id.from(_N, "DescribeVodSourceOutput"),
    type = "structure",
    members = {
        AdBreakOpportunities = schema.new({
            id = id.from(_N, "DescribeVodSourceOutput", "AdBreakOpportunities"),
            type = "list",
            name = "AdBreakOpportunities",
            target_id = prelude.Document.id,
            list_member = M.AdBreakOpportunity,
        }),
        Arn = schema.new({
            id = id.from(_N, "DescribeVodSourceOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "DescribeVodSourceOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        HttpPackageConfigurations = schema.new({
            id = id.from(_N, "DescribeVodSourceOutput", "HttpPackageConfigurations"),
            type = "list",
            name = "HttpPackageConfigurations",
            target_id = prelude.Document.id,
            list_member = M.HttpPackageConfiguration,
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "DescribeVodSourceOutput", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        SourceLocationName = schema.new({
            id = id.from(_N, "DescribeVodSourceOutput", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "DescribeVodSourceOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        VodSourceName = schema.new({
            id = id.from(_N, "DescribeVodSourceOutput", "VodSourceName"),
            type = "string",
            name = "VodSourceName",
            target_id = prelude.String.id,
        }),
    },
})

M.GetPlaybackConfigurationInput = schema.new({
    id = id.from(_N, "GetPlaybackConfigurationInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "GetPlaybackConfigurationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetPlaybackConfigurationOutput = schema.new({
    id = id.from(_N, "GetPlaybackConfigurationOutput"),
    type = "structure",
    members = {
        AdDecisionServerUrl = schema.new({
            id = id.from(_N, "GetPlaybackConfigurationOutput", "AdDecisionServerUrl"),
            type = "string",
            name = "AdDecisionServerUrl",
            target_id = prelude.String.id,
        }),
        AvailSuppression = schema.new({
            id = id.from(_N, "GetPlaybackConfigurationOutput", "AvailSuppression"),
            type = "structure",
            name = "AvailSuppression",
            target_id = id.from(_N, "AvailSuppression"),
            target = M.AvailSuppression,
        }),
        Bumper = schema.new({
            id = id.from(_N, "GetPlaybackConfigurationOutput", "Bumper"),
            type = "structure",
            name = "Bumper",
            target_id = id.from(_N, "Bumper"),
            target = M.Bumper,
        }),
        CdnConfiguration = schema.new({
            id = id.from(_N, "GetPlaybackConfigurationOutput", "CdnConfiguration"),
            type = "structure",
            name = "CdnConfiguration",
            target_id = id.from(_N, "CdnConfiguration"),
            target = M.CdnConfiguration,
        }),
        ConfigurationAliases = schema.new({
            id = id.from(_N, "GetPlaybackConfigurationOutput", "ConfigurationAliases"),
            type = "map",
            name = "ConfigurationAliases",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
        DashConfiguration = schema.new({
            id = id.from(_N, "GetPlaybackConfigurationOutput", "DashConfiguration"),
            type = "structure",
            name = "DashConfiguration",
            target_id = id.from(_N, "DashConfiguration"),
            target = M.DashConfiguration,
        }),
        HlsConfiguration = schema.new({
            id = id.from(_N, "GetPlaybackConfigurationOutput", "HlsConfiguration"),
            type = "structure",
            name = "HlsConfiguration",
            target_id = id.from(_N, "HlsConfiguration"),
            target = M.HlsConfiguration,
        }),
        InsertionMode = schema.new({
            id = id.from(_N, "GetPlaybackConfigurationOutput", "InsertionMode"),
            type = "string",
            name = "InsertionMode",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "STITCHED_ONLY" },
            },
        }),
        LivePreRollConfiguration = schema.new({
            id = id.from(_N, "GetPlaybackConfigurationOutput", "LivePreRollConfiguration"),
            type = "structure",
            name = "LivePreRollConfiguration",
            target_id = id.from(_N, "LivePreRollConfiguration"),
            target = M.LivePreRollConfiguration,
        }),
        LogConfiguration = schema.new({
            id = id.from(_N, "GetPlaybackConfigurationOutput", "LogConfiguration"),
            type = "structure",
            name = "LogConfiguration",
            target_id = id.from(_N, "LogConfiguration"),
            target = M.LogConfiguration,
        }),
        ManifestProcessingRules = schema.new({
            id = id.from(_N, "GetPlaybackConfigurationOutput", "ManifestProcessingRules"),
            type = "structure",
            name = "ManifestProcessingRules",
            target_id = id.from(_N, "ManifestProcessingRules"),
            target = M.ManifestProcessingRules,
        }),
        Name = schema.new({
            id = id.from(_N, "GetPlaybackConfigurationOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        PersonalizationThresholdSeconds = schema.new({
            id = id.from(_N, "GetPlaybackConfigurationOutput", "PersonalizationThresholdSeconds"),
            type = "integer",
            name = "PersonalizationThresholdSeconds",
            target_id = prelude.Integer.id,
        }),
        PlaybackConfigurationArn = schema.new({
            id = id.from(_N, "GetPlaybackConfigurationOutput", "PlaybackConfigurationArn"),
            type = "string",
            name = "PlaybackConfigurationArn",
            target_id = prelude.String.id,
        }),
        PlaybackEndpointPrefix = schema.new({
            id = id.from(_N, "GetPlaybackConfigurationOutput", "PlaybackEndpointPrefix"),
            type = "string",
            name = "PlaybackEndpointPrefix",
            target_id = prelude.String.id,
        }),
        SessionInitializationEndpointPrefix = schema.new({
            id = id.from(_N, "GetPlaybackConfigurationOutput", "SessionInitializationEndpointPrefix"),
            type = "string",
            name = "SessionInitializationEndpointPrefix",
            target_id = prelude.String.id,
        }),
        SlateAdUrl = schema.new({
            id = id.from(_N, "GetPlaybackConfigurationOutput", "SlateAdUrl"),
            type = "string",
            name = "SlateAdUrl",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "GetPlaybackConfigurationOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        TranscodeProfileName = schema.new({
            id = id.from(_N, "GetPlaybackConfigurationOutput", "TranscodeProfileName"),
            type = "string",
            name = "TranscodeProfileName",
            target_id = prelude.String.id,
        }),
        VideoContentSourceUrl = schema.new({
            id = id.from(_N, "GetPlaybackConfigurationOutput", "VideoContentSourceUrl"),
            type = "string",
            name = "VideoContentSourceUrl",
            target_id = prelude.String.id,
        }),
        AdConditioningConfiguration = schema.new({
            id = id.from(_N, "GetPlaybackConfigurationOutput", "AdConditioningConfiguration"),
            type = "structure",
            name = "AdConditioningConfiguration",
            target_id = id.from(_N, "AdConditioningConfiguration"),
            target = M.AdConditioningConfiguration,
        }),
        AdDecisionServerConfiguration = schema.new({
            id = id.from(_N, "GetPlaybackConfigurationOutput", "AdDecisionServerConfiguration"),
            type = "structure",
            name = "AdDecisionServerConfiguration",
            target_id = id.from(_N, "AdDecisionServerConfiguration"),
            target = M.AdDecisionServerConfiguration,
        }),
    },
})

M.GetPrefetchScheduleInput = schema.new({
    id = id.from(_N, "GetPrefetchScheduleInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "GetPrefetchScheduleInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        PlaybackConfigurationName = schema.new({
            id = id.from(_N, "GetPrefetchScheduleInput", "PlaybackConfigurationName"),
            type = "string",
            name = "PlaybackConfigurationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetPrefetchScheduleOutput = schema.new({
    id = id.from(_N, "GetPrefetchScheduleOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetPrefetchScheduleOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Consumption = schema.new({
            id = id.from(_N, "GetPrefetchScheduleOutput", "Consumption"),
            type = "structure",
            name = "Consumption",
            target_id = id.from(_N, "PrefetchConsumption"),
            target = M.PrefetchConsumption,
        }),
        Name = schema.new({
            id = id.from(_N, "GetPrefetchScheduleOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        PlaybackConfigurationName = schema.new({
            id = id.from(_N, "GetPrefetchScheduleOutput", "PlaybackConfigurationName"),
            type = "string",
            name = "PlaybackConfigurationName",
            target_id = prelude.String.id,
        }),
        Retrieval = schema.new({
            id = id.from(_N, "GetPrefetchScheduleOutput", "Retrieval"),
            type = "structure",
            name = "Retrieval",
            target_id = id.from(_N, "PrefetchRetrieval"),
            target = M.PrefetchRetrieval,
        }),
        ScheduleType = schema.new({
            id = id.from(_N, "GetPrefetchScheduleOutput", "ScheduleType"),
            type = "string",
            name = "ScheduleType",
            target_id = prelude.String.id,
        }),
        RecurringPrefetchConfiguration = schema.new({
            id = id.from(_N, "GetPrefetchScheduleOutput", "RecurringPrefetchConfiguration"),
            type = "structure",
            name = "RecurringPrefetchConfiguration",
            target_id = id.from(_N, "RecurringPrefetchConfiguration"),
            target = M.RecurringPrefetchConfiguration,
        }),
        StreamId = schema.new({
            id = id.from(_N, "GetPrefetchScheduleOutput", "StreamId"),
            type = "string",
            name = "StreamId",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "GetPrefetchScheduleOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.ListAlertsInput = schema.new({
    id = id.from(_N, "ListAlertsInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListAlertsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAlertsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "ListAlertsInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "resourceArn" },
            },
        }),
    },
})

M.ListAlertsOutput = schema.new({
    id = id.from(_N, "ListAlertsOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ListAlertsOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.Alert,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAlertsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListLiveSourcesInput = schema.new({
    id = id.from(_N, "ListLiveSourcesInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListLiveSourcesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListLiveSourcesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        SourceLocationName = schema.new({
            id = id.from(_N, "ListLiveSourcesInput", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListLiveSourcesOutput = schema.new({
    id = id.from(_N, "ListLiveSourcesOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ListLiveSourcesOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.LiveSource,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListLiveSourcesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPlaybackConfigurationsInput = schema.new({
    id = id.from(_N, "ListPlaybackConfigurationsInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListPlaybackConfigurationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListPlaybackConfigurationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.ListPlaybackConfigurationsOutput = schema.new({
    id = id.from(_N, "ListPlaybackConfigurationsOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ListPlaybackConfigurationsOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.PlaybackConfiguration,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListPlaybackConfigurationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPrefetchSchedulesInput = schema.new({
    id = id.from(_N, "ListPrefetchSchedulesInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListPrefetchSchedulesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListPrefetchSchedulesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        PlaybackConfigurationName = schema.new({
            id = id.from(_N, "ListPrefetchSchedulesInput", "PlaybackConfigurationName"),
            type = "string",
            name = "PlaybackConfigurationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ScheduleType = schema.new({
            id = id.from(_N, "ListPrefetchSchedulesInput", "ScheduleType"),
            type = "string",
            name = "ScheduleType",
            target_id = prelude.String.id,
        }),
        StreamId = schema.new({
            id = id.from(_N, "ListPrefetchSchedulesInput", "StreamId"),
            type = "string",
            name = "StreamId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPrefetchSchedulesOutput = schema.new({
    id = id.from(_N, "ListPrefetchSchedulesOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ListPrefetchSchedulesOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.PrefetchSchedule,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListPrefetchSchedulesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSourceLocationsInput = schema.new({
    id = id.from(_N, "ListSourceLocationsInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListSourceLocationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSourceLocationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListSourceLocationsOutput = schema.new({
    id = id.from(_N, "ListSourceLocationsOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ListSourceLocationsOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.SourceLocation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSourceLocationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceOutput"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.ListVodSourcesInput = schema.new({
    id = id.from(_N, "ListVodSourcesInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListVodSourcesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListVodSourcesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        SourceLocationName = schema.new({
            id = id.from(_N, "ListVodSourcesInput", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListVodSourcesOutput = schema.new({
    id = id.from(_N, "ListVodSourcesOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ListVodSourcesOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.VodSource,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListVodSourcesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateLiveSourceInput = schema.new({
    id = id.from(_N, "UpdateLiveSourceInput"),
    type = "structure",
    members = {
        HttpPackageConfigurations = schema.new({
            id = id.from(_N, "UpdateLiveSourceInput", "HttpPackageConfigurations"),
            type = "list",
            name = "HttpPackageConfigurations",
            target_id = prelude.Document.id,
            list_member = M.HttpPackageConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LiveSourceName = schema.new({
            id = id.from(_N, "UpdateLiveSourceInput", "LiveSourceName"),
            type = "string",
            name = "LiveSourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SourceLocationName = schema.new({
            id = id.from(_N, "UpdateLiveSourceInput", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.UpdateLiveSourceOutput = schema.new({
    id = id.from(_N, "UpdateLiveSourceOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "UpdateLiveSourceOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "UpdateLiveSourceOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        HttpPackageConfigurations = schema.new({
            id = id.from(_N, "UpdateLiveSourceOutput", "HttpPackageConfigurations"),
            type = "list",
            name = "HttpPackageConfigurations",
            target_id = prelude.Document.id,
            list_member = M.HttpPackageConfiguration,
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "UpdateLiveSourceOutput", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        LiveSourceName = schema.new({
            id = id.from(_N, "UpdateLiveSourceOutput", "LiveSourceName"),
            type = "string",
            name = "LiveSourceName",
            target_id = prelude.String.id,
        }),
        SourceLocationName = schema.new({
            id = id.from(_N, "UpdateLiveSourceOutput", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "UpdateLiveSourceOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.PutPlaybackConfigurationInput = schema.new({
    id = id.from(_N, "PutPlaybackConfigurationInput"),
    type = "structure",
    members = {
        AdDecisionServerUrl = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationInput", "AdDecisionServerUrl"),
            type = "string",
            name = "AdDecisionServerUrl",
            target_id = prelude.String.id,
        }),
        AvailSuppression = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationInput", "AvailSuppression"),
            type = "structure",
            name = "AvailSuppression",
            target_id = id.from(_N, "AvailSuppression"),
            target = M.AvailSuppression,
        }),
        Bumper = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationInput", "Bumper"),
            type = "structure",
            name = "Bumper",
            target_id = id.from(_N, "Bumper"),
            target = M.Bumper,
        }),
        CdnConfiguration = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationInput", "CdnConfiguration"),
            type = "structure",
            name = "CdnConfiguration",
            target_id = id.from(_N, "CdnConfiguration"),
            target = M.CdnConfiguration,
        }),
        ConfigurationAliases = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationInput", "ConfigurationAliases"),
            type = "map",
            name = "ConfigurationAliases",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
        DashConfiguration = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationInput", "DashConfiguration"),
            type = "structure",
            name = "DashConfiguration",
            target_id = id.from(_N, "DashConfigurationForPut"),
            target = M.DashConfigurationForPut,
        }),
        InsertionMode = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationInput", "InsertionMode"),
            type = "string",
            name = "InsertionMode",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "STITCHED_ONLY" },
            },
        }),
        LivePreRollConfiguration = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationInput", "LivePreRollConfiguration"),
            type = "structure",
            name = "LivePreRollConfiguration",
            target_id = id.from(_N, "LivePreRollConfiguration"),
            target = M.LivePreRollConfiguration,
        }),
        ManifestProcessingRules = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationInput", "ManifestProcessingRules"),
            type = "structure",
            name = "ManifestProcessingRules",
            target_id = id.from(_N, "ManifestProcessingRules"),
            target = M.ManifestProcessingRules,
        }),
        Name = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PersonalizationThresholdSeconds = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationInput", "PersonalizationThresholdSeconds"),
            type = "integer",
            name = "PersonalizationThresholdSeconds",
            target_id = prelude.Integer.id,
        }),
        SlateAdUrl = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationInput", "SlateAdUrl"),
            type = "string",
            name = "SlateAdUrl",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        TranscodeProfileName = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationInput", "TranscodeProfileName"),
            type = "string",
            name = "TranscodeProfileName",
            target_id = prelude.String.id,
        }),
        VideoContentSourceUrl = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationInput", "VideoContentSourceUrl"),
            type = "string",
            name = "VideoContentSourceUrl",
            target_id = prelude.String.id,
        }),
        AdConditioningConfiguration = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationInput", "AdConditioningConfiguration"),
            type = "structure",
            name = "AdConditioningConfiguration",
            target_id = id.from(_N, "AdConditioningConfiguration"),
            target = M.AdConditioningConfiguration,
        }),
        AdDecisionServerConfiguration = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationInput", "AdDecisionServerConfiguration"),
            type = "structure",
            name = "AdDecisionServerConfiguration",
            target_id = id.from(_N, "AdDecisionServerConfiguration"),
            target = M.AdDecisionServerConfiguration,
        }),
    },
})

M.PutPlaybackConfigurationOutput = schema.new({
    id = id.from(_N, "PutPlaybackConfigurationOutput"),
    type = "structure",
    members = {
        AdDecisionServerUrl = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationOutput", "AdDecisionServerUrl"),
            type = "string",
            name = "AdDecisionServerUrl",
            target_id = prelude.String.id,
        }),
        AvailSuppression = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationOutput", "AvailSuppression"),
            type = "structure",
            name = "AvailSuppression",
            target_id = id.from(_N, "AvailSuppression"),
            target = M.AvailSuppression,
        }),
        Bumper = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationOutput", "Bumper"),
            type = "structure",
            name = "Bumper",
            target_id = id.from(_N, "Bumper"),
            target = M.Bumper,
        }),
        CdnConfiguration = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationOutput", "CdnConfiguration"),
            type = "structure",
            name = "CdnConfiguration",
            target_id = id.from(_N, "CdnConfiguration"),
            target = M.CdnConfiguration,
        }),
        ConfigurationAliases = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationOutput", "ConfigurationAliases"),
            type = "map",
            name = "ConfigurationAliases",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
        DashConfiguration = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationOutput", "DashConfiguration"),
            type = "structure",
            name = "DashConfiguration",
            target_id = id.from(_N, "DashConfiguration"),
            target = M.DashConfiguration,
        }),
        HlsConfiguration = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationOutput", "HlsConfiguration"),
            type = "structure",
            name = "HlsConfiguration",
            target_id = id.from(_N, "HlsConfiguration"),
            target = M.HlsConfiguration,
        }),
        InsertionMode = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationOutput", "InsertionMode"),
            type = "string",
            name = "InsertionMode",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "STITCHED_ONLY" },
            },
        }),
        LivePreRollConfiguration = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationOutput", "LivePreRollConfiguration"),
            type = "structure",
            name = "LivePreRollConfiguration",
            target_id = id.from(_N, "LivePreRollConfiguration"),
            target = M.LivePreRollConfiguration,
        }),
        LogConfiguration = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationOutput", "LogConfiguration"),
            type = "structure",
            name = "LogConfiguration",
            target_id = id.from(_N, "LogConfiguration"),
            target = M.LogConfiguration,
        }),
        ManifestProcessingRules = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationOutput", "ManifestProcessingRules"),
            type = "structure",
            name = "ManifestProcessingRules",
            target_id = id.from(_N, "ManifestProcessingRules"),
            target = M.ManifestProcessingRules,
        }),
        Name = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        PersonalizationThresholdSeconds = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationOutput", "PersonalizationThresholdSeconds"),
            type = "integer",
            name = "PersonalizationThresholdSeconds",
            target_id = prelude.Integer.id,
        }),
        PlaybackConfigurationArn = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationOutput", "PlaybackConfigurationArn"),
            type = "string",
            name = "PlaybackConfigurationArn",
            target_id = prelude.String.id,
        }),
        PlaybackEndpointPrefix = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationOutput", "PlaybackEndpointPrefix"),
            type = "string",
            name = "PlaybackEndpointPrefix",
            target_id = prelude.String.id,
        }),
        SessionInitializationEndpointPrefix = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationOutput", "SessionInitializationEndpointPrefix"),
            type = "string",
            name = "SessionInitializationEndpointPrefix",
            target_id = prelude.String.id,
        }),
        SlateAdUrl = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationOutput", "SlateAdUrl"),
            type = "string",
            name = "SlateAdUrl",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        TranscodeProfileName = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationOutput", "TranscodeProfileName"),
            type = "string",
            name = "TranscodeProfileName",
            target_id = prelude.String.id,
        }),
        VideoContentSourceUrl = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationOutput", "VideoContentSourceUrl"),
            type = "string",
            name = "VideoContentSourceUrl",
            target_id = prelude.String.id,
        }),
        AdConditioningConfiguration = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationOutput", "AdConditioningConfiguration"),
            type = "structure",
            name = "AdConditioningConfiguration",
            target_id = id.from(_N, "AdConditioningConfiguration"),
            target = M.AdConditioningConfiguration,
        }),
        AdDecisionServerConfiguration = schema.new({
            id = id.from(_N, "PutPlaybackConfigurationOutput", "AdDecisionServerConfiguration"),
            type = "structure",
            name = "AdDecisionServerConfiguration",
            target_id = id.from(_N, "AdDecisionServerConfiguration"),
            target = M.AdDecisionServerConfiguration,
        }),
    },
})

M.UpdateSourceLocationInput = schema.new({
    id = id.from(_N, "UpdateSourceLocationInput"),
    type = "structure",
    members = {
        AccessConfiguration = schema.new({
            id = id.from(_N, "UpdateSourceLocationInput", "AccessConfiguration"),
            type = "structure",
            name = "AccessConfiguration",
            target_id = id.from(_N, "AccessConfiguration"),
            target = M.AccessConfiguration,
        }),
        DefaultSegmentDeliveryConfiguration = schema.new({
            id = id.from(_N, "UpdateSourceLocationInput", "DefaultSegmentDeliveryConfiguration"),
            type = "structure",
            name = "DefaultSegmentDeliveryConfiguration",
            target_id = id.from(_N, "DefaultSegmentDeliveryConfiguration"),
            target = M.DefaultSegmentDeliveryConfiguration,
        }),
        HttpConfiguration = schema.new({
            id = id.from(_N, "UpdateSourceLocationInput", "HttpConfiguration"),
            type = "structure",
            name = "HttpConfiguration",
            target_id = id.from(_N, "HttpConfiguration"),
            target = M.HttpConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SegmentDeliveryConfigurations = schema.new({
            id = id.from(_N, "UpdateSourceLocationInput", "SegmentDeliveryConfigurations"),
            type = "list",
            name = "SegmentDeliveryConfigurations",
            target_id = prelude.Document.id,
            list_member = M.SegmentDeliveryConfiguration,
        }),
        SourceLocationName = schema.new({
            id = id.from(_N, "UpdateSourceLocationInput", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.UpdateSourceLocationOutput = schema.new({
    id = id.from(_N, "UpdateSourceLocationOutput"),
    type = "structure",
    members = {
        AccessConfiguration = schema.new({
            id = id.from(_N, "UpdateSourceLocationOutput", "AccessConfiguration"),
            type = "structure",
            name = "AccessConfiguration",
            target_id = id.from(_N, "AccessConfiguration"),
            target = M.AccessConfiguration,
        }),
        Arn = schema.new({
            id = id.from(_N, "UpdateSourceLocationOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "UpdateSourceLocationOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        DefaultSegmentDeliveryConfiguration = schema.new({
            id = id.from(_N, "UpdateSourceLocationOutput", "DefaultSegmentDeliveryConfiguration"),
            type = "structure",
            name = "DefaultSegmentDeliveryConfiguration",
            target_id = id.from(_N, "DefaultSegmentDeliveryConfiguration"),
            target = M.DefaultSegmentDeliveryConfiguration,
        }),
        HttpConfiguration = schema.new({
            id = id.from(_N, "UpdateSourceLocationOutput", "HttpConfiguration"),
            type = "structure",
            name = "HttpConfiguration",
            target_id = id.from(_N, "HttpConfiguration"),
            target = M.HttpConfiguration,
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "UpdateSourceLocationOutput", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        SegmentDeliveryConfigurations = schema.new({
            id = id.from(_N, "UpdateSourceLocationOutput", "SegmentDeliveryConfigurations"),
            type = "list",
            name = "SegmentDeliveryConfigurations",
            target_id = prelude.Document.id,
            list_member = M.SegmentDeliveryConfiguration,
        }),
        SourceLocationName = schema.new({
            id = id.from(_N, "UpdateSourceLocationOutput", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "UpdateSourceLocationOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagResourceInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceOutput"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "TagKeys"),
            type = "list",
            name = "TagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "tagKeys" },
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

M.UpdateVodSourceInput = schema.new({
    id = id.from(_N, "UpdateVodSourceInput"),
    type = "structure",
    members = {
        HttpPackageConfigurations = schema.new({
            id = id.from(_N, "UpdateVodSourceInput", "HttpPackageConfigurations"),
            type = "list",
            name = "HttpPackageConfigurations",
            target_id = prelude.Document.id,
            list_member = M.HttpPackageConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceLocationName = schema.new({
            id = id.from(_N, "UpdateVodSourceInput", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        VodSourceName = schema.new({
            id = id.from(_N, "UpdateVodSourceInput", "VodSourceName"),
            type = "string",
            name = "VodSourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.UpdateVodSourceOutput = schema.new({
    id = id.from(_N, "UpdateVodSourceOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "UpdateVodSourceOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "UpdateVodSourceOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        HttpPackageConfigurations = schema.new({
            id = id.from(_N, "UpdateVodSourceOutput", "HttpPackageConfigurations"),
            type = "list",
            name = "HttpPackageConfigurations",
            target_id = prelude.Document.id,
            list_member = M.HttpPackageConfiguration,
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "UpdateVodSourceOutput", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
            },
        }),
        SourceLocationName = schema.new({
            id = id.from(_N, "UpdateVodSourceOutput", "SourceLocationName"),
            type = "string",
            name = "SourceLocationName",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "UpdateVodSourceOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        VodSourceName = schema.new({
            id = id.from(_N, "UpdateVodSourceOutput", "VodSourceName"),
            type = "string",
            name = "VodSourceName",
            target_id = prelude.String.id,
        }),
    },
})

return M
