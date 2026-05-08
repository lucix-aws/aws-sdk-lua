

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.pinpointsmsvoice"

local M = {}

M.EventDestinations = schema.new({ type = "list", list_member = M.EventDestination })

M.ConfigurationSets = schema.new({ type = "list", list_member = prelude.String })

M.EventTypes = schema.new({ type = "list", list_member = prelude.String })

M.AlreadyExistsException = schema.new({
   id = id.from(_N, "AlreadyExistsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "AlreadyExistsException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
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

M.CallInstructionsMessageType = schema.new({
   id = id.from(_N, "CallInstructionsMessageType"),
   type = "structure",
   members = {
      Text = schema.new({
         id = id.from(_N, "CallInstructionsMessageType", "Text"),
         type = "string",
         name = "Text",
         target_id = prelude.String.id,
      }),
   },
})

M.CloudWatchLogsDestination = schema.new({
   id = id.from(_N, "CloudWatchLogsDestination"),
   type = "structure",
   members = {
      IamRoleArn = schema.new({
         id = id.from(_N, "CloudWatchLogsDestination", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
      }),
      LogGroupArn = schema.new({
         id = id.from(_N, "CloudWatchLogsDestination", "LogGroupArn"),
         type = "string",
         name = "LogGroupArn",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateConfigurationSetInput = schema.new({
   id = id.from(_N, "CreateConfigurationSetRequest"),
   type = "structure",
   members = {
      ConfigurationSetName = schema.new({
         id = id.from(_N, "CreateConfigurationSetInput", "ConfigurationSetName"),
         type = "string",
         name = "ConfigurationSetName",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateConfigurationSetOutput = schema.new({
   id = id.from(_N, "CreateConfigurationSetResponse"),
   type = "structure",
})

M.InternalServiceErrorException = schema.new({
   id = id.from(_N, "InternalServiceErrorException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "InternalServiceErrorException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.LimitExceededException = schema.new({
   id = id.from(_N, "LimitExceededException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "LimitExceededException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.TooManyRequestsException = schema.new({
   id = id.from(_N, "TooManyRequestsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "TooManyRequestsException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.KinesisFirehoseDestination = schema.new({
   id = id.from(_N, "KinesisFirehoseDestination"),
   type = "structure",
   members = {
      DeliveryStreamArn = schema.new({
         id = id.from(_N, "KinesisFirehoseDestination", "DeliveryStreamArn"),
         type = "string",
         name = "DeliveryStreamArn",
         target_id = prelude.String.id,
      }),
      IamRoleArn = schema.new({
         id = id.from(_N, "KinesisFirehoseDestination", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
      }),
   },
})

M.SnsDestination = schema.new({
   id = id.from(_N, "SnsDestination"),
   type = "structure",
   members = {
      TopicArn = schema.new({
         id = id.from(_N, "SnsDestination", "TopicArn"),
         type = "string",
         name = "TopicArn",
         target_id = prelude.String.id,
      }),
   },
})

M.EventDestinationDefinition = schema.new({
   id = id.from(_N, "EventDestinationDefinition"),
   type = "structure",
   members = {
      CloudWatchLogsDestination = schema.new({
         id = id.from(_N, "EventDestinationDefinition", "CloudWatchLogsDestination"),
         type = "structure",
         name = "CloudWatchLogsDestination",
         target_id = id.from(_N, "CloudWatchLogsDestination"),
         target = M.CloudWatchLogsDestination,
      }),
      Enabled = schema.new({
         id = id.from(_N, "EventDestinationDefinition", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      KinesisFirehoseDestination = schema.new({
         id = id.from(_N, "EventDestinationDefinition", "KinesisFirehoseDestination"),
         type = "structure",
         name = "KinesisFirehoseDestination",
         target_id = id.from(_N, "KinesisFirehoseDestination"),
         target = M.KinesisFirehoseDestination,
      }),
      MatchingEventTypes = schema.new({
         id = id.from(_N, "EventDestinationDefinition", "MatchingEventTypes"),
         type = "list",
         name = "MatchingEventTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      SnsDestination = schema.new({
         id = id.from(_N, "EventDestinationDefinition", "SnsDestination"),
         type = "structure",
         name = "SnsDestination",
         target_id = id.from(_N, "SnsDestination"),
         target = M.SnsDestination,
      }),
   },
})

M.CreateConfigurationSetEventDestinationInput = schema.new({
   id = id.from(_N, "CreateConfigurationSetEventDestinationRequest"),
   type = "structure",
   members = {
      ConfigurationSetName = schema.new({
         id = id.from(_N, "CreateConfigurationSetEventDestinationInput", "ConfigurationSetName"),
         type = "string",
         name = "ConfigurationSetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      EventDestination = schema.new({
         id = id.from(_N, "CreateConfigurationSetEventDestinationInput", "EventDestination"),
         type = "structure",
         name = "EventDestination",
         target_id = id.from(_N, "EventDestinationDefinition"),
         target = M.EventDestinationDefinition,
      }),
      EventDestinationName = schema.new({
         id = id.from(_N, "CreateConfigurationSetEventDestinationInput", "EventDestinationName"),
         type = "string",
         name = "EventDestinationName",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateConfigurationSetEventDestinationOutput = schema.new({
   id = id.from(_N, "CreateConfigurationSetEventDestinationResponse"),
   type = "structure",
})

M.NotFoundException = schema.new({
   id = id.from(_N, "NotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "NotFoundException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteConfigurationSetInput = schema.new({
   id = id.from(_N, "DeleteConfigurationSetRequest"),
   type = "structure",
   members = {
      ConfigurationSetName = schema.new({
         id = id.from(_N, "DeleteConfigurationSetInput", "ConfigurationSetName"),
         type = "string",
         name = "ConfigurationSetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteConfigurationSetOutput = schema.new({
   id = id.from(_N, "DeleteConfigurationSetResponse"),
   type = "structure",
})

M.DeleteConfigurationSetEventDestinationInput = schema.new({
   id = id.from(_N, "DeleteConfigurationSetEventDestinationRequest"),
   type = "structure",
   members = {
      ConfigurationSetName = schema.new({
         id = id.from(_N, "DeleteConfigurationSetEventDestinationInput", "ConfigurationSetName"),
         type = "string",
         name = "ConfigurationSetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      EventDestinationName = schema.new({
         id = id.from(_N, "DeleteConfigurationSetEventDestinationInput", "EventDestinationName"),
         type = "string",
         name = "EventDestinationName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteConfigurationSetEventDestinationOutput = schema.new({
   id = id.from(_N, "DeleteConfigurationSetEventDestinationResponse"),
   type = "structure",
})

M.EventDestination = schema.new({
   id = id.from(_N, "EventDestination"),
   type = "structure",
   members = {
      CloudWatchLogsDestination = schema.new({
         id = id.from(_N, "EventDestination", "CloudWatchLogsDestination"),
         type = "structure",
         name = "CloudWatchLogsDestination",
         target_id = id.from(_N, "CloudWatchLogsDestination"),
         target = M.CloudWatchLogsDestination,
      }),
      Enabled = schema.new({
         id = id.from(_N, "EventDestination", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      KinesisFirehoseDestination = schema.new({
         id = id.from(_N, "EventDestination", "KinesisFirehoseDestination"),
         type = "structure",
         name = "KinesisFirehoseDestination",
         target_id = id.from(_N, "KinesisFirehoseDestination"),
         target = M.KinesisFirehoseDestination,
      }),
      MatchingEventTypes = schema.new({
         id = id.from(_N, "EventDestination", "MatchingEventTypes"),
         type = "list",
         name = "MatchingEventTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Name = schema.new({
         id = id.from(_N, "EventDestination", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      SnsDestination = schema.new({
         id = id.from(_N, "EventDestination", "SnsDestination"),
         type = "structure",
         name = "SnsDestination",
         target_id = id.from(_N, "SnsDestination"),
         target = M.SnsDestination,
      }),
   },
})

M.GetConfigurationSetEventDestinationsInput = schema.new({
   id = id.from(_N, "GetConfigurationSetEventDestinationsRequest"),
   type = "structure",
   members = {
      ConfigurationSetName = schema.new({
         id = id.from(_N, "GetConfigurationSetEventDestinationsInput", "ConfigurationSetName"),
         type = "string",
         name = "ConfigurationSetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetConfigurationSetEventDestinationsOutput = schema.new({
   id = id.from(_N, "GetConfigurationSetEventDestinationsResponse"),
   type = "structure",
   members = {
      EventDestinations = schema.new({
         id = id.from(_N, "GetConfigurationSetEventDestinationsOutput", "EventDestinations"),
         type = "list",
         name = "EventDestinations",
         target_id = prelude.Document.id,
         list_member = M.EventDestination,
      }),
   },
})

M.ListConfigurationSetsInput = schema.new({
   id = id.from(_N, "ListConfigurationSetsRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListConfigurationSetsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
      PageSize = schema.new({
         id = id.from(_N, "ListConfigurationSetsInput", "PageSize"),
         type = "string",
         name = "PageSize",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "PageSize" },
         },
      }),
   },
})

M.ListConfigurationSetsOutput = schema.new({
   id = id.from(_N, "ListConfigurationSetsResponse"),
   type = "structure",
   members = {
      ConfigurationSets = schema.new({
         id = id.from(_N, "ListConfigurationSetsOutput", "ConfigurationSets"),
         type = "list",
         name = "ConfigurationSets",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListConfigurationSetsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.PlainTextMessageType = schema.new({
   id = id.from(_N, "PlainTextMessageType"),
   type = "structure",
   members = {
      LanguageCode = schema.new({
         id = id.from(_N, "PlainTextMessageType", "LanguageCode"),
         type = "string",
         name = "LanguageCode",
         target_id = prelude.String.id,
      }),
      Text = schema.new({
         id = id.from(_N, "PlainTextMessageType", "Text"),
         type = "string",
         name = "Text",
         target_id = prelude.String.id,
      }),
      VoiceId = schema.new({
         id = id.from(_N, "PlainTextMessageType", "VoiceId"),
         type = "string",
         name = "VoiceId",
         target_id = prelude.String.id,
      }),
   },
})

M.SSMLMessageType = schema.new({
   id = id.from(_N, "SSMLMessageType"),
   type = "structure",
   members = {
      LanguageCode = schema.new({
         id = id.from(_N, "SSMLMessageType", "LanguageCode"),
         type = "string",
         name = "LanguageCode",
         target_id = prelude.String.id,
      }),
      Text = schema.new({
         id = id.from(_N, "SSMLMessageType", "Text"),
         type = "string",
         name = "Text",
         target_id = prelude.String.id,
      }),
      VoiceId = schema.new({
         id = id.from(_N, "SSMLMessageType", "VoiceId"),
         type = "string",
         name = "VoiceId",
         target_id = prelude.String.id,
      }),
   },
})

M.VoiceMessageContent = schema.new({
   id = id.from(_N, "VoiceMessageContent"),
   type = "structure",
   members = {
      CallInstructionsMessage = schema.new({
         id = id.from(_N, "VoiceMessageContent", "CallInstructionsMessage"),
         type = "structure",
         name = "CallInstructionsMessage",
         target_id = id.from(_N, "CallInstructionsMessageType"),
         target = M.CallInstructionsMessageType,
      }),
      PlainTextMessage = schema.new({
         id = id.from(_N, "VoiceMessageContent", "PlainTextMessage"),
         type = "structure",
         name = "PlainTextMessage",
         target_id = id.from(_N, "PlainTextMessageType"),
         target = M.PlainTextMessageType,
      }),
      SSMLMessage = schema.new({
         id = id.from(_N, "VoiceMessageContent", "SSMLMessage"),
         type = "structure",
         name = "SSMLMessage",
         target_id = id.from(_N, "SSMLMessageType"),
         target = M.SSMLMessageType,
      }),
   },
})

M.SendVoiceMessageInput = schema.new({
   id = id.from(_N, "SendVoiceMessageRequest"),
   type = "structure",
   members = {
      CallerId = schema.new({
         id = id.from(_N, "SendVoiceMessageInput", "CallerId"),
         type = "string",
         name = "CallerId",
         target_id = prelude.String.id,
      }),
      ConfigurationSetName = schema.new({
         id = id.from(_N, "SendVoiceMessageInput", "ConfigurationSetName"),
         type = "string",
         name = "ConfigurationSetName",
         target_id = prelude.String.id,
      }),
      Content = schema.new({
         id = id.from(_N, "SendVoiceMessageInput", "Content"),
         type = "structure",
         name = "Content",
         target_id = id.from(_N, "VoiceMessageContent"),
         target = M.VoiceMessageContent,
      }),
      DestinationPhoneNumber = schema.new({
         id = id.from(_N, "SendVoiceMessageInput", "DestinationPhoneNumber"),
         type = "string",
         name = "DestinationPhoneNumber",
         target_id = prelude.String.id,
      }),
      OriginationPhoneNumber = schema.new({
         id = id.from(_N, "SendVoiceMessageInput", "OriginationPhoneNumber"),
         type = "string",
         name = "OriginationPhoneNumber",
         target_id = prelude.String.id,
      }),
   },
})

M.SendVoiceMessageOutput = schema.new({
   id = id.from(_N, "SendVoiceMessageResponse"),
   type = "structure",
   members = {
      MessageId = schema.new({
         id = id.from(_N, "SendVoiceMessageOutput", "MessageId"),
         type = "string",
         name = "MessageId",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateConfigurationSetEventDestinationInput = schema.new({
   id = id.from(_N, "UpdateConfigurationSetEventDestinationRequest"),
   type = "structure",
   members = {
      ConfigurationSetName = schema.new({
         id = id.from(_N, "UpdateConfigurationSetEventDestinationInput", "ConfigurationSetName"),
         type = "string",
         name = "ConfigurationSetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      EventDestination = schema.new({
         id = id.from(_N, "UpdateConfigurationSetEventDestinationInput", "EventDestination"),
         type = "structure",
         name = "EventDestination",
         target_id = id.from(_N, "EventDestinationDefinition"),
         target = M.EventDestinationDefinition,
      }),
      EventDestinationName = schema.new({
         id = id.from(_N, "UpdateConfigurationSetEventDestinationInput", "EventDestinationName"),
         type = "string",
         name = "EventDestinationName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.UpdateConfigurationSetEventDestinationOutput = schema.new({
   id = id.from(_N, "UpdateConfigurationSetEventDestinationResponse"),
   type = "structure",
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
   id = id.from("com.amazonaws.pinpointsmsvoice", "PinpointSMSVoice"),
   version = "2018-09-05",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateConfigurationSet = schema.operation({
   id = id.from("com.amazonaws.pinpointsmsvoice", "CreateConfigurationSet"),
   input = M.CreateConfigurationSetInput,
   output = M.CreateConfigurationSetOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/sms-voice/configuration-sets" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateConfigurationSetEventDestination = schema.operation({
   id = id.from("com.amazonaws.pinpointsmsvoice", "CreateConfigurationSetEventDestination"),
   input = M.CreateConfigurationSetEventDestinationInput,
   output = M.CreateConfigurationSetEventDestinationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteConfigurationSet = schema.operation({
   id = id.from("com.amazonaws.pinpointsmsvoice", "DeleteConfigurationSet"),
   input = M.DeleteConfigurationSetInput,
   output = M.DeleteConfigurationSetOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/sms-voice/configuration-sets/{ConfigurationSetName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteConfigurationSetEventDestination = schema.operation({
   id = id.from("com.amazonaws.pinpointsmsvoice", "DeleteConfigurationSetEventDestination"),
   input = M.DeleteConfigurationSetEventDestinationInput,
   output = M.DeleteConfigurationSetEventDestinationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetConfigurationSetEventDestinations = schema.operation({
   id = id.from("com.amazonaws.pinpointsmsvoice", "GetConfigurationSetEventDestinations"),
   input = M.GetConfigurationSetEventDestinationsInput,
   output = M.GetConfigurationSetEventDestinationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListConfigurationSets = schema.operation({
   id = id.from("com.amazonaws.pinpointsmsvoice", "ListConfigurationSets"),
   input = M.ListConfigurationSetsInput,
   output = M.ListConfigurationSetsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/sms-voice/configuration-sets" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SendVoiceMessage = schema.operation({
   id = id.from("com.amazonaws.pinpointsmsvoice", "SendVoiceMessage"),
   input = M.SendVoiceMessageInput,
   output = M.SendVoiceMessageOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/sms-voice/voice/message" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateConfigurationSetEventDestination = schema.operation({
   id = id.from("com.amazonaws.pinpointsmsvoice", "UpdateConfigurationSetEventDestination"),
   input = M.UpdateConfigurationSetEventDestinationInput,
   output = M.UpdateConfigurationSetEventDestinationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
