

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.ivs"

local M = {}

M.ChannelArnList = schema.new({ type = "list", list_member = prelude.String })

M.Channels = schema.new({ type = "list", list_member = M.Channel })

M.BatchErrors = schema.new({ type = "list", list_member = M.BatchError })

M.StreamKeyArnList = schema.new({ type = "list", list_member = prelude.String })

M.StreamKeys = schema.new({ type = "list", list_member = M.StreamKey })

M.BatchStartViewerSessionRevocationViewerSessionList = schema.new({ type = "list", list_member = M.BatchStartViewerSessionRevocationViewerSession })

M.BatchStartViewerSessionRevocationErrors = schema.new({ type = "list", list_member = M.BatchStartViewerSessionRevocationError })

M.MediaTailorPlaybackConfigurationsList = schema.new({ type = "list", list_member = M.MediaTailorPlaybackConfiguration })

M.Tags = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.PlaybackRestrictionPolicyAllowedCountryList = schema.new({ type = "list", list_member = prelude.String })

M.PlaybackRestrictionPolicyAllowedOriginList = schema.new({ type = "list", list_member = prelude.String })

M.AdConfigurationList = schema.new({ type = "list", list_member = M.AdConfigurationSummary })

M.ChannelList = schema.new({ type = "list", list_member = M.ChannelSummary })

M.PlaybackKeyPairList = schema.new({ type = "list", list_member = M.PlaybackKeyPairSummary })

M.PlaybackRestrictionPolicyList = schema.new({ type = "list", list_member = M.PlaybackRestrictionPolicySummary })

M.RecordingConfigurationList = schema.new({ type = "list", list_member = M.RecordingConfigurationSummary })

M.StreamKeyList = schema.new({ type = "list", list_member = M.StreamKeySummary })

M.StreamList = schema.new({ type = "list", list_member = M.StreamSummary })

M.StreamSessionList = schema.new({ type = "list", list_member = M.StreamSessionSummary })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.ThumbnailConfigurationStorageList = schema.new({ type = "list", list_member = prelude.String })

M.RenditionConfigurationRenditionList = schema.new({ type = "list", list_member = prelude.String })

M.StreamEvents = schema.new({ type = "list", list_member = M.StreamEvent })

M.VideoConfigurationList = schema.new({ type = "list", list_member = M.VideoConfiguration })

M.AudioConfigurationList = schema.new({ type = "list", list_member = M.AudioConfiguration })

M.AccessDeniedException = schema.new({
   id = id.from(_N, "AccessDeniedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      accessControlAllowOrigin = schema.new({
         id = id.from(_N, "AccessDeniedException", "accessControlAllowOrigin"),
         type = "string",
         name = "accessControlAllowOrigin",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Access-Control-Allow-Origin" },
         },
      }),
      accessControlExposeHeaders = schema.new({
         id = id.from(_N, "AccessDeniedException", "accessControlExposeHeaders"),
         type = "string",
         name = "accessControlExposeHeaders",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Access-Control-Expose-Headers" },
         },
      }),
      cacheControl = schema.new({
         id = id.from(_N, "AccessDeniedException", "cacheControl"),
         type = "string",
         name = "cacheControl",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Cache-Control" },
         },
      }),
      contentSecurityPolicy = schema.new({
         id = id.from(_N, "AccessDeniedException", "contentSecurityPolicy"),
         type = "string",
         name = "contentSecurityPolicy",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Security-Policy" },
         },
      }),
      strictTransportSecurity = schema.new({
         id = id.from(_N, "AccessDeniedException", "strictTransportSecurity"),
         type = "string",
         name = "strictTransportSecurity",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Strict-Transport-Security" },
         },
      }),
      xContentTypeOptions = schema.new({
         id = id.from(_N, "AccessDeniedException", "xContentTypeOptions"),
         type = "string",
         name = "xContentTypeOptions",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Content-Type-Options" },
         },
      }),
      xFrameOptions = schema.new({
         id = id.from(_N, "AccessDeniedException", "xFrameOptions"),
         type = "string",
         name = "xFrameOptions",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Frame-Options" },
         },
      }),
      xAmznErrorType = schema.new({
         id = id.from(_N, "AccessDeniedException", "xAmznErrorType"),
         type = "string",
         name = "xAmznErrorType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amzn-ErrorType" },
         },
      }),
      exceptionMessage = schema.new({
         id = id.from(_N, "AccessDeniedException", "exceptionMessage"),
         type = "string",
         name = "exceptionMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.MediaTailorPlaybackConfiguration = schema.new({
   id = id.from(_N, "MediaTailorPlaybackConfiguration"),
   type = "structure",
   members = {
      playbackConfigurationArn = schema.new({
         id = id.from(_N, "MediaTailorPlaybackConfiguration", "playbackConfigurationArn"),
         type = "string",
         name = "playbackConfigurationArn",
         target_id = prelude.String.id,
      }),
   },
})

M.AdConfiguration = schema.new({
   id = id.from(_N, "AdConfiguration"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "AdConfiguration", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "AdConfiguration", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      mediaTailorPlaybackConfigurations = schema.new({
         id = id.from(_N, "AdConfiguration", "mediaTailorPlaybackConfigurations"),
         type = "list",
         name = "mediaTailorPlaybackConfigurations",
         target_id = prelude.Document.id,
         list_member = M.MediaTailorPlaybackConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "AdConfiguration", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.AdConfigurationSummary = schema.new({
   id = id.from(_N, "AdConfigurationSummary"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "AdConfigurationSummary", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "AdConfigurationSummary", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      mediaTailorPlaybackConfigurations = schema.new({
         id = id.from(_N, "AdConfigurationSummary", "mediaTailorPlaybackConfigurations"),
         type = "list",
         name = "mediaTailorPlaybackConfigurations",
         target_id = prelude.Document.id,
         list_member = M.MediaTailorPlaybackConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "AdConfigurationSummary", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.BatchGetChannelInput = schema.new({
   id = id.from(_N, "BatchGetChannelRequest"),
   type = "structure",
   members = {
      arns = schema.new({
         id = id.from(_N, "BatchGetChannelInput", "arns"),
         type = "list",
         name = "arns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.MultitrackInputConfiguration = schema.new({
   id = id.from(_N, "MultitrackInputConfiguration"),
   type = "structure",
   members = {
      enabled = schema.new({
         id = id.from(_N, "MultitrackInputConfiguration", "enabled"),
         type = "boolean",
         name = "enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      policy = schema.new({
         id = id.from(_N, "MultitrackInputConfiguration", "policy"),
         type = "string",
         name = "policy",
         target_id = prelude.String.id,
      }),
      maximumResolution = schema.new({
         id = id.from(_N, "MultitrackInputConfiguration", "maximumResolution"),
         type = "string",
         name = "maximumResolution",
         target_id = prelude.String.id,
      }),
   },
})

M.Srt = schema.new({
   id = id.from(_N, "Srt"),
   type = "structure",
   members = {
      endpoint = schema.new({
         id = id.from(_N, "Srt", "endpoint"),
         type = "string",
         name = "endpoint",
         target_id = prelude.String.id,
      }),
      passphrase = schema.new({
         id = id.from(_N, "Srt", "passphrase"),
         type = "string",
         name = "passphrase",
         target_id = prelude.String.id,
      }),
   },
})

M.Channel = schema.new({
   id = id.from(_N, "Channel"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "Channel", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      name = schema.new({
         id = id.from(_N, "Channel", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      latencyMode = schema.new({
         id = id.from(_N, "Channel", "latencyMode"),
         type = "string",
         name = "latencyMode",
         target_id = prelude.String.id,
      }),
      type = schema.new({
         id = id.from(_N, "Channel", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      recordingConfigurationArn = schema.new({
         id = id.from(_N, "Channel", "recordingConfigurationArn"),
         type = "string",
         name = "recordingConfigurationArn",
         target_id = prelude.String.id,
      }),
      ingestEndpoint = schema.new({
         id = id.from(_N, "Channel", "ingestEndpoint"),
         type = "string",
         name = "ingestEndpoint",
         target_id = prelude.String.id,
      }),
      playbackUrl = schema.new({
         id = id.from(_N, "Channel", "playbackUrl"),
         type = "string",
         name = "playbackUrl",
         target_id = prelude.String.id,
      }),
      authorized = schema.new({
         id = id.from(_N, "Channel", "authorized"),
         type = "boolean",
         name = "authorized",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      tags = schema.new({
         id = id.from(_N, "Channel", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      insecureIngest = schema.new({
         id = id.from(_N, "Channel", "insecureIngest"),
         type = "boolean",
         name = "insecureIngest",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      preset = schema.new({
         id = id.from(_N, "Channel", "preset"),
         type = "string",
         name = "preset",
         target_id = prelude.String.id,
      }),
      srt = schema.new({
         id = id.from(_N, "Channel", "srt"),
         type = "structure",
         name = "srt",
         target_id = id.from(_N, "Srt"),
         target = M.Srt,
      }),
      playbackRestrictionPolicyArn = schema.new({
         id = id.from(_N, "Channel", "playbackRestrictionPolicyArn"),
         type = "string",
         name = "playbackRestrictionPolicyArn",
         target_id = prelude.String.id,
      }),
      multitrackInputConfiguration = schema.new({
         id = id.from(_N, "Channel", "multitrackInputConfiguration"),
         type = "structure",
         name = "multitrackInputConfiguration",
         target_id = id.from(_N, "MultitrackInputConfiguration"),
         target = M.MultitrackInputConfiguration,
      }),
      containerFormat = schema.new({
         id = id.from(_N, "Channel", "containerFormat"),
         type = "string",
         name = "containerFormat",
         target_id = prelude.String.id,
      }),
      adConfigurationArn = schema.new({
         id = id.from(_N, "Channel", "adConfigurationArn"),
         type = "string",
         name = "adConfigurationArn",
         target_id = prelude.String.id,
      }),
   },
})

M.BatchError = schema.new({
   id = id.from(_N, "BatchError"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "BatchError", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      code = schema.new({
         id = id.from(_N, "BatchError", "code"),
         type = "string",
         name = "code",
         target_id = prelude.String.id,
      }),
      message = schema.new({
         id = id.from(_N, "BatchError", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.BatchGetChannelOutput = schema.new({
   id = id.from(_N, "BatchGetChannelResponse"),
   type = "structure",
   members = {
      accessControlAllowOrigin = schema.new({
         id = id.from(_N, "BatchGetChannelOutput", "accessControlAllowOrigin"),
         type = "string",
         name = "accessControlAllowOrigin",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Access-Control-Allow-Origin" },
         },
      }),
      accessControlExposeHeaders = schema.new({
         id = id.from(_N, "BatchGetChannelOutput", "accessControlExposeHeaders"),
         type = "string",
         name = "accessControlExposeHeaders",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Access-Control-Expose-Headers" },
         },
      }),
      cacheControl = schema.new({
         id = id.from(_N, "BatchGetChannelOutput", "cacheControl"),
         type = "string",
         name = "cacheControl",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Cache-Control" },
         },
      }),
      contentSecurityPolicy = schema.new({
         id = id.from(_N, "BatchGetChannelOutput", "contentSecurityPolicy"),
         type = "string",
         name = "contentSecurityPolicy",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Security-Policy" },
         },
      }),
      strictTransportSecurity = schema.new({
         id = id.from(_N, "BatchGetChannelOutput", "strictTransportSecurity"),
         type = "string",
         name = "strictTransportSecurity",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Strict-Transport-Security" },
         },
      }),
      xContentTypeOptions = schema.new({
         id = id.from(_N, "BatchGetChannelOutput", "xContentTypeOptions"),
         type = "string",
         name = "xContentTypeOptions",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Content-Type-Options" },
         },
      }),
      xFrameOptions = schema.new({
         id = id.from(_N, "BatchGetChannelOutput", "xFrameOptions"),
         type = "string",
         name = "xFrameOptions",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Frame-Options" },
         },
      }),
      channels = schema.new({
         id = id.from(_N, "BatchGetChannelOutput", "channels"),
         type = "list",
         name = "channels",
         target_id = prelude.Document.id,
         list_member = M.Channel,
      }),
      errors = schema.new({
         id = id.from(_N, "BatchGetChannelOutput", "errors"),
         type = "list",
         name = "errors",
         target_id = prelude.Document.id,
         list_member = M.BatchError,
      }),
   },
})

M.ServiceUnavailable = schema.new({
   id = id.from(_N, "ServiceUnavailable"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      accessControlAllowOrigin = schema.new({
         id = id.from(_N, "ServiceUnavailable", "accessControlAllowOrigin"),
         type = "string",
         name = "accessControlAllowOrigin",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Access-Control-Allow-Origin" },
         },
      }),
      accessControlExposeHeaders = schema.new({
         id = id.from(_N, "ServiceUnavailable", "accessControlExposeHeaders"),
         type = "string",
         name = "accessControlExposeHeaders",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Access-Control-Expose-Headers" },
         },
      }),
      cacheControl = schema.new({
         id = id.from(_N, "ServiceUnavailable", "cacheControl"),
         type = "string",
         name = "cacheControl",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Cache-Control" },
         },
      }),
      contentSecurityPolicy = schema.new({
         id = id.from(_N, "ServiceUnavailable", "contentSecurityPolicy"),
         type = "string",
         name = "contentSecurityPolicy",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Security-Policy" },
         },
      }),
      strictTransportSecurity = schema.new({
         id = id.from(_N, "ServiceUnavailable", "strictTransportSecurity"),
         type = "string",
         name = "strictTransportSecurity",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Strict-Transport-Security" },
         },
      }),
      xContentTypeOptions = schema.new({
         id = id.from(_N, "ServiceUnavailable", "xContentTypeOptions"),
         type = "string",
         name = "xContentTypeOptions",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Content-Type-Options" },
         },
      }),
      xFrameOptions = schema.new({
         id = id.from(_N, "ServiceUnavailable", "xFrameOptions"),
         type = "string",
         name = "xFrameOptions",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Frame-Options" },
         },
      }),
      xAmznErrorType = schema.new({
         id = id.from(_N, "ServiceUnavailable", "xAmznErrorType"),
         type = "string",
         name = "xAmznErrorType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amzn-ErrorType" },
         },
      }),
      exceptionMessage = schema.new({
         id = id.from(_N, "ServiceUnavailable", "exceptionMessage"),
         type = "string",
         name = "exceptionMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.ValidationException = schema.new({
   id = id.from(_N, "ValidationException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      accessControlAllowOrigin = schema.new({
         id = id.from(_N, "ValidationException", "accessControlAllowOrigin"),
         type = "string",
         name = "accessControlAllowOrigin",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Access-Control-Allow-Origin" },
         },
      }),
      accessControlExposeHeaders = schema.new({
         id = id.from(_N, "ValidationException", "accessControlExposeHeaders"),
         type = "string",
         name = "accessControlExposeHeaders",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Access-Control-Expose-Headers" },
         },
      }),
      cacheControl = schema.new({
         id = id.from(_N, "ValidationException", "cacheControl"),
         type = "string",
         name = "cacheControl",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Cache-Control" },
         },
      }),
      contentSecurityPolicy = schema.new({
         id = id.from(_N, "ValidationException", "contentSecurityPolicy"),
         type = "string",
         name = "contentSecurityPolicy",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Security-Policy" },
         },
      }),
      strictTransportSecurity = schema.new({
         id = id.from(_N, "ValidationException", "strictTransportSecurity"),
         type = "string",
         name = "strictTransportSecurity",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Strict-Transport-Security" },
         },
      }),
      xContentTypeOptions = schema.new({
         id = id.from(_N, "ValidationException", "xContentTypeOptions"),
         type = "string",
         name = "xContentTypeOptions",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Content-Type-Options" },
         },
      }),
      xFrameOptions = schema.new({
         id = id.from(_N, "ValidationException", "xFrameOptions"),
         type = "string",
         name = "xFrameOptions",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Frame-Options" },
         },
      }),
      xAmznErrorType = schema.new({
         id = id.from(_N, "ValidationException", "xAmznErrorType"),
         type = "string",
         name = "xAmznErrorType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amzn-ErrorType" },
         },
      }),
      exceptionMessage = schema.new({
         id = id.from(_N, "ValidationException", "exceptionMessage"),
         type = "string",
         name = "exceptionMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.BatchGetStreamKeyInput = schema.new({
   id = id.from(_N, "BatchGetStreamKeyRequest"),
   type = "structure",
   members = {
      arns = schema.new({
         id = id.from(_N, "BatchGetStreamKeyInput", "arns"),
         type = "list",
         name = "arns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StreamKey = schema.new({
   id = id.from(_N, "StreamKey"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "StreamKey", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      value = schema.new({
         id = id.from(_N, "StreamKey", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
      }),
      channelArn = schema.new({
         id = id.from(_N, "StreamKey", "channelArn"),
         type = "string",
         name = "channelArn",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "StreamKey", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.BatchGetStreamKeyOutput = schema.new({
   id = id.from(_N, "BatchGetStreamKeyResponse"),
   type = "structure",
   members = {
      accessControlAllowOrigin = schema.new({
         id = id.from(_N, "BatchGetStreamKeyOutput", "accessControlAllowOrigin"),
         type = "string",
         name = "accessControlAllowOrigin",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Access-Control-Allow-Origin" },
         },
      }),
      accessControlExposeHeaders = schema.new({
         id = id.from(_N, "BatchGetStreamKeyOutput", "accessControlExposeHeaders"),
         type = "string",
         name = "accessControlExposeHeaders",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Access-Control-Expose-Headers" },
         },
      }),
      cacheControl = schema.new({
         id = id.from(_N, "BatchGetStreamKeyOutput", "cacheControl"),
         type = "string",
         name = "cacheControl",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Cache-Control" },
         },
      }),
      contentSecurityPolicy = schema.new({
         id = id.from(_N, "BatchGetStreamKeyOutput", "contentSecurityPolicy"),
         type = "string",
         name = "contentSecurityPolicy",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Security-Policy" },
         },
      }),
      strictTransportSecurity = schema.new({
         id = id.from(_N, "BatchGetStreamKeyOutput", "strictTransportSecurity"),
         type = "string",
         name = "strictTransportSecurity",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Strict-Transport-Security" },
         },
      }),
      xContentTypeOptions = schema.new({
         id = id.from(_N, "BatchGetStreamKeyOutput", "xContentTypeOptions"),
         type = "string",
         name = "xContentTypeOptions",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Content-Type-Options" },
         },
      }),
      xFrameOptions = schema.new({
         id = id.from(_N, "BatchGetStreamKeyOutput", "xFrameOptions"),
         type = "string",
         name = "xFrameOptions",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Frame-Options" },
         },
      }),
      streamKeys = schema.new({
         id = id.from(_N, "BatchGetStreamKeyOutput", "streamKeys"),
         type = "list",
         name = "streamKeys",
         target_id = prelude.Document.id,
         list_member = M.StreamKey,
      }),
      errors = schema.new({
         id = id.from(_N, "BatchGetStreamKeyOutput", "errors"),
         type = "list",
         name = "errors",
         target_id = prelude.Document.id,
         list_member = M.BatchError,
      }),
   },
})

M.BatchStartViewerSessionRevocationViewerSession = schema.new({
   id = id.from(_N, "BatchStartViewerSessionRevocationViewerSession"),
   type = "structure",
   members = {
      channelArn = schema.new({
         id = id.from(_N, "BatchStartViewerSessionRevocationViewerSession", "channelArn"),
         type = "string",
         name = "channelArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      viewerId = schema.new({
         id = id.from(_N, "BatchStartViewerSessionRevocationViewerSession", "viewerId"),
         type = "string",
         name = "viewerId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      viewerSessionVersionsLessThanOrEqualTo = schema.new({
         id = id.from(_N, "BatchStartViewerSessionRevocationViewerSession", "viewerSessionVersionsLessThanOrEqualTo"),
         type = "integer",
         name = "viewerSessionVersionsLessThanOrEqualTo",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.BatchStartViewerSessionRevocationInput = schema.new({
   id = id.from(_N, "BatchStartViewerSessionRevocationRequest"),
   type = "structure",
   members = {
      viewerSessions = schema.new({
         id = id.from(_N, "BatchStartViewerSessionRevocationInput", "viewerSessions"),
         type = "list",
         name = "viewerSessions",
         target_id = prelude.Document.id,
         list_member = M.BatchStartViewerSessionRevocationViewerSession,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BatchStartViewerSessionRevocationError = schema.new({
   id = id.from(_N, "BatchStartViewerSessionRevocationError"),
   type = "structure",
   members = {
      channelArn = schema.new({
         id = id.from(_N, "BatchStartViewerSessionRevocationError", "channelArn"),
         type = "string",
         name = "channelArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      viewerId = schema.new({
         id = id.from(_N, "BatchStartViewerSessionRevocationError", "viewerId"),
         type = "string",
         name = "viewerId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      code = schema.new({
         id = id.from(_N, "BatchStartViewerSessionRevocationError", "code"),
         type = "string",
         name = "code",
         target_id = prelude.String.id,
      }),
      message = schema.new({
         id = id.from(_N, "BatchStartViewerSessionRevocationError", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.BatchStartViewerSessionRevocationOutput = schema.new({
   id = id.from(_N, "BatchStartViewerSessionRevocationResponse"),
   type = "structure",
   members = {
      accessControlAllowOrigin = schema.new({
         id = id.from(_N, "BatchStartViewerSessionRevocationOutput", "accessControlAllowOrigin"),
         type = "string",
         name = "accessControlAllowOrigin",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Access-Control-Allow-Origin" },
         },
      }),
      accessControlExposeHeaders = schema.new({
         id = id.from(_N, "BatchStartViewerSessionRevocationOutput", "accessControlExposeHeaders"),
         type = "string",
         name = "accessControlExposeHeaders",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Access-Control-Expose-Headers" },
         },
      }),
      cacheControl = schema.new({
         id = id.from(_N, "BatchStartViewerSessionRevocationOutput", "cacheControl"),
         type = "string",
         name = "cacheControl",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Cache-Control" },
         },
      }),
      contentSecurityPolicy = schema.new({
         id = id.from(_N, "BatchStartViewerSessionRevocationOutput", "contentSecurityPolicy"),
         type = "string",
         name = "contentSecurityPolicy",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Security-Policy" },
         },
      }),
      strictTransportSecurity = schema.new({
         id = id.from(_N, "BatchStartViewerSessionRevocationOutput", "strictTransportSecurity"),
         type = "string",
         name = "strictTransportSecurity",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Strict-Transport-Security" },
         },
      }),
      xContentTypeOptions = schema.new({
         id = id.from(_N, "BatchStartViewerSessionRevocationOutput", "xContentTypeOptions"),
         type = "string",
         name = "xContentTypeOptions",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Content-Type-Options" },
         },
      }),
      xFrameOptions = schema.new({
         id = id.from(_N, "BatchStartViewerSessionRevocationOutput", "xFrameOptions"),
         type = "string",
         name = "xFrameOptions",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Frame-Options" },
         },
      }),
      errors = schema.new({
         id = id.from(_N, "BatchStartViewerSessionRevocationOutput", "errors"),
         type = "list",
         name = "errors",
         target_id = prelude.Document.id,
         list_member = M.BatchStartViewerSessionRevocationError,
      }),
   },
})

M.PendingVerification = schema.new({
   id = id.from(_N, "PendingVerification"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      accessControlAllowOrigin = schema.new({
         id = id.from(_N, "PendingVerification", "accessControlAllowOrigin"),
         type = "string",
         name = "accessControlAllowOrigin",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Access-Control-Allow-Origin" },
         },
      }),
      accessControlExposeHeaders = schema.new({
         id = id.from(_N, "PendingVerification", "accessControlExposeHeaders"),
         type = "string",
         name = "accessControlExposeHeaders",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Access-Control-Expose-Headers" },
         },
      }),
      cacheControl = schema.new({
         id = id.from(_N, "PendingVerification", "cacheControl"),
         type = "string",
         name = "cacheControl",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Cache-Control" },
         },
      }),
      contentSecurityPolicy = schema.new({
         id = id.from(_N, "PendingVerification", "contentSecurityPolicy"),
         type = "string",
         name = "contentSecurityPolicy",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Security-Policy" },
         },
      }),
      strictTransportSecurity = schema.new({
         id = id.from(_N, "PendingVerification", "strictTransportSecurity"),
         type = "string",
         name = "strictTransportSecurity",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Strict-Transport-Security" },
         },
      }),
      xContentTypeOptions = schema.new({
         id = id.from(_N, "PendingVerification", "xContentTypeOptions"),
         type = "string",
         name = "xContentTypeOptions",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Content-Type-Options" },
         },
      }),
      xFrameOptions = schema.new({
         id = id.from(_N, "PendingVerification", "xFrameOptions"),
         type = "string",
         name = "xFrameOptions",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Frame-Options" },
         },
      }),
      xAmznErrorType = schema.new({
         id = id.from(_N, "PendingVerification", "xAmznErrorType"),
         type = "string",
         name = "xAmznErrorType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amzn-ErrorType" },
         },
      }),
      exceptionMessage = schema.new({
         id = id.from(_N, "PendingVerification", "exceptionMessage"),
         type = "string",
         name = "exceptionMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.ThrottlingException = schema.new({
   id = id.from(_N, "ThrottlingException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      accessControlAllowOrigin = schema.new({
         id = id.from(_N, "ThrottlingException", "accessControlAllowOrigin"),
         type = "string",
         name = "accessControlAllowOrigin",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Access-Control-Allow-Origin" },
         },
      }),
      accessControlExposeHeaders = schema.new({
         id = id.from(_N, "ThrottlingException", "accessControlExposeHeaders"),
         type = "string",
         name = "accessControlExposeHeaders",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Access-Control-Expose-Headers" },
         },
      }),
      cacheControl = schema.new({
         id = id.from(_N, "ThrottlingException", "cacheControl"),
         type = "string",
         name = "cacheControl",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Cache-Control" },
         },
      }),
      contentSecurityPolicy = schema.new({
         id = id.from(_N, "ThrottlingException", "contentSecurityPolicy"),
         type = "string",
         name = "contentSecurityPolicy",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Security-Policy" },
         },
      }),
      strictTransportSecurity = schema.new({
         id = id.from(_N, "ThrottlingException", "strictTransportSecurity"),
         type = "string",
         name = "strictTransportSecurity",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Strict-Transport-Security" },
         },
      }),
      xContentTypeOptions = schema.new({
         id = id.from(_N, "ThrottlingException", "xContentTypeOptions"),
         type = "string",
         name = "xContentTypeOptions",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Content-Type-Options" },
         },
      }),
      xFrameOptions = schema.new({
         id = id.from(_N, "ThrottlingException", "xFrameOptions"),
         type = "string",
         name = "xFrameOptions",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Frame-Options" },
         },
      }),
      xAmznErrorType = schema.new({
         id = id.from(_N, "ThrottlingException", "xAmznErrorType"),
         type = "string",
         name = "xAmznErrorType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amzn-ErrorType" },
         },
      }),
      exceptionMessage = schema.new({
         id = id.from(_N, "ThrottlingException", "exceptionMessage"),
         type = "string",
         name = "exceptionMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.ConflictException = schema.new({
   id = id.from(_N, "ConflictException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      accessControlAllowOrigin = schema.new({
         id = id.from(_N, "ConflictException", "accessControlAllowOrigin"),
         type = "string",
         name = "accessControlAllowOrigin",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Access-Control-Allow-Origin" },
         },
      }),
      accessControlExposeHeaders = schema.new({
         id = id.from(_N, "ConflictException", "accessControlExposeHeaders"),
         type = "string",
         name = "accessControlExposeHeaders",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Access-Control-Expose-Headers" },
         },
      }),
      cacheControl = schema.new({
         id = id.from(_N, "ConflictException", "cacheControl"),
         type = "string",
         name = "cacheControl",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Cache-Control" },
         },
      }),
      contentSecurityPolicy = schema.new({
         id = id.from(_N, "ConflictException", "contentSecurityPolicy"),
         type = "string",
         name = "contentSecurityPolicy",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Security-Policy" },
         },
      }),
      strictTransportSecurity = schema.new({
         id = id.from(_N, "ConflictException", "strictTransportSecurity"),
         type = "string",
         name = "strictTransportSecurity",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Strict-Transport-Security" },
         },
      }),
      xContentTypeOptions = schema.new({
         id = id.from(_N, "ConflictException", "xContentTypeOptions"),
         type = "string",
         name = "xContentTypeOptions",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Content-Type-Options" },
         },
      }),
      xFrameOptions = schema.new({
         id = id.from(_N, "ConflictException", "xFrameOptions"),
         type = "string",
         name = "xFrameOptions",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Frame-Options" },
         },
      }),
      xAmznErrorType = schema.new({
         id = id.from(_N, "ConflictException", "xAmznErrorType"),
         type = "string",
         name = "xAmznErrorType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amzn-ErrorType" },
         },
      }),
      exceptionMessage = schema.new({
         id = id.from(_N, "ConflictException", "exceptionMessage"),
         type = "string",
         name = "exceptionMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateAdConfigurationInput = schema.new({
   id = id.from(_N, "CreateAdConfigurationRequest"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "CreateAdConfigurationInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      mediaTailorPlaybackConfigurations = schema.new({
         id = id.from(_N, "CreateAdConfigurationInput", "mediaTailorPlaybackConfigurations"),
         type = "list",
         name = "mediaTailorPlaybackConfigurations",
         target_id = prelude.Document.id,
         list_member = M.MediaTailorPlaybackConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "CreateAdConfigurationInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreateAdConfigurationOutput = schema.new({
   id = id.from(_N, "CreateAdConfigurationResponse"),
   type = "structure",
   members = {
      adConfiguration = schema.new({
         id = id.from(_N, "CreateAdConfigurationOutput", "adConfiguration"),
         type = "structure",
         name = "adConfiguration",
         target_id = id.from(_N, "AdConfiguration"),
         target = M.AdConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.InternalServerException = schema.new({
   id = id.from(_N, "InternalServerException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      accessControlAllowOrigin = schema.new({
         id = id.from(_N, "InternalServerException", "accessControlAllowOrigin"),
         type = "string",
         name = "accessControlAllowOrigin",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Access-Control-Allow-Origin" },
         },
      }),
      accessControlExposeHeaders = schema.new({
         id = id.from(_N, "InternalServerException", "accessControlExposeHeaders"),
         type = "string",
         name = "accessControlExposeHeaders",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Access-Control-Expose-Headers" },
         },
      }),
      cacheControl = schema.new({
         id = id.from(_N, "InternalServerException", "cacheControl"),
         type = "string",
         name = "cacheControl",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Cache-Control" },
         },
      }),
      contentSecurityPolicy = schema.new({
         id = id.from(_N, "InternalServerException", "contentSecurityPolicy"),
         type = "string",
         name = "contentSecurityPolicy",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Security-Policy" },
         },
      }),
      strictTransportSecurity = schema.new({
         id = id.from(_N, "InternalServerException", "strictTransportSecurity"),
         type = "string",
         name = "strictTransportSecurity",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Strict-Transport-Security" },
         },
      }),
      xContentTypeOptions = schema.new({
         id = id.from(_N, "InternalServerException", "xContentTypeOptions"),
         type = "string",
         name = "xContentTypeOptions",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Content-Type-Options" },
         },
      }),
      xFrameOptions = schema.new({
         id = id.from(_N, "InternalServerException", "xFrameOptions"),
         type = "string",
         name = "xFrameOptions",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Frame-Options" },
         },
      }),
      xAmznErrorType = schema.new({
         id = id.from(_N, "InternalServerException", "xAmznErrorType"),
         type = "string",
         name = "xAmznErrorType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amzn-ErrorType" },
         },
      }),
      exceptionMessage = schema.new({
         id = id.from(_N, "InternalServerException", "exceptionMessage"),
         type = "string",
         name = "exceptionMessage",
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
      accessControlAllowOrigin = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "accessControlAllowOrigin"),
         type = "string",
         name = "accessControlAllowOrigin",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Access-Control-Allow-Origin" },
         },
      }),
      accessControlExposeHeaders = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "accessControlExposeHeaders"),
         type = "string",
         name = "accessControlExposeHeaders",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Access-Control-Expose-Headers" },
         },
      }),
      cacheControl = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "cacheControl"),
         type = "string",
         name = "cacheControl",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Cache-Control" },
         },
      }),
      contentSecurityPolicy = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "contentSecurityPolicy"),
         type = "string",
         name = "contentSecurityPolicy",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Security-Policy" },
         },
      }),
      strictTransportSecurity = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "strictTransportSecurity"),
         type = "string",
         name = "strictTransportSecurity",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Strict-Transport-Security" },
         },
      }),
      xContentTypeOptions = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "xContentTypeOptions"),
         type = "string",
         name = "xContentTypeOptions",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Content-Type-Options" },
         },
      }),
      xFrameOptions = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "xFrameOptions"),
         type = "string",
         name = "xFrameOptions",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Frame-Options" },
         },
      }),
      xAmznErrorType = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "xAmznErrorType"),
         type = "string",
         name = "xAmznErrorType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amzn-ErrorType" },
         },
      }),
      exceptionMessage = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "exceptionMessage"),
         type = "string",
         name = "exceptionMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.ServiceQuotaExceededException = schema.new({
   id = id.from(_N, "ServiceQuotaExceededException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      accessControlAllowOrigin = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "accessControlAllowOrigin"),
         type = "string",
         name = "accessControlAllowOrigin",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Access-Control-Allow-Origin" },
         },
      }),
      accessControlExposeHeaders = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "accessControlExposeHeaders"),
         type = "string",
         name = "accessControlExposeHeaders",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Access-Control-Expose-Headers" },
         },
      }),
      cacheControl = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "cacheControl"),
         type = "string",
         name = "cacheControl",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Cache-Control" },
         },
      }),
      contentSecurityPolicy = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "contentSecurityPolicy"),
         type = "string",
         name = "contentSecurityPolicy",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Security-Policy" },
         },
      }),
      strictTransportSecurity = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "strictTransportSecurity"),
         type = "string",
         name = "strictTransportSecurity",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Strict-Transport-Security" },
         },
      }),
      xContentTypeOptions = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "xContentTypeOptions"),
         type = "string",
         name = "xContentTypeOptions",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Content-Type-Options" },
         },
      }),
      xFrameOptions = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "xFrameOptions"),
         type = "string",
         name = "xFrameOptions",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Frame-Options" },
         },
      }),
      xAmznErrorType = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "xAmznErrorType"),
         type = "string",
         name = "xAmznErrorType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amzn-ErrorType" },
         },
      }),
      exceptionMessage = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "exceptionMessage"),
         type = "string",
         name = "exceptionMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateChannelInput = schema.new({
   id = id.from(_N, "CreateChannelRequest"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "CreateChannelInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      latencyMode = schema.new({
         id = id.from(_N, "CreateChannelInput", "latencyMode"),
         type = "string",
         name = "latencyMode",
         target_id = prelude.String.id,
      }),
      type = schema.new({
         id = id.from(_N, "CreateChannelInput", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      authorized = schema.new({
         id = id.from(_N, "CreateChannelInput", "authorized"),
         type = "boolean",
         name = "authorized",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      recordingConfigurationArn = schema.new({
         id = id.from(_N, "CreateChannelInput", "recordingConfigurationArn"),
         type = "string",
         name = "recordingConfigurationArn",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateChannelInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      insecureIngest = schema.new({
         id = id.from(_N, "CreateChannelInput", "insecureIngest"),
         type = "boolean",
         name = "insecureIngest",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      preset = schema.new({
         id = id.from(_N, "CreateChannelInput", "preset"),
         type = "string",
         name = "preset",
         target_id = prelude.String.id,
      }),
      playbackRestrictionPolicyArn = schema.new({
         id = id.from(_N, "CreateChannelInput", "playbackRestrictionPolicyArn"),
         type = "string",
         name = "playbackRestrictionPolicyArn",
         target_id = prelude.String.id,
      }),
      multitrackInputConfiguration = schema.new({
         id = id.from(_N, "CreateChannelInput", "multitrackInputConfiguration"),
         type = "structure",
         name = "multitrackInputConfiguration",
         target_id = id.from(_N, "MultitrackInputConfiguration"),
         target = M.MultitrackInputConfiguration,
      }),
      containerFormat = schema.new({
         id = id.from(_N, "CreateChannelInput", "containerFormat"),
         type = "string",
         name = "containerFormat",
         target_id = prelude.String.id,
      }),
      adConfigurationArn = schema.new({
         id = id.from(_N, "CreateChannelInput", "adConfigurationArn"),
         type = "string",
         name = "adConfigurationArn",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateChannelOutput = schema.new({
   id = id.from(_N, "CreateChannelResponse"),
   type = "structure",
   members = {
      channel = schema.new({
         id = id.from(_N, "CreateChannelOutput", "channel"),
         type = "structure",
         name = "channel",
         target_id = id.from(_N, "Channel"),
         target = M.Channel,
      }),
      streamKey = schema.new({
         id = id.from(_N, "CreateChannelOutput", "streamKey"),
         type = "structure",
         name = "streamKey",
         target_id = id.from(_N, "StreamKey"),
         target = M.StreamKey,
      }),
   },
})

M.CreatePlaybackRestrictionPolicyInput = schema.new({
   id = id.from(_N, "CreatePlaybackRestrictionPolicyRequest"),
   type = "structure",
   members = {
      allowedCountries = schema.new({
         id = id.from(_N, "CreatePlaybackRestrictionPolicyInput", "allowedCountries"),
         type = "list",
         name = "allowedCountries",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      allowedOrigins = schema.new({
         id = id.from(_N, "CreatePlaybackRestrictionPolicyInput", "allowedOrigins"),
         type = "list",
         name = "allowedOrigins",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      enableStrictOriginEnforcement = schema.new({
         id = id.from(_N, "CreatePlaybackRestrictionPolicyInput", "enableStrictOriginEnforcement"),
         type = "boolean",
         name = "enableStrictOriginEnforcement",
         target_id = prelude.Boolean.id,
      }),
      name = schema.new({
         id = id.from(_N, "CreatePlaybackRestrictionPolicyInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "CreatePlaybackRestrictionPolicyInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.PlaybackRestrictionPolicy = schema.new({
   id = id.from(_N, "PlaybackRestrictionPolicy"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "PlaybackRestrictionPolicy", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      allowedCountries = schema.new({
         id = id.from(_N, "PlaybackRestrictionPolicy", "allowedCountries"),
         type = "list",
         name = "allowedCountries",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      allowedOrigins = schema.new({
         id = id.from(_N, "PlaybackRestrictionPolicy", "allowedOrigins"),
         type = "list",
         name = "allowedOrigins",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      enableStrictOriginEnforcement = schema.new({
         id = id.from(_N, "PlaybackRestrictionPolicy", "enableStrictOriginEnforcement"),
         type = "boolean",
         name = "enableStrictOriginEnforcement",
         target_id = prelude.Boolean.id,
      }),
      name = schema.new({
         id = id.from(_N, "PlaybackRestrictionPolicy", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "PlaybackRestrictionPolicy", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreatePlaybackRestrictionPolicyOutput = schema.new({
   id = id.from(_N, "CreatePlaybackRestrictionPolicyResponse"),
   type = "structure",
   members = {
      playbackRestrictionPolicy = schema.new({
         id = id.from(_N, "CreatePlaybackRestrictionPolicyOutput", "playbackRestrictionPolicy"),
         type = "structure",
         name = "playbackRestrictionPolicy",
         target_id = id.from(_N, "PlaybackRestrictionPolicy"),
         target = M.PlaybackRestrictionPolicy,
      }),
   },
})

M.S3DestinationConfiguration = schema.new({
   id = id.from(_N, "S3DestinationConfiguration"),
   type = "structure",
   members = {
      bucketName = schema.new({
         id = id.from(_N, "S3DestinationConfiguration", "bucketName"),
         type = "string",
         name = "bucketName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DestinationConfiguration = schema.new({
   id = id.from(_N, "DestinationConfiguration"),
   type = "structure",
   members = {
      s3 = schema.new({
         id = id.from(_N, "DestinationConfiguration", "s3"),
         type = "structure",
         name = "s3",
         target_id = id.from(_N, "S3DestinationConfiguration"),
         target = M.S3DestinationConfiguration,
      }),
   },
})

M.RenditionConfiguration = schema.new({
   id = id.from(_N, "RenditionConfiguration"),
   type = "structure",
   members = {
      renditionSelection = schema.new({
         id = id.from(_N, "RenditionConfiguration", "renditionSelection"),
         type = "string",
         name = "renditionSelection",
         target_id = prelude.String.id,
      }),
      renditions = schema.new({
         id = id.from(_N, "RenditionConfiguration", "renditions"),
         type = "list",
         name = "renditions",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ThumbnailConfiguration = schema.new({
   id = id.from(_N, "ThumbnailConfiguration"),
   type = "structure",
   members = {
      recordingMode = schema.new({
         id = id.from(_N, "ThumbnailConfiguration", "recordingMode"),
         type = "string",
         name = "recordingMode",
         target_id = prelude.String.id,
      }),
      targetIntervalSeconds = schema.new({
         id = id.from(_N, "ThumbnailConfiguration", "targetIntervalSeconds"),
         type = "long",
         name = "targetIntervalSeconds",
         target_id = prelude.Long.id,
      }),
      resolution = schema.new({
         id = id.from(_N, "ThumbnailConfiguration", "resolution"),
         type = "string",
         name = "resolution",
         target_id = prelude.String.id,
      }),
      storage = schema.new({
         id = id.from(_N, "ThumbnailConfiguration", "storage"),
         type = "list",
         name = "storage",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.CreateRecordingConfigurationInput = schema.new({
   id = id.from(_N, "CreateRecordingConfigurationRequest"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "CreateRecordingConfigurationInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      destinationConfiguration = schema.new({
         id = id.from(_N, "CreateRecordingConfigurationInput", "destinationConfiguration"),
         type = "structure",
         name = "destinationConfiguration",
         target_id = id.from(_N, "DestinationConfiguration"),
         target = M.DestinationConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "CreateRecordingConfigurationInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      thumbnailConfiguration = schema.new({
         id = id.from(_N, "CreateRecordingConfigurationInput", "thumbnailConfiguration"),
         type = "structure",
         name = "thumbnailConfiguration",
         target_id = id.from(_N, "ThumbnailConfiguration"),
         target = M.ThumbnailConfiguration,
      }),
      recordingReconnectWindowSeconds = schema.new({
         id = id.from(_N, "CreateRecordingConfigurationInput", "recordingReconnectWindowSeconds"),
         type = "integer",
         name = "recordingReconnectWindowSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      renditionConfiguration = schema.new({
         id = id.from(_N, "CreateRecordingConfigurationInput", "renditionConfiguration"),
         type = "structure",
         name = "renditionConfiguration",
         target_id = id.from(_N, "RenditionConfiguration"),
         target = M.RenditionConfiguration,
      }),
   },
})

M.RecordingConfiguration = schema.new({
   id = id.from(_N, "RecordingConfiguration"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "RecordingConfiguration", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "RecordingConfiguration", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      destinationConfiguration = schema.new({
         id = id.from(_N, "RecordingConfiguration", "destinationConfiguration"),
         type = "structure",
         name = "destinationConfiguration",
         target_id = id.from(_N, "DestinationConfiguration"),
         target = M.DestinationConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      state = schema.new({
         id = id.from(_N, "RecordingConfiguration", "state"),
         type = "string",
         name = "state",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "RecordingConfiguration", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      thumbnailConfiguration = schema.new({
         id = id.from(_N, "RecordingConfiguration", "thumbnailConfiguration"),
         type = "structure",
         name = "thumbnailConfiguration",
         target_id = id.from(_N, "ThumbnailConfiguration"),
         target = M.ThumbnailConfiguration,
      }),
      recordingReconnectWindowSeconds = schema.new({
         id = id.from(_N, "RecordingConfiguration", "recordingReconnectWindowSeconds"),
         type = "integer",
         name = "recordingReconnectWindowSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      renditionConfiguration = schema.new({
         id = id.from(_N, "RecordingConfiguration", "renditionConfiguration"),
         type = "structure",
         name = "renditionConfiguration",
         target_id = id.from(_N, "RenditionConfiguration"),
         target = M.RenditionConfiguration,
      }),
   },
})

M.CreateRecordingConfigurationOutput = schema.new({
   id = id.from(_N, "CreateRecordingConfigurationResponse"),
   type = "structure",
   members = {
      recordingConfiguration = schema.new({
         id = id.from(_N, "CreateRecordingConfigurationOutput", "recordingConfiguration"),
         type = "structure",
         name = "recordingConfiguration",
         target_id = id.from(_N, "RecordingConfiguration"),
         target = M.RecordingConfiguration,
      }),
   },
})

M.CreateStreamKeyInput = schema.new({
   id = id.from(_N, "CreateStreamKeyRequest"),
   type = "structure",
   members = {
      channelArn = schema.new({
         id = id.from(_N, "CreateStreamKeyInput", "channelArn"),
         type = "string",
         name = "channelArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "CreateStreamKeyInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreateStreamKeyOutput = schema.new({
   id = id.from(_N, "CreateStreamKeyResponse"),
   type = "structure",
   members = {
      streamKey = schema.new({
         id = id.from(_N, "CreateStreamKeyOutput", "streamKey"),
         type = "structure",
         name = "streamKey",
         target_id = id.from(_N, "StreamKey"),
         target = M.StreamKey,
      }),
   },
})

M.DeleteAdConfigurationInput = schema.new({
   id = id.from(_N, "DeleteAdConfigurationRequest"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "DeleteAdConfigurationInput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteAdConfigurationOutput = prelude.Unit

M.DeleteChannelInput = schema.new({
   id = id.from(_N, "DeleteChannelRequest"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "DeleteChannelInput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteChannelOutput = prelude.Unit

M.DeletePlaybackKeyPairInput = schema.new({
   id = id.from(_N, "DeletePlaybackKeyPairRequest"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "DeletePlaybackKeyPairInput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeletePlaybackKeyPairOutput = schema.new({
   id = id.from(_N, "DeletePlaybackKeyPairResponse"),
   type = "structure",
})

M.DeletePlaybackRestrictionPolicyInput = schema.new({
   id = id.from(_N, "DeletePlaybackRestrictionPolicyRequest"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "DeletePlaybackRestrictionPolicyInput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeletePlaybackRestrictionPolicyOutput = prelude.Unit

M.DeleteRecordingConfigurationInput = schema.new({
   id = id.from(_N, "DeleteRecordingConfigurationRequest"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "DeleteRecordingConfigurationInput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteRecordingConfigurationOutput = prelude.Unit

M.DeleteStreamKeyInput = schema.new({
   id = id.from(_N, "DeleteStreamKeyRequest"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "DeleteStreamKeyInput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteStreamKeyOutput = prelude.Unit

M.GetAdConfigurationInput = schema.new({
   id = id.from(_N, "GetAdConfigurationRequest"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "GetAdConfigurationInput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetAdConfigurationOutput = schema.new({
   id = id.from(_N, "GetAdConfigurationResponse"),
   type = "structure",
   members = {
      adConfiguration = schema.new({
         id = id.from(_N, "GetAdConfigurationOutput", "adConfiguration"),
         type = "structure",
         name = "adConfiguration",
         target_id = id.from(_N, "AdConfiguration"),
         target = M.AdConfiguration,
      }),
   },
})

M.GetChannelInput = schema.new({
   id = id.from(_N, "GetChannelRequest"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "GetChannelInput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetChannelOutput = schema.new({
   id = id.from(_N, "GetChannelResponse"),
   type = "structure",
   members = {
      channel = schema.new({
         id = id.from(_N, "GetChannelOutput", "channel"),
         type = "structure",
         name = "channel",
         target_id = id.from(_N, "Channel"),
         target = M.Channel,
      }),
   },
})

M.GetPlaybackKeyPairInput = schema.new({
   id = id.from(_N, "GetPlaybackKeyPairRequest"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "GetPlaybackKeyPairInput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PlaybackKeyPair = schema.new({
   id = id.from(_N, "PlaybackKeyPair"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "PlaybackKeyPair", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      name = schema.new({
         id = id.from(_N, "PlaybackKeyPair", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      fingerprint = schema.new({
         id = id.from(_N, "PlaybackKeyPair", "fingerprint"),
         type = "string",
         name = "fingerprint",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "PlaybackKeyPair", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.GetPlaybackKeyPairOutput = schema.new({
   id = id.from(_N, "GetPlaybackKeyPairResponse"),
   type = "structure",
   members = {
      keyPair = schema.new({
         id = id.from(_N, "GetPlaybackKeyPairOutput", "keyPair"),
         type = "structure",
         name = "keyPair",
         target_id = id.from(_N, "PlaybackKeyPair"),
         target = M.PlaybackKeyPair,
      }),
   },
})

M.GetPlaybackRestrictionPolicyInput = schema.new({
   id = id.from(_N, "GetPlaybackRestrictionPolicyRequest"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "GetPlaybackRestrictionPolicyInput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetPlaybackRestrictionPolicyOutput = schema.new({
   id = id.from(_N, "GetPlaybackRestrictionPolicyResponse"),
   type = "structure",
   members = {
      playbackRestrictionPolicy = schema.new({
         id = id.from(_N, "GetPlaybackRestrictionPolicyOutput", "playbackRestrictionPolicy"),
         type = "structure",
         name = "playbackRestrictionPolicy",
         target_id = id.from(_N, "PlaybackRestrictionPolicy"),
         target = M.PlaybackRestrictionPolicy,
      }),
   },
})

M.GetRecordingConfigurationInput = schema.new({
   id = id.from(_N, "GetRecordingConfigurationRequest"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "GetRecordingConfigurationInput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetRecordingConfigurationOutput = schema.new({
   id = id.from(_N, "GetRecordingConfigurationResponse"),
   type = "structure",
   members = {
      recordingConfiguration = schema.new({
         id = id.from(_N, "GetRecordingConfigurationOutput", "recordingConfiguration"),
         type = "structure",
         name = "recordingConfiguration",
         target_id = id.from(_N, "RecordingConfiguration"),
         target = M.RecordingConfiguration,
      }),
   },
})

M.ChannelNotBroadcasting = schema.new({
   id = id.from(_N, "ChannelNotBroadcasting"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      accessControlAllowOrigin = schema.new({
         id = id.from(_N, "ChannelNotBroadcasting", "accessControlAllowOrigin"),
         type = "string",
         name = "accessControlAllowOrigin",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Access-Control-Allow-Origin" },
         },
      }),
      accessControlExposeHeaders = schema.new({
         id = id.from(_N, "ChannelNotBroadcasting", "accessControlExposeHeaders"),
         type = "string",
         name = "accessControlExposeHeaders",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Access-Control-Expose-Headers" },
         },
      }),
      cacheControl = schema.new({
         id = id.from(_N, "ChannelNotBroadcasting", "cacheControl"),
         type = "string",
         name = "cacheControl",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Cache-Control" },
         },
      }),
      contentSecurityPolicy = schema.new({
         id = id.from(_N, "ChannelNotBroadcasting", "contentSecurityPolicy"),
         type = "string",
         name = "contentSecurityPolicy",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Security-Policy" },
         },
      }),
      strictTransportSecurity = schema.new({
         id = id.from(_N, "ChannelNotBroadcasting", "strictTransportSecurity"),
         type = "string",
         name = "strictTransportSecurity",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Strict-Transport-Security" },
         },
      }),
      xContentTypeOptions = schema.new({
         id = id.from(_N, "ChannelNotBroadcasting", "xContentTypeOptions"),
         type = "string",
         name = "xContentTypeOptions",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Content-Type-Options" },
         },
      }),
      xFrameOptions = schema.new({
         id = id.from(_N, "ChannelNotBroadcasting", "xFrameOptions"),
         type = "string",
         name = "xFrameOptions",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Frame-Options" },
         },
      }),
      xAmznErrorType = schema.new({
         id = id.from(_N, "ChannelNotBroadcasting", "xAmznErrorType"),
         type = "string",
         name = "xAmznErrorType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amzn-ErrorType" },
         },
      }),
      exceptionMessage = schema.new({
         id = id.from(_N, "ChannelNotBroadcasting", "exceptionMessage"),
         type = "string",
         name = "exceptionMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.GetStreamInput = schema.new({
   id = id.from(_N, "GetStreamRequest"),
   type = "structure",
   members = {
      channelArn = schema.new({
         id = id.from(_N, "GetStreamInput", "channelArn"),
         type = "string",
         name = "channelArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Stream = schema.new({
   id = id.from(_N, "Stream"),
   type = "structure",
   members = {
      channelArn = schema.new({
         id = id.from(_N, "Stream", "channelArn"),
         type = "string",
         name = "channelArn",
         target_id = prelude.String.id,
      }),
      streamId = schema.new({
         id = id.from(_N, "Stream", "streamId"),
         type = "string",
         name = "streamId",
         target_id = prelude.String.id,
      }),
      playbackUrl = schema.new({
         id = id.from(_N, "Stream", "playbackUrl"),
         type = "string",
         name = "playbackUrl",
         target_id = prelude.String.id,
      }),
      startTime = schema.new({
         id = id.from(_N, "Stream", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      state = schema.new({
         id = id.from(_N, "Stream", "state"),
         type = "string",
         name = "state",
         target_id = prelude.String.id,
      }),
      health = schema.new({
         id = id.from(_N, "Stream", "health"),
         type = "string",
         name = "health",
         target_id = prelude.String.id,
      }),
      viewerCount = schema.new({
         id = id.from(_N, "Stream", "viewerCount"),
         type = "long",
         name = "viewerCount",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.GetStreamOutput = schema.new({
   id = id.from(_N, "GetStreamResponse"),
   type = "structure",
   members = {
      stream = schema.new({
         id = id.from(_N, "GetStreamOutput", "stream"),
         type = "structure",
         name = "stream",
         target_id = id.from(_N, "Stream"),
         target = M.Stream,
      }),
   },
})

M.GetStreamKeyInput = schema.new({
   id = id.from(_N, "GetStreamKeyRequest"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "GetStreamKeyInput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetStreamKeyOutput = schema.new({
   id = id.from(_N, "GetStreamKeyResponse"),
   type = "structure",
   members = {
      streamKey = schema.new({
         id = id.from(_N, "GetStreamKeyOutput", "streamKey"),
         type = "structure",
         name = "streamKey",
         target_id = id.from(_N, "StreamKey"),
         target = M.StreamKey,
      }),
   },
})

M.GetStreamSessionInput = schema.new({
   id = id.from(_N, "GetStreamSessionRequest"),
   type = "structure",
   members = {
      channelArn = schema.new({
         id = id.from(_N, "GetStreamSessionInput", "channelArn"),
         type = "string",
         name = "channelArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      streamId = schema.new({
         id = id.from(_N, "GetStreamSessionInput", "streamId"),
         type = "string",
         name = "streamId",
         target_id = prelude.String.id,
      }),
   },
})

M.AudioConfiguration = schema.new({
   id = id.from(_N, "AudioConfiguration"),
   type = "structure",
   members = {
      codec = schema.new({
         id = id.from(_N, "AudioConfiguration", "codec"),
         type = "string",
         name = "codec",
         target_id = prelude.String.id,
      }),
      targetBitrate = schema.new({
         id = id.from(_N, "AudioConfiguration", "targetBitrate"),
         type = "long",
         name = "targetBitrate",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      sampleRate = schema.new({
         id = id.from(_N, "AudioConfiguration", "sampleRate"),
         type = "long",
         name = "sampleRate",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      channels = schema.new({
         id = id.from(_N, "AudioConfiguration", "channels"),
         type = "long",
         name = "channels",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      track = schema.new({
         id = id.from(_N, "AudioConfiguration", "track"),
         type = "string",
         name = "track",
         target_id = prelude.String.id,
      }),
   },
})

M.VideoConfiguration = schema.new({
   id = id.from(_N, "VideoConfiguration"),
   type = "structure",
   members = {
      avcProfile = schema.new({
         id = id.from(_N, "VideoConfiguration", "avcProfile"),
         type = "string",
         name = "avcProfile",
         target_id = prelude.String.id,
      }),
      avcLevel = schema.new({
         id = id.from(_N, "VideoConfiguration", "avcLevel"),
         type = "string",
         name = "avcLevel",
         target_id = prelude.String.id,
      }),
      codec = schema.new({
         id = id.from(_N, "VideoConfiguration", "codec"),
         type = "string",
         name = "codec",
         target_id = prelude.String.id,
      }),
      encoder = schema.new({
         id = id.from(_N, "VideoConfiguration", "encoder"),
         type = "string",
         name = "encoder",
         target_id = prelude.String.id,
      }),
      targetBitrate = schema.new({
         id = id.from(_N, "VideoConfiguration", "targetBitrate"),
         type = "long",
         name = "targetBitrate",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      targetFramerate = schema.new({
         id = id.from(_N, "VideoConfiguration", "targetFramerate"),
         type = "long",
         name = "targetFramerate",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      videoHeight = schema.new({
         id = id.from(_N, "VideoConfiguration", "videoHeight"),
         type = "long",
         name = "videoHeight",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      videoWidth = schema.new({
         id = id.from(_N, "VideoConfiguration", "videoWidth"),
         type = "long",
         name = "videoWidth",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      level = schema.new({
         id = id.from(_N, "VideoConfiguration", "level"),
         type = "string",
         name = "level",
         target_id = prelude.String.id,
      }),
      track = schema.new({
         id = id.from(_N, "VideoConfiguration", "track"),
         type = "string",
         name = "track",
         target_id = prelude.String.id,
      }),
      profile = schema.new({
         id = id.from(_N, "VideoConfiguration", "profile"),
         type = "string",
         name = "profile",
         target_id = prelude.String.id,
      }),
   },
})

M.IngestConfiguration = schema.new({
   id = id.from(_N, "IngestConfiguration"),
   type = "structure",
   members = {
      video = schema.new({
         id = id.from(_N, "IngestConfiguration", "video"),
         type = "structure",
         name = "video",
         target_id = id.from(_N, "VideoConfiguration"),
         target = M.VideoConfiguration,
      }),
      audio = schema.new({
         id = id.from(_N, "IngestConfiguration", "audio"),
         type = "structure",
         name = "audio",
         target_id = id.from(_N, "AudioConfiguration"),
         target = M.AudioConfiguration,
      }),
   },
})

M.IngestConfigurations = schema.new({
   id = id.from(_N, "IngestConfigurations"),
   type = "structure",
   members = {
      videoConfigurations = schema.new({
         id = id.from(_N, "IngestConfigurations", "videoConfigurations"),
         type = "list",
         name = "videoConfigurations",
         target_id = prelude.Document.id,
         list_member = M.VideoConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      audioConfigurations = schema.new({
         id = id.from(_N, "IngestConfigurations", "audioConfigurations"),
         type = "list",
         name = "audioConfigurations",
         target_id = prelude.Document.id,
         list_member = M.AudioConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StreamEvent = schema.new({
   id = id.from(_N, "StreamEvent"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "StreamEvent", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      type = schema.new({
         id = id.from(_N, "StreamEvent", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      eventTime = schema.new({
         id = id.from(_N, "StreamEvent", "eventTime"),
         type = "timestamp",
         name = "eventTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      code = schema.new({
         id = id.from(_N, "StreamEvent", "code"),
         type = "string",
         name = "code",
         target_id = prelude.String.id,
      }),
   },
})

M.StreamSession = schema.new({
   id = id.from(_N, "StreamSession"),
   type = "structure",
   members = {
      streamId = schema.new({
         id = id.from(_N, "StreamSession", "streamId"),
         type = "string",
         name = "streamId",
         target_id = prelude.String.id,
      }),
      startTime = schema.new({
         id = id.from(_N, "StreamSession", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      endTime = schema.new({
         id = id.from(_N, "StreamSession", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      channel = schema.new({
         id = id.from(_N, "StreamSession", "channel"),
         type = "structure",
         name = "channel",
         target_id = id.from(_N, "Channel"),
         target = M.Channel,
      }),
      ingestConfiguration = schema.new({
         id = id.from(_N, "StreamSession", "ingestConfiguration"),
         type = "structure",
         name = "ingestConfiguration",
         target_id = id.from(_N, "IngestConfiguration"),
         target = M.IngestConfiguration,
      }),
      ingestConfigurations = schema.new({
         id = id.from(_N, "StreamSession", "ingestConfigurations"),
         type = "structure",
         name = "ingestConfigurations",
         target_id = id.from(_N, "IngestConfigurations"),
         target = M.IngestConfigurations,
      }),
      recordingConfiguration = schema.new({
         id = id.from(_N, "StreamSession", "recordingConfiguration"),
         type = "structure",
         name = "recordingConfiguration",
         target_id = id.from(_N, "RecordingConfiguration"),
         target = M.RecordingConfiguration,
      }),
      truncatedEvents = schema.new({
         id = id.from(_N, "StreamSession", "truncatedEvents"),
         type = "list",
         name = "truncatedEvents",
         target_id = prelude.Document.id,
         list_member = M.StreamEvent,
      }),
   },
})

M.GetStreamSessionOutput = schema.new({
   id = id.from(_N, "GetStreamSessionResponse"),
   type = "structure",
   members = {
      streamSession = schema.new({
         id = id.from(_N, "GetStreamSessionOutput", "streamSession"),
         type = "structure",
         name = "streamSession",
         target_id = id.from(_N, "StreamSession"),
         target = M.StreamSession,
      }),
   },
})

M.ImportPlaybackKeyPairInput = schema.new({
   id = id.from(_N, "ImportPlaybackKeyPairRequest"),
   type = "structure",
   members = {
      publicKeyMaterial = schema.new({
         id = id.from(_N, "ImportPlaybackKeyPairInput", "publicKeyMaterial"),
         type = "string",
         name = "publicKeyMaterial",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "ImportPlaybackKeyPairInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "ImportPlaybackKeyPairInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ImportPlaybackKeyPairOutput = schema.new({
   id = id.from(_N, "ImportPlaybackKeyPairResponse"),
   type = "structure",
   members = {
      keyPair = schema.new({
         id = id.from(_N, "ImportPlaybackKeyPairOutput", "keyPair"),
         type = "structure",
         name = "keyPair",
         target_id = id.from(_N, "PlaybackKeyPair"),
         target = M.PlaybackKeyPair,
      }),
   },
})

M.InsertAdBreakInput = schema.new({
   id = id.from(_N, "InsertAdBreakRequest"),
   type = "structure",
   members = {
      channelArn = schema.new({
         id = id.from(_N, "InsertAdBreakInput", "channelArn"),
         type = "string",
         name = "channelArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      durationSeconds = schema.new({
         id = id.from(_N, "InsertAdBreakInput", "durationSeconds"),
         type = "integer",
         name = "durationSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.InsertAdBreakOutput = schema.new({
   id = id.from(_N, "InsertAdBreakResponse"),
   type = "structure",
   members = {
      adBreakId = schema.new({
         id = id.from(_N, "InsertAdBreakOutput", "adBreakId"),
         type = "string",
         name = "adBreakId",
         target_id = prelude.String.id,
      }),
   },
})

M.ListAdConfigurationsInput = schema.new({
   id = id.from(_N, "ListAdConfigurationsRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListAdConfigurationsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListAdConfigurationsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ListAdConfigurationsOutput = schema.new({
   id = id.from(_N, "ListAdConfigurationsResponse"),
   type = "structure",
   members = {
      adConfigurations = schema.new({
         id = id.from(_N, "ListAdConfigurationsOutput", "adConfigurations"),
         type = "list",
         name = "adConfigurations",
         target_id = prelude.Document.id,
         list_member = M.AdConfigurationSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAdConfigurationsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListChannelsInput = schema.new({
   id = id.from(_N, "ListChannelsRequest"),
   type = "structure",
   members = {
      filterByName = schema.new({
         id = id.from(_N, "ListChannelsInput", "filterByName"),
         type = "string",
         name = "filterByName",
         target_id = prelude.String.id,
      }),
      filterByRecordingConfigurationArn = schema.new({
         id = id.from(_N, "ListChannelsInput", "filterByRecordingConfigurationArn"),
         type = "string",
         name = "filterByRecordingConfigurationArn",
         target_id = prelude.String.id,
      }),
      filterByPlaybackRestrictionPolicyArn = schema.new({
         id = id.from(_N, "ListChannelsInput", "filterByPlaybackRestrictionPolicyArn"),
         type = "string",
         name = "filterByPlaybackRestrictionPolicyArn",
         target_id = prelude.String.id,
      }),
      filterByAdConfigurationArn = schema.new({
         id = id.from(_N, "ListChannelsInput", "filterByAdConfigurationArn"),
         type = "string",
         name = "filterByAdConfigurationArn",
         target_id = prelude.String.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListChannelsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListChannelsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ChannelSummary = schema.new({
   id = id.from(_N, "ChannelSummary"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "ChannelSummary", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      name = schema.new({
         id = id.from(_N, "ChannelSummary", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      latencyMode = schema.new({
         id = id.from(_N, "ChannelSummary", "latencyMode"),
         type = "string",
         name = "latencyMode",
         target_id = prelude.String.id,
      }),
      authorized = schema.new({
         id = id.from(_N, "ChannelSummary", "authorized"),
         type = "boolean",
         name = "authorized",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      recordingConfigurationArn = schema.new({
         id = id.from(_N, "ChannelSummary", "recordingConfigurationArn"),
         type = "string",
         name = "recordingConfigurationArn",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "ChannelSummary", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      insecureIngest = schema.new({
         id = id.from(_N, "ChannelSummary", "insecureIngest"),
         type = "boolean",
         name = "insecureIngest",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      type = schema.new({
         id = id.from(_N, "ChannelSummary", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      preset = schema.new({
         id = id.from(_N, "ChannelSummary", "preset"),
         type = "string",
         name = "preset",
         target_id = prelude.String.id,
      }),
      playbackRestrictionPolicyArn = schema.new({
         id = id.from(_N, "ChannelSummary", "playbackRestrictionPolicyArn"),
         type = "string",
         name = "playbackRestrictionPolicyArn",
         target_id = prelude.String.id,
      }),
      adConfigurationArn = schema.new({
         id = id.from(_N, "ChannelSummary", "adConfigurationArn"),
         type = "string",
         name = "adConfigurationArn",
         target_id = prelude.String.id,
      }),
   },
})

M.ListChannelsOutput = schema.new({
   id = id.from(_N, "ListChannelsResponse"),
   type = "structure",
   members = {
      channels = schema.new({
         id = id.from(_N, "ListChannelsOutput", "channels"),
         type = "list",
         name = "channels",
         target_id = prelude.Document.id,
         list_member = M.ChannelSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListChannelsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPlaybackKeyPairsInput = schema.new({
   id = id.from(_N, "ListPlaybackKeyPairsRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListPlaybackKeyPairsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListPlaybackKeyPairsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.PlaybackKeyPairSummary = schema.new({
   id = id.from(_N, "PlaybackKeyPairSummary"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "PlaybackKeyPairSummary", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      name = schema.new({
         id = id.from(_N, "PlaybackKeyPairSummary", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "PlaybackKeyPairSummary", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ListPlaybackKeyPairsOutput = schema.new({
   id = id.from(_N, "ListPlaybackKeyPairsResponse"),
   type = "structure",
   members = {
      keyPairs = schema.new({
         id = id.from(_N, "ListPlaybackKeyPairsOutput", "keyPairs"),
         type = "list",
         name = "keyPairs",
         target_id = prelude.Document.id,
         list_member = M.PlaybackKeyPairSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListPlaybackKeyPairsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPlaybackRestrictionPoliciesInput = schema.new({
   id = id.from(_N, "ListPlaybackRestrictionPoliciesRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListPlaybackRestrictionPoliciesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListPlaybackRestrictionPoliciesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.PlaybackRestrictionPolicySummary = schema.new({
   id = id.from(_N, "PlaybackRestrictionPolicySummary"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "PlaybackRestrictionPolicySummary", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      allowedCountries = schema.new({
         id = id.from(_N, "PlaybackRestrictionPolicySummary", "allowedCountries"),
         type = "list",
         name = "allowedCountries",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      allowedOrigins = schema.new({
         id = id.from(_N, "PlaybackRestrictionPolicySummary", "allowedOrigins"),
         type = "list",
         name = "allowedOrigins",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      enableStrictOriginEnforcement = schema.new({
         id = id.from(_N, "PlaybackRestrictionPolicySummary", "enableStrictOriginEnforcement"),
         type = "boolean",
         name = "enableStrictOriginEnforcement",
         target_id = prelude.Boolean.id,
      }),
      name = schema.new({
         id = id.from(_N, "PlaybackRestrictionPolicySummary", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "PlaybackRestrictionPolicySummary", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ListPlaybackRestrictionPoliciesOutput = schema.new({
   id = id.from(_N, "ListPlaybackRestrictionPoliciesResponse"),
   type = "structure",
   members = {
      playbackRestrictionPolicies = schema.new({
         id = id.from(_N, "ListPlaybackRestrictionPoliciesOutput", "playbackRestrictionPolicies"),
         type = "list",
         name = "playbackRestrictionPolicies",
         target_id = prelude.Document.id,
         list_member = M.PlaybackRestrictionPolicySummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListPlaybackRestrictionPoliciesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListRecordingConfigurationsInput = schema.new({
   id = id.from(_N, "ListRecordingConfigurationsRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListRecordingConfigurationsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListRecordingConfigurationsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.RecordingConfigurationSummary = schema.new({
   id = id.from(_N, "RecordingConfigurationSummary"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "RecordingConfigurationSummary", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "RecordingConfigurationSummary", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      destinationConfiguration = schema.new({
         id = id.from(_N, "RecordingConfigurationSummary", "destinationConfiguration"),
         type = "structure",
         name = "destinationConfiguration",
         target_id = id.from(_N, "DestinationConfiguration"),
         target = M.DestinationConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      state = schema.new({
         id = id.from(_N, "RecordingConfigurationSummary", "state"),
         type = "string",
         name = "state",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "RecordingConfigurationSummary", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ListRecordingConfigurationsOutput = schema.new({
   id = id.from(_N, "ListRecordingConfigurationsResponse"),
   type = "structure",
   members = {
      recordingConfigurations = schema.new({
         id = id.from(_N, "ListRecordingConfigurationsOutput", "recordingConfigurations"),
         type = "list",
         name = "recordingConfigurations",
         target_id = prelude.Document.id,
         list_member = M.RecordingConfigurationSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListRecordingConfigurationsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListStreamKeysInput = schema.new({
   id = id.from(_N, "ListStreamKeysRequest"),
   type = "structure",
   members = {
      channelArn = schema.new({
         id = id.from(_N, "ListStreamKeysInput", "channelArn"),
         type = "string",
         name = "channelArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListStreamKeysInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListStreamKeysInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.StreamKeySummary = schema.new({
   id = id.from(_N, "StreamKeySummary"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "StreamKeySummary", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      channelArn = schema.new({
         id = id.from(_N, "StreamKeySummary", "channelArn"),
         type = "string",
         name = "channelArn",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "StreamKeySummary", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ListStreamKeysOutput = schema.new({
   id = id.from(_N, "ListStreamKeysResponse"),
   type = "structure",
   members = {
      streamKeys = schema.new({
         id = id.from(_N, "ListStreamKeysOutput", "streamKeys"),
         type = "list",
         name = "streamKeys",
         target_id = prelude.Document.id,
         list_member = M.StreamKeySummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListStreamKeysOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.StreamFilters = schema.new({
   id = id.from(_N, "StreamFilters"),
   type = "structure",
   members = {
      health = schema.new({
         id = id.from(_N, "StreamFilters", "health"),
         type = "string",
         name = "health",
         target_id = prelude.String.id,
      }),
   },
})

M.ListStreamsInput = schema.new({
   id = id.from(_N, "ListStreamsRequest"),
   type = "structure",
   members = {
      filterBy = schema.new({
         id = id.from(_N, "ListStreamsInput", "filterBy"),
         type = "structure",
         name = "filterBy",
         target_id = id.from(_N, "StreamFilters"),
         target = M.StreamFilters,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListStreamsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListStreamsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.StreamSummary = schema.new({
   id = id.from(_N, "StreamSummary"),
   type = "structure",
   members = {
      channelArn = schema.new({
         id = id.from(_N, "StreamSummary", "channelArn"),
         type = "string",
         name = "channelArn",
         target_id = prelude.String.id,
      }),
      streamId = schema.new({
         id = id.from(_N, "StreamSummary", "streamId"),
         type = "string",
         name = "streamId",
         target_id = prelude.String.id,
      }),
      state = schema.new({
         id = id.from(_N, "StreamSummary", "state"),
         type = "string",
         name = "state",
         target_id = prelude.String.id,
      }),
      health = schema.new({
         id = id.from(_N, "StreamSummary", "health"),
         type = "string",
         name = "health",
         target_id = prelude.String.id,
      }),
      viewerCount = schema.new({
         id = id.from(_N, "StreamSummary", "viewerCount"),
         type = "long",
         name = "viewerCount",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      startTime = schema.new({
         id = id.from(_N, "StreamSummary", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
   },
})

M.ListStreamsOutput = schema.new({
   id = id.from(_N, "ListStreamsResponse"),
   type = "structure",
   members = {
      streams = schema.new({
         id = id.from(_N, "ListStreamsOutput", "streams"),
         type = "list",
         name = "streams",
         target_id = prelude.Document.id,
         list_member = M.StreamSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListStreamsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListStreamSessionsInput = schema.new({
   id = id.from(_N, "ListStreamSessionsRequest"),
   type = "structure",
   members = {
      channelArn = schema.new({
         id = id.from(_N, "ListStreamSessionsInput", "channelArn"),
         type = "string",
         name = "channelArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListStreamSessionsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListStreamSessionsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.StreamSessionSummary = schema.new({
   id = id.from(_N, "StreamSessionSummary"),
   type = "structure",
   members = {
      streamId = schema.new({
         id = id.from(_N, "StreamSessionSummary", "streamId"),
         type = "string",
         name = "streamId",
         target_id = prelude.String.id,
      }),
      startTime = schema.new({
         id = id.from(_N, "StreamSessionSummary", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      endTime = schema.new({
         id = id.from(_N, "StreamSessionSummary", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      hasErrorEvent = schema.new({
         id = id.from(_N, "StreamSessionSummary", "hasErrorEvent"),
         type = "boolean",
         name = "hasErrorEvent",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.ListStreamSessionsOutput = schema.new({
   id = id.from(_N, "ListStreamSessionsResponse"),
   type = "structure",
   members = {
      streamSessions = schema.new({
         id = id.from(_N, "ListStreamSessionsOutput", "streamSessions"),
         type = "list",
         name = "streamSessions",
         target_id = prelude.Document.id,
         list_member = M.StreamSessionSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListStreamSessionsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListTagsForResourceInput = schema.new({
   id = id.from(_N, "ListTagsForResourceRequest"),
   type = "structure",
   members = {
      resourceArn = schema.new({
         id = id.from(_N, "ListTagsForResourceInput", "resourceArn"),
         type = "string",
         name = "resourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.ListTagsForResourceOutput = schema.new({
   id = id.from(_N, "ListTagsForResourceResponse"),
   type = "structure",
   members = {
      tags = schema.new({
         id = id.from(_N, "ListTagsForResourceOutput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PutMetadataInput = schema.new({
   id = id.from(_N, "PutMetadataRequest"),
   type = "structure",
   members = {
      channelArn = schema.new({
         id = id.from(_N, "PutMetadataInput", "channelArn"),
         type = "string",
         name = "channelArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      metadata = schema.new({
         id = id.from(_N, "PutMetadataInput", "metadata"),
         type = "string",
         name = "metadata",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PutMetadataOutput = prelude.Unit

M.StartViewerSessionRevocationInput = schema.new({
   id = id.from(_N, "StartViewerSessionRevocationRequest"),
   type = "structure",
   members = {
      channelArn = schema.new({
         id = id.from(_N, "StartViewerSessionRevocationInput", "channelArn"),
         type = "string",
         name = "channelArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      viewerId = schema.new({
         id = id.from(_N, "StartViewerSessionRevocationInput", "viewerId"),
         type = "string",
         name = "viewerId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      viewerSessionVersionsLessThanOrEqualTo = schema.new({
         id = id.from(_N, "StartViewerSessionRevocationInput", "viewerSessionVersionsLessThanOrEqualTo"),
         type = "integer",
         name = "viewerSessionVersionsLessThanOrEqualTo",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.StartViewerSessionRevocationOutput = schema.new({
   id = id.from(_N, "StartViewerSessionRevocationResponse"),
   type = "structure",
})

M.StopStreamInput = schema.new({
   id = id.from(_N, "StopStreamRequest"),
   type = "structure",
   members = {
      channelArn = schema.new({
         id = id.from(_N, "StopStreamInput", "channelArn"),
         type = "string",
         name = "channelArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StopStreamOutput = schema.new({
   id = id.from(_N, "StopStreamResponse"),
   type = "structure",
})

M.StreamUnavailable = schema.new({
   id = id.from(_N, "StreamUnavailable"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      accessControlAllowOrigin = schema.new({
         id = id.from(_N, "StreamUnavailable", "accessControlAllowOrigin"),
         type = "string",
         name = "accessControlAllowOrigin",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Access-Control-Allow-Origin" },
         },
      }),
      accessControlExposeHeaders = schema.new({
         id = id.from(_N, "StreamUnavailable", "accessControlExposeHeaders"),
         type = "string",
         name = "accessControlExposeHeaders",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Access-Control-Expose-Headers" },
         },
      }),
      cacheControl = schema.new({
         id = id.from(_N, "StreamUnavailable", "cacheControl"),
         type = "string",
         name = "cacheControl",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Cache-Control" },
         },
      }),
      contentSecurityPolicy = schema.new({
         id = id.from(_N, "StreamUnavailable", "contentSecurityPolicy"),
         type = "string",
         name = "contentSecurityPolicy",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Security-Policy" },
         },
      }),
      strictTransportSecurity = schema.new({
         id = id.from(_N, "StreamUnavailable", "strictTransportSecurity"),
         type = "string",
         name = "strictTransportSecurity",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Strict-Transport-Security" },
         },
      }),
      xContentTypeOptions = schema.new({
         id = id.from(_N, "StreamUnavailable", "xContentTypeOptions"),
         type = "string",
         name = "xContentTypeOptions",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Content-Type-Options" },
         },
      }),
      xFrameOptions = schema.new({
         id = id.from(_N, "StreamUnavailable", "xFrameOptions"),
         type = "string",
         name = "xFrameOptions",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Frame-Options" },
         },
      }),
      xAmznErrorType = schema.new({
         id = id.from(_N, "StreamUnavailable", "xAmznErrorType"),
         type = "string",
         name = "xAmznErrorType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amzn-ErrorType" },
         },
      }),
      exceptionMessage = schema.new({
         id = id.from(_N, "StreamUnavailable", "exceptionMessage"),
         type = "string",
         name = "exceptionMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.TagResourceInput = schema.new({
   id = id.from(_N, "TagResourceRequest"),
   type = "structure",
   members = {
      resourceArn = schema.new({
         id = id.from(_N, "TagResourceInput", "resourceArn"),
         type = "string",
         name = "resourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "TagResourceInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TagResourceOutput = schema.new({
   id = id.from(_N, "TagResourceResponse"),
   type = "structure",
})

M.UntagResourceInput = schema.new({
   id = id.from(_N, "UntagResourceRequest"),
   type = "structure",
   members = {
      resourceArn = schema.new({
         id = id.from(_N, "UntagResourceInput", "resourceArn"),
         type = "string",
         name = "resourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      tagKeys = schema.new({
         id = id.from(_N, "UntagResourceInput", "tagKeys"),
         type = "list",
         name = "tagKeys",
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
   id = id.from(_N, "UntagResourceResponse"),
   type = "structure",
})

M.UpdateChannelInput = schema.new({
   id = id.from(_N, "UpdateChannelRequest"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "UpdateChannelInput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "UpdateChannelInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      latencyMode = schema.new({
         id = id.from(_N, "UpdateChannelInput", "latencyMode"),
         type = "string",
         name = "latencyMode",
         target_id = prelude.String.id,
      }),
      type = schema.new({
         id = id.from(_N, "UpdateChannelInput", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      authorized = schema.new({
         id = id.from(_N, "UpdateChannelInput", "authorized"),
         type = "boolean",
         name = "authorized",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      recordingConfigurationArn = schema.new({
         id = id.from(_N, "UpdateChannelInput", "recordingConfigurationArn"),
         type = "string",
         name = "recordingConfigurationArn",
         target_id = prelude.String.id,
      }),
      insecureIngest = schema.new({
         id = id.from(_N, "UpdateChannelInput", "insecureIngest"),
         type = "boolean",
         name = "insecureIngest",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      preset = schema.new({
         id = id.from(_N, "UpdateChannelInput", "preset"),
         type = "string",
         name = "preset",
         target_id = prelude.String.id,
      }),
      playbackRestrictionPolicyArn = schema.new({
         id = id.from(_N, "UpdateChannelInput", "playbackRestrictionPolicyArn"),
         type = "string",
         name = "playbackRestrictionPolicyArn",
         target_id = prelude.String.id,
      }),
      multitrackInputConfiguration = schema.new({
         id = id.from(_N, "UpdateChannelInput", "multitrackInputConfiguration"),
         type = "structure",
         name = "multitrackInputConfiguration",
         target_id = id.from(_N, "MultitrackInputConfiguration"),
         target = M.MultitrackInputConfiguration,
      }),
      containerFormat = schema.new({
         id = id.from(_N, "UpdateChannelInput", "containerFormat"),
         type = "string",
         name = "containerFormat",
         target_id = prelude.String.id,
      }),
      adConfigurationArn = schema.new({
         id = id.from(_N, "UpdateChannelInput", "adConfigurationArn"),
         type = "string",
         name = "adConfigurationArn",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateChannelOutput = schema.new({
   id = id.from(_N, "UpdateChannelResponse"),
   type = "structure",
   members = {
      channel = schema.new({
         id = id.from(_N, "UpdateChannelOutput", "channel"),
         type = "structure",
         name = "channel",
         target_id = id.from(_N, "Channel"),
         target = M.Channel,
      }),
   },
})

M.UpdatePlaybackRestrictionPolicyInput = schema.new({
   id = id.from(_N, "UpdatePlaybackRestrictionPolicyRequest"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "UpdatePlaybackRestrictionPolicyInput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      allowedCountries = schema.new({
         id = id.from(_N, "UpdatePlaybackRestrictionPolicyInput", "allowedCountries"),
         type = "list",
         name = "allowedCountries",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      allowedOrigins = schema.new({
         id = id.from(_N, "UpdatePlaybackRestrictionPolicyInput", "allowedOrigins"),
         type = "list",
         name = "allowedOrigins",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      enableStrictOriginEnforcement = schema.new({
         id = id.from(_N, "UpdatePlaybackRestrictionPolicyInput", "enableStrictOriginEnforcement"),
         type = "boolean",
         name = "enableStrictOriginEnforcement",
         target_id = prelude.Boolean.id,
      }),
      name = schema.new({
         id = id.from(_N, "UpdatePlaybackRestrictionPolicyInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdatePlaybackRestrictionPolicyOutput = schema.new({
   id = id.from(_N, "UpdatePlaybackRestrictionPolicyResponse"),
   type = "structure",
   members = {
      playbackRestrictionPolicy = schema.new({
         id = id.from(_N, "UpdatePlaybackRestrictionPolicyOutput", "playbackRestrictionPolicy"),
         type = "structure",
         name = "playbackRestrictionPolicy",
         target_id = id.from(_N, "PlaybackRestrictionPolicy"),
         target = M.PlaybackRestrictionPolicy,
      }),
   },
})


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

M.Service = schema.service({
   id = id.from("com.amazonaws.ivs", "AmazonInteractiveVideoService"),
   version = "2020-07-14",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchGetChannel = schema.operation({
   id = id.from("com.amazonaws.ivs", "BatchGetChannel"),
   input = M.BatchGetChannelInput,
   output = M.BatchGetChannelOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/BatchGetChannel" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchGetStreamKey = schema.operation({
   id = id.from("com.amazonaws.ivs", "BatchGetStreamKey"),
   input = M.BatchGetStreamKeyInput,
   output = M.BatchGetStreamKeyOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/BatchGetStreamKey" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchStartViewerSessionRevocation = schema.operation({
   id = id.from("com.amazonaws.ivs", "BatchStartViewerSessionRevocation"),
   input = M.BatchStartViewerSessionRevocationInput,
   output = M.BatchStartViewerSessionRevocationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/BatchStartViewerSessionRevocation" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateAdConfiguration = schema.operation({
   id = id.from("com.amazonaws.ivs", "CreateAdConfiguration"),
   input = M.CreateAdConfigurationInput,
   output = M.CreateAdConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/CreateAdConfiguration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateChannel = schema.operation({
   id = id.from("com.amazonaws.ivs", "CreateChannel"),
   input = M.CreateChannelInput,
   output = M.CreateChannelOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/CreateChannel" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreatePlaybackRestrictionPolicy = schema.operation({
   id = id.from("com.amazonaws.ivs", "CreatePlaybackRestrictionPolicy"),
   input = M.CreatePlaybackRestrictionPolicyInput,
   output = M.CreatePlaybackRestrictionPolicyOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/CreatePlaybackRestrictionPolicy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateRecordingConfiguration = schema.operation({
   id = id.from("com.amazonaws.ivs", "CreateRecordingConfiguration"),
   input = M.CreateRecordingConfigurationInput,
   output = M.CreateRecordingConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/CreateRecordingConfiguration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateStreamKey = schema.operation({
   id = id.from("com.amazonaws.ivs", "CreateStreamKey"),
   input = M.CreateStreamKeyInput,
   output = M.CreateStreamKeyOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/CreateStreamKey" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteAdConfiguration = schema.operation({
   id = id.from("com.amazonaws.ivs", "DeleteAdConfiguration"),
   input = M.DeleteAdConfigurationInput,
   output = M.DeleteAdConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/DeleteAdConfiguration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteChannel = schema.operation({
   id = id.from("com.amazonaws.ivs", "DeleteChannel"),
   input = M.DeleteChannelInput,
   output = M.DeleteChannelOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/DeleteChannel" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeletePlaybackKeyPair = schema.operation({
   id = id.from("com.amazonaws.ivs", "DeletePlaybackKeyPair"),
   input = M.DeletePlaybackKeyPairInput,
   output = M.DeletePlaybackKeyPairOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/DeletePlaybackKeyPair" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeletePlaybackRestrictionPolicy = schema.operation({
   id = id.from("com.amazonaws.ivs", "DeletePlaybackRestrictionPolicy"),
   input = M.DeletePlaybackRestrictionPolicyInput,
   output = M.DeletePlaybackRestrictionPolicyOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/DeletePlaybackRestrictionPolicy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteRecordingConfiguration = schema.operation({
   id = id.from("com.amazonaws.ivs", "DeleteRecordingConfiguration"),
   input = M.DeleteRecordingConfigurationInput,
   output = M.DeleteRecordingConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/DeleteRecordingConfiguration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteStreamKey = schema.operation({
   id = id.from("com.amazonaws.ivs", "DeleteStreamKey"),
   input = M.DeleteStreamKeyInput,
   output = M.DeleteStreamKeyOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/DeleteStreamKey" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetAdConfiguration = schema.operation({
   id = id.from("com.amazonaws.ivs", "GetAdConfiguration"),
   input = M.GetAdConfigurationInput,
   output = M.GetAdConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/GetAdConfiguration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetChannel = schema.operation({
   id = id.from("com.amazonaws.ivs", "GetChannel"),
   input = M.GetChannelInput,
   output = M.GetChannelOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/GetChannel" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetPlaybackKeyPair = schema.operation({
   id = id.from("com.amazonaws.ivs", "GetPlaybackKeyPair"),
   input = M.GetPlaybackKeyPairInput,
   output = M.GetPlaybackKeyPairOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/GetPlaybackKeyPair" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetPlaybackRestrictionPolicy = schema.operation({
   id = id.from("com.amazonaws.ivs", "GetPlaybackRestrictionPolicy"),
   input = M.GetPlaybackRestrictionPolicyInput,
   output = M.GetPlaybackRestrictionPolicyOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/GetPlaybackRestrictionPolicy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetRecordingConfiguration = schema.operation({
   id = id.from("com.amazonaws.ivs", "GetRecordingConfiguration"),
   input = M.GetRecordingConfigurationInput,
   output = M.GetRecordingConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/GetRecordingConfiguration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetStream = schema.operation({
   id = id.from("com.amazonaws.ivs", "GetStream"),
   input = M.GetStreamInput,
   output = M.GetStreamOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/GetStream" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetStreamKey = schema.operation({
   id = id.from("com.amazonaws.ivs", "GetStreamKey"),
   input = M.GetStreamKeyInput,
   output = M.GetStreamKeyOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/GetStreamKey" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetStreamSession = schema.operation({
   id = id.from("com.amazonaws.ivs", "GetStreamSession"),
   input = M.GetStreamSessionInput,
   output = M.GetStreamSessionOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/GetStreamSession" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ImportPlaybackKeyPair = schema.operation({
   id = id.from("com.amazonaws.ivs", "ImportPlaybackKeyPair"),
   input = M.ImportPlaybackKeyPairInput,
   output = M.ImportPlaybackKeyPairOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/ImportPlaybackKeyPair" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.InsertAdBreak = schema.operation({
   id = id.from("com.amazonaws.ivs", "InsertAdBreak"),
   input = M.InsertAdBreakInput,
   output = M.InsertAdBreakOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/InsertAdBreak" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAdConfigurations = schema.operation({
   id = id.from("com.amazonaws.ivs", "ListAdConfigurations"),
   input = M.ListAdConfigurationsInput,
   output = M.ListAdConfigurationsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/ListAdConfigurations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListChannels = schema.operation({
   id = id.from("com.amazonaws.ivs", "ListChannels"),
   input = M.ListChannelsInput,
   output = M.ListChannelsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/ListChannels" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPlaybackKeyPairs = schema.operation({
   id = id.from("com.amazonaws.ivs", "ListPlaybackKeyPairs"),
   input = M.ListPlaybackKeyPairsInput,
   output = M.ListPlaybackKeyPairsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/ListPlaybackKeyPairs" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPlaybackRestrictionPolicies = schema.operation({
   id = id.from("com.amazonaws.ivs", "ListPlaybackRestrictionPolicies"),
   input = M.ListPlaybackRestrictionPoliciesInput,
   output = M.ListPlaybackRestrictionPoliciesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/ListPlaybackRestrictionPolicies" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListRecordingConfigurations = schema.operation({
   id = id.from("com.amazonaws.ivs", "ListRecordingConfigurations"),
   input = M.ListRecordingConfigurationsInput,
   output = M.ListRecordingConfigurationsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/ListRecordingConfigurations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListStreamKeys = schema.operation({
   id = id.from("com.amazonaws.ivs", "ListStreamKeys"),
   input = M.ListStreamKeysInput,
   output = M.ListStreamKeysOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/ListStreamKeys" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListStreams = schema.operation({
   id = id.from("com.amazonaws.ivs", "ListStreams"),
   input = M.ListStreamsInput,
   output = M.ListStreamsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/ListStreams" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListStreamSessions = schema.operation({
   id = id.from("com.amazonaws.ivs", "ListStreamSessions"),
   input = M.ListStreamSessionsInput,
   output = M.ListStreamSessionsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/ListStreamSessions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.ivs", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutMetadata = schema.operation({
   id = id.from("com.amazonaws.ivs", "PutMetadata"),
   input = M.PutMetadataInput,
   output = M.PutMetadataOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/PutMetadata" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartViewerSessionRevocation = schema.operation({
   id = id.from("com.amazonaws.ivs", "StartViewerSessionRevocation"),
   input = M.StartViewerSessionRevocationInput,
   output = M.StartViewerSessionRevocationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/StartViewerSessionRevocation" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopStream = schema.operation({
   id = id.from("com.amazonaws.ivs", "StopStream"),
   input = M.StopStreamInput,
   output = M.StopStreamOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/StopStream" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.ivs", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.ivs", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateChannel = schema.operation({
   id = id.from("com.amazonaws.ivs", "UpdateChannel"),
   input = M.UpdateChannelInput,
   output = M.UpdateChannelOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/UpdateChannel" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdatePlaybackRestrictionPolicy = schema.operation({
   id = id.from("com.amazonaws.ivs", "UpdatePlaybackRestrictionPolicy"),
   input = M.UpdatePlaybackRestrictionPolicyInput,
   output = M.UpdatePlaybackRestrictionPolicyOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/UpdatePlaybackRestrictionPolicy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
