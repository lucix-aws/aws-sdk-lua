

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.sns"

local M = {}

M.DelegatesList = schema.new({ type = "list", list_member = prelude.String })

M.ActionsList = schema.new({ type = "list", list_member = prelude.String })

M.MapStringToString = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.TopicAttributesMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.ListString = schema.new({ type = "list", list_member = prelude.String })

M.SubscriptionAttributesMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ListOfEndpoints = schema.new({ type = "list", list_member = M.Endpoint })

M.PhoneNumberInformationList = schema.new({ type = "list", list_member = M.PhoneNumberInformation })

M.PhoneNumberList = schema.new({ type = "list", list_member = prelude.String })

M.ListOfPlatformApplications = schema.new({ type = "list", list_member = M.PlatformApplication })

M.SMSSandboxPhoneNumberList = schema.new({ type = "list", list_member = M.SMSSandboxPhoneNumber })

M.SubscriptionsList = schema.new({ type = "list", list_member = M.Subscription })

M.TopicsList = schema.new({ type = "list", list_member = M.Topic })

M.MessageAttributeMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.MessageAttributeValue })

M.PublishBatchRequestEntryList = schema.new({ type = "list", list_member = M.PublishBatchRequestEntry })

M.PublishBatchResultEntryList = schema.new({ type = "list", list_member = M.PublishBatchResultEntry })

M.BatchResultErrorEntryList = schema.new({ type = "list", list_member = M.BatchResultErrorEntry })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.NumberCapabilityList = schema.new({ type = "list", list_member = prelude.String })

M.AddPermissionInput = schema.new({
   id = id.from(_N, "AddPermissionInput"),
   type = "structure",
   members = {
      TopicArn = schema.new({
         id = id.from(_N, "AddPermissionInput", "TopicArn"),
         type = "string",
         name = "TopicArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Label = schema.new({
         id = id.from(_N, "AddPermissionInput", "Label"),
         type = "string",
         name = "Label",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AWSAccountId = schema.new({
         id = id.from(_N, "AddPermissionInput", "AWSAccountId"),
         type = "list",
         name = "AWSAccountId",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ActionName = schema.new({
         id = id.from(_N, "AddPermissionInput", "ActionName"),
         type = "list",
         name = "ActionName",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AddPermissionOutput = prelude.Unit

M.AuthorizationErrorException = schema.new({
   id = id.from(_N, "AuthorizationErrorException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "AuthorizationErrorException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.InternalErrorException = schema.new({
   id = id.from(_N, "InternalErrorException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InternalErrorException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidParameterException = schema.new({
   id = id.from(_N, "InvalidParameterException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidParameterException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.NotFoundException = schema.new({
   id = id.from(_N, "NotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "NotFoundException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.CheckIfPhoneNumberIsOptedOutInput = schema.new({
   id = id.from(_N, "CheckIfPhoneNumberIsOptedOutInput"),
   type = "structure",
   members = {
      phoneNumber = schema.new({
         id = id.from(_N, "CheckIfPhoneNumberIsOptedOutInput", "phoneNumber"),
         type = "string",
         name = "phoneNumber",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CheckIfPhoneNumberIsOptedOutOutput = schema.new({
   id = id.from(_N, "CheckIfPhoneNumberIsOptedOutResponse"),
   type = "structure",
   members = {
      isOptedOut = schema.new({
         id = id.from(_N, "CheckIfPhoneNumberIsOptedOutOutput", "isOptedOut"),
         type = "boolean",
         name = "isOptedOut",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.ThrottledException = schema.new({
   id = id.from(_N, "ThrottledException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ThrottledException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ConfirmSubscriptionInput = schema.new({
   id = id.from(_N, "ConfirmSubscriptionInput"),
   type = "structure",
   members = {
      TopicArn = schema.new({
         id = id.from(_N, "ConfirmSubscriptionInput", "TopicArn"),
         type = "string",
         name = "TopicArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Token = schema.new({
         id = id.from(_N, "ConfirmSubscriptionInput", "Token"),
         type = "string",
         name = "Token",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AuthenticateOnUnsubscribe = schema.new({
         id = id.from(_N, "ConfirmSubscriptionInput", "AuthenticateOnUnsubscribe"),
         type = "string",
         name = "AuthenticateOnUnsubscribe",
         target_id = prelude.String.id,
      }),
   },
})

M.ConfirmSubscriptionOutput = schema.new({
   id = id.from(_N, "ConfirmSubscriptionResponse"),
   type = "structure",
   members = {
      SubscriptionArn = schema.new({
         id = id.from(_N, "ConfirmSubscriptionOutput", "SubscriptionArn"),
         type = "string",
         name = "SubscriptionArn",
         target_id = prelude.String.id,
      }),
   },
})

M.FilterPolicyLimitExceededException = schema.new({
   id = id.from(_N, "FilterPolicyLimitExceededException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "FilterPolicyLimitExceededException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ReplayLimitExceededException = schema.new({
   id = id.from(_N, "ReplayLimitExceededException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ReplayLimitExceededException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.SubscriptionLimitExceededException = schema.new({
   id = id.from(_N, "SubscriptionLimitExceededException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "SubscriptionLimitExceededException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.CreatePlatformApplicationInput = schema.new({
   id = id.from(_N, "CreatePlatformApplicationInput"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreatePlatformApplicationInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Platform = schema.new({
         id = id.from(_N, "CreatePlatformApplicationInput", "Platform"),
         type = "string",
         name = "Platform",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Attributes = schema.new({
         id = id.from(_N, "CreatePlatformApplicationInput", "Attributes"),
         type = "map",
         name = "Attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreatePlatformApplicationOutput = schema.new({
   id = id.from(_N, "CreatePlatformApplicationResponse"),
   type = "structure",
   members = {
      PlatformApplicationArn = schema.new({
         id = id.from(_N, "CreatePlatformApplicationOutput", "PlatformApplicationArn"),
         type = "string",
         name = "PlatformApplicationArn",
         target_id = prelude.String.id,
      }),
   },
})

M.CreatePlatformEndpointInput = schema.new({
   id = id.from(_N, "CreatePlatformEndpointInput"),
   type = "structure",
   members = {
      PlatformApplicationArn = schema.new({
         id = id.from(_N, "CreatePlatformEndpointInput", "PlatformApplicationArn"),
         type = "string",
         name = "PlatformApplicationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Token = schema.new({
         id = id.from(_N, "CreatePlatformEndpointInput", "Token"),
         type = "string",
         name = "Token",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CustomUserData = schema.new({
         id = id.from(_N, "CreatePlatformEndpointInput", "CustomUserData"),
         type = "string",
         name = "CustomUserData",
         target_id = prelude.String.id,
      }),
      Attributes = schema.new({
         id = id.from(_N, "CreatePlatformEndpointInput", "Attributes"),
         type = "map",
         name = "Attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreatePlatformEndpointOutput = schema.new({
   id = id.from(_N, "CreateEndpointResponse"),
   type = "structure",
   members = {
      EndpointArn = schema.new({
         id = id.from(_N, "CreatePlatformEndpointOutput", "EndpointArn"),
         type = "string",
         name = "EndpointArn",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateSMSSandboxPhoneNumberInput = schema.new({
   id = id.from(_N, "CreateSMSSandboxPhoneNumberInput"),
   type = "structure",
   members = {
      PhoneNumber = schema.new({
         id = id.from(_N, "CreateSMSSandboxPhoneNumberInput", "PhoneNumber"),
         type = "string",
         name = "PhoneNumber",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LanguageCode = schema.new({
         id = id.from(_N, "CreateSMSSandboxPhoneNumberInput", "LanguageCode"),
         type = "string",
         name = "LanguageCode",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateSMSSandboxPhoneNumberOutput = schema.new({
   id = id.from(_N, "CreateSMSSandboxPhoneNumberResult"),
   type = "structure",
})

M.OptedOutException = schema.new({
   id = id.from(_N, "OptedOutException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "OptedOutException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.UserErrorException = schema.new({
   id = id.from(_N, "UserErrorException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "UserErrorException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ConcurrentAccessException = schema.new({
   id = id.from(_N, "ConcurrentAccessException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ConcurrentAccessException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.Tag = schema.new({
   id = id.from(_N, "Tag"),
   type = "structure",
   members = {
      Key = schema.new({
         id = id.from(_N, "Tag", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Value = schema.new({
         id = id.from(_N, "Tag", "Value"),
         type = "string",
         name = "Value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateTopicInput = schema.new({
   id = id.from(_N, "CreateTopicInput"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateTopicInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Attributes = schema.new({
         id = id.from(_N, "CreateTopicInput", "Attributes"),
         type = "map",
         name = "Attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateTopicInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
      DataProtectionPolicy = schema.new({
         id = id.from(_N, "CreateTopicInput", "DataProtectionPolicy"),
         type = "string",
         name = "DataProtectionPolicy",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateTopicOutput = schema.new({
   id = id.from(_N, "CreateTopicResponse"),
   type = "structure",
   members = {
      TopicArn = schema.new({
         id = id.from(_N, "CreateTopicOutput", "TopicArn"),
         type = "string",
         name = "TopicArn",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidSecurityException = schema.new({
   id = id.from(_N, "InvalidSecurityException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidSecurityException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.StaleTagException = schema.new({
   id = id.from(_N, "StaleTagException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "StaleTagException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.TagLimitExceededException = schema.new({
   id = id.from(_N, "TagLimitExceededException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "TagLimitExceededException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.TagPolicyException = schema.new({
   id = id.from(_N, "TagPolicyException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "TagPolicyException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.TopicLimitExceededException = schema.new({
   id = id.from(_N, "TopicLimitExceededException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "TopicLimitExceededException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteEndpointInput = schema.new({
   id = id.from(_N, "DeleteEndpointInput"),
   type = "structure",
   members = {
      EndpointArn = schema.new({
         id = id.from(_N, "DeleteEndpointInput", "EndpointArn"),
         type = "string",
         name = "EndpointArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteEndpointOutput = prelude.Unit

M.DeletePlatformApplicationInput = schema.new({
   id = id.from(_N, "DeletePlatformApplicationInput"),
   type = "structure",
   members = {
      PlatformApplicationArn = schema.new({
         id = id.from(_N, "DeletePlatformApplicationInput", "PlatformApplicationArn"),
         type = "string",
         name = "PlatformApplicationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeletePlatformApplicationOutput = prelude.Unit

M.DeleteSMSSandboxPhoneNumberInput = schema.new({
   id = id.from(_N, "DeleteSMSSandboxPhoneNumberInput"),
   type = "structure",
   members = {
      PhoneNumber = schema.new({
         id = id.from(_N, "DeleteSMSSandboxPhoneNumberInput", "PhoneNumber"),
         type = "string",
         name = "PhoneNumber",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteSMSSandboxPhoneNumberOutput = schema.new({
   id = id.from(_N, "DeleteSMSSandboxPhoneNumberResult"),
   type = "structure",
})

M.ResourceNotFoundException = schema.new({
   id = id.from(_N, "ResourceNotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteTopicInput = schema.new({
   id = id.from(_N, "DeleteTopicInput"),
   type = "structure",
   members = {
      TopicArn = schema.new({
         id = id.from(_N, "DeleteTopicInput", "TopicArn"),
         type = "string",
         name = "TopicArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteTopicOutput = prelude.Unit

M.InvalidStateException = schema.new({
   id = id.from(_N, "InvalidStateException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidStateException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.GetDataProtectionPolicyInput = schema.new({
   id = id.from(_N, "GetDataProtectionPolicyInput"),
   type = "structure",
   members = {
      ResourceArn = schema.new({
         id = id.from(_N, "GetDataProtectionPolicyInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetDataProtectionPolicyOutput = schema.new({
   id = id.from(_N, "GetDataProtectionPolicyResponse"),
   type = "structure",
   members = {
      DataProtectionPolicy = schema.new({
         id = id.from(_N, "GetDataProtectionPolicyOutput", "DataProtectionPolicy"),
         type = "string",
         name = "DataProtectionPolicy",
         target_id = prelude.String.id,
      }),
   },
})

M.GetEndpointAttributesInput = schema.new({
   id = id.from(_N, "GetEndpointAttributesInput"),
   type = "structure",
   members = {
      EndpointArn = schema.new({
         id = id.from(_N, "GetEndpointAttributesInput", "EndpointArn"),
         type = "string",
         name = "EndpointArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetEndpointAttributesOutput = schema.new({
   id = id.from(_N, "GetEndpointAttributesResponse"),
   type = "structure",
   members = {
      Attributes = schema.new({
         id = id.from(_N, "GetEndpointAttributesOutput", "Attributes"),
         type = "map",
         name = "Attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.GetPlatformApplicationAttributesInput = schema.new({
   id = id.from(_N, "GetPlatformApplicationAttributesInput"),
   type = "structure",
   members = {
      PlatformApplicationArn = schema.new({
         id = id.from(_N, "GetPlatformApplicationAttributesInput", "PlatformApplicationArn"),
         type = "string",
         name = "PlatformApplicationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetPlatformApplicationAttributesOutput = schema.new({
   id = id.from(_N, "GetPlatformApplicationAttributesResponse"),
   type = "structure",
   members = {
      Attributes = schema.new({
         id = id.from(_N, "GetPlatformApplicationAttributesOutput", "Attributes"),
         type = "map",
         name = "Attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.GetSMSAttributesInput = schema.new({
   id = id.from(_N, "GetSMSAttributesInput"),
   type = "structure",
   members = {
      attributes = schema.new({
         id = id.from(_N, "GetSMSAttributesInput", "attributes"),
         type = "list",
         name = "attributes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.GetSMSAttributesOutput = schema.new({
   id = id.from(_N, "GetSMSAttributesResponse"),
   type = "structure",
   members = {
      attributes = schema.new({
         id = id.from(_N, "GetSMSAttributesOutput", "attributes"),
         type = "map",
         name = "attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.GetSMSSandboxAccountStatusInput = schema.new({
   id = id.from(_N, "GetSMSSandboxAccountStatusInput"),
   type = "structure",
})

M.GetSMSSandboxAccountStatusOutput = schema.new({
   id = id.from(_N, "GetSMSSandboxAccountStatusResult"),
   type = "structure",
   members = {
      IsInSandbox = schema.new({
         id = id.from(_N, "GetSMSSandboxAccountStatusOutput", "IsInSandbox"),
         type = "boolean",
         name = "IsInSandbox",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.GetSubscriptionAttributesInput = schema.new({
   id = id.from(_N, "GetSubscriptionAttributesInput"),
   type = "structure",
   members = {
      SubscriptionArn = schema.new({
         id = id.from(_N, "GetSubscriptionAttributesInput", "SubscriptionArn"),
         type = "string",
         name = "SubscriptionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetSubscriptionAttributesOutput = schema.new({
   id = id.from(_N, "GetSubscriptionAttributesResponse"),
   type = "structure",
   members = {
      Attributes = schema.new({
         id = id.from(_N, "GetSubscriptionAttributesOutput", "Attributes"),
         type = "map",
         name = "Attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.GetTopicAttributesInput = schema.new({
   id = id.from(_N, "GetTopicAttributesInput"),
   type = "structure",
   members = {
      TopicArn = schema.new({
         id = id.from(_N, "GetTopicAttributesInput", "TopicArn"),
         type = "string",
         name = "TopicArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetTopicAttributesOutput = schema.new({
   id = id.from(_N, "GetTopicAttributesResponse"),
   type = "structure",
   members = {
      Attributes = schema.new({
         id = id.from(_N, "GetTopicAttributesOutput", "Attributes"),
         type = "map",
         name = "Attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ListEndpointsByPlatformApplicationInput = schema.new({
   id = id.from(_N, "ListEndpointsByPlatformApplicationInput"),
   type = "structure",
   members = {
      PlatformApplicationArn = schema.new({
         id = id.from(_N, "ListEndpointsByPlatformApplicationInput", "PlatformApplicationArn"),
         type = "string",
         name = "PlatformApplicationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListEndpointsByPlatformApplicationInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.Endpoint = schema.new({
   id = id.from(_N, "Endpoint"),
   type = "structure",
   members = {
      EndpointArn = schema.new({
         id = id.from(_N, "Endpoint", "EndpointArn"),
         type = "string",
         name = "EndpointArn",
         target_id = prelude.String.id,
      }),
      Attributes = schema.new({
         id = id.from(_N, "Endpoint", "Attributes"),
         type = "map",
         name = "Attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ListEndpointsByPlatformApplicationOutput = schema.new({
   id = id.from(_N, "ListEndpointsByPlatformApplicationResponse"),
   type = "structure",
   members = {
      Endpoints = schema.new({
         id = id.from(_N, "ListEndpointsByPlatformApplicationOutput", "Endpoints"),
         type = "list",
         name = "Endpoints",
         target_id = prelude.Document.id,
         list_member = M.Endpoint,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListEndpointsByPlatformApplicationOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListOriginationNumbersInput = schema.new({
   id = id.from(_N, "ListOriginationNumbersRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListOriginationNumbersInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListOriginationNumbersInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.PhoneNumberInformation = schema.new({
   id = id.from(_N, "PhoneNumberInformation"),
   type = "structure",
   members = {
      CreatedAt = schema.new({
         id = id.from(_N, "PhoneNumberInformation", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      PhoneNumber = schema.new({
         id = id.from(_N, "PhoneNumberInformation", "PhoneNumber"),
         type = "string",
         name = "PhoneNumber",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "PhoneNumberInformation", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      Iso2CountryCode = schema.new({
         id = id.from(_N, "PhoneNumberInformation", "Iso2CountryCode"),
         type = "string",
         name = "Iso2CountryCode",
         target_id = prelude.String.id,
      }),
      RouteType = schema.new({
         id = id.from(_N, "PhoneNumberInformation", "RouteType"),
         type = "string",
         name = "RouteType",
         target_id = prelude.String.id,
      }),
      NumberCapabilities = schema.new({
         id = id.from(_N, "PhoneNumberInformation", "NumberCapabilities"),
         type = "list",
         name = "NumberCapabilities",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ListOriginationNumbersOutput = schema.new({
   id = id.from(_N, "ListOriginationNumbersResult"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListOriginationNumbersOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      PhoneNumbers = schema.new({
         id = id.from(_N, "ListOriginationNumbersOutput", "PhoneNumbers"),
         type = "list",
         name = "PhoneNumbers",
         target_id = prelude.Document.id,
         list_member = M.PhoneNumberInformation,
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
      Message = schema.new({
         id = id.from(_N, "ValidationException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListPhoneNumbersOptedOutInput = schema.new({
   id = id.from(_N, "ListPhoneNumbersOptedOutInput"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListPhoneNumbersOptedOutInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPhoneNumbersOptedOutOutput = schema.new({
   id = id.from(_N, "ListPhoneNumbersOptedOutResponse"),
   type = "structure",
   members = {
      phoneNumbers = schema.new({
         id = id.from(_N, "ListPhoneNumbersOptedOutOutput", "phoneNumbers"),
         type = "list",
         name = "phoneNumbers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListPhoneNumbersOptedOutOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPlatformApplicationsInput = schema.new({
   id = id.from(_N, "ListPlatformApplicationsInput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListPlatformApplicationsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.PlatformApplication = schema.new({
   id = id.from(_N, "PlatformApplication"),
   type = "structure",
   members = {
      PlatformApplicationArn = schema.new({
         id = id.from(_N, "PlatformApplication", "PlatformApplicationArn"),
         type = "string",
         name = "PlatformApplicationArn",
         target_id = prelude.String.id,
      }),
      Attributes = schema.new({
         id = id.from(_N, "PlatformApplication", "Attributes"),
         type = "map",
         name = "Attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ListPlatformApplicationsOutput = schema.new({
   id = id.from(_N, "ListPlatformApplicationsResponse"),
   type = "structure",
   members = {
      PlatformApplications = schema.new({
         id = id.from(_N, "ListPlatformApplicationsOutput", "PlatformApplications"),
         type = "list",
         name = "PlatformApplications",
         target_id = prelude.Document.id,
         list_member = M.PlatformApplication,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListPlatformApplicationsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListSMSSandboxPhoneNumbersInput = schema.new({
   id = id.from(_N, "ListSMSSandboxPhoneNumbersInput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListSMSSandboxPhoneNumbersInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListSMSSandboxPhoneNumbersInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.SMSSandboxPhoneNumber = schema.new({
   id = id.from(_N, "SMSSandboxPhoneNumber"),
   type = "structure",
   members = {
      PhoneNumber = schema.new({
         id = id.from(_N, "SMSSandboxPhoneNumber", "PhoneNumber"),
         type = "string",
         name = "PhoneNumber",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "SMSSandboxPhoneNumber", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
})

M.ListSMSSandboxPhoneNumbersOutput = schema.new({
   id = id.from(_N, "ListSMSSandboxPhoneNumbersResult"),
   type = "structure",
   members = {
      PhoneNumbers = schema.new({
         id = id.from(_N, "ListSMSSandboxPhoneNumbersOutput", "PhoneNumbers"),
         type = "list",
         name = "PhoneNumbers",
         target_id = prelude.Document.id,
         list_member = M.SMSSandboxPhoneNumber,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListSMSSandboxPhoneNumbersOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListSubscriptionsInput = schema.new({
   id = id.from(_N, "ListSubscriptionsInput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListSubscriptionsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.Subscription = schema.new({
   id = id.from(_N, "Subscription"),
   type = "structure",
   members = {
      SubscriptionArn = schema.new({
         id = id.from(_N, "Subscription", "SubscriptionArn"),
         type = "string",
         name = "SubscriptionArn",
         target_id = prelude.String.id,
      }),
      Owner = schema.new({
         id = id.from(_N, "Subscription", "Owner"),
         type = "string",
         name = "Owner",
         target_id = prelude.String.id,
      }),
      Protocol = schema.new({
         id = id.from(_N, "Subscription", "Protocol"),
         type = "string",
         name = "Protocol",
         target_id = prelude.String.id,
      }),
      Endpoint = schema.new({
         id = id.from(_N, "Subscription", "Endpoint"),
         type = "string",
         name = "Endpoint",
         target_id = prelude.String.id,
      }),
      TopicArn = schema.new({
         id = id.from(_N, "Subscription", "TopicArn"),
         type = "string",
         name = "TopicArn",
         target_id = prelude.String.id,
      }),
   },
})

M.ListSubscriptionsOutput = schema.new({
   id = id.from(_N, "ListSubscriptionsResponse"),
   type = "structure",
   members = {
      Subscriptions = schema.new({
         id = id.from(_N, "ListSubscriptionsOutput", "Subscriptions"),
         type = "list",
         name = "Subscriptions",
         target_id = prelude.Document.id,
         list_member = M.Subscription,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListSubscriptionsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListSubscriptionsByTopicInput = schema.new({
   id = id.from(_N, "ListSubscriptionsByTopicInput"),
   type = "structure",
   members = {
      TopicArn = schema.new({
         id = id.from(_N, "ListSubscriptionsByTopicInput", "TopicArn"),
         type = "string",
         name = "TopicArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListSubscriptionsByTopicInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListSubscriptionsByTopicOutput = schema.new({
   id = id.from(_N, "ListSubscriptionsByTopicResponse"),
   type = "structure",
   members = {
      Subscriptions = schema.new({
         id = id.from(_N, "ListSubscriptionsByTopicOutput", "Subscriptions"),
         type = "list",
         name = "Subscriptions",
         target_id = prelude.Document.id,
         list_member = M.Subscription,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListSubscriptionsByTopicOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListTagsForResourceInput = schema.new({
   id = id.from(_N, "ListTagsForResourceRequest"),
   type = "structure",
   members = {
      ResourceArn = schema.new({
         id = id.from(_N, "ListTagsForResourceInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListTagsForResourceOutput = schema.new({
   id = id.from(_N, "ListTagsForResourceResponse"),
   type = "structure",
   members = {
      Tags = schema.new({
         id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.ListTopicsInput = schema.new({
   id = id.from(_N, "ListTopicsInput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListTopicsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.Topic = schema.new({
   id = id.from(_N, "Topic"),
   type = "structure",
   members = {
      TopicArn = schema.new({
         id = id.from(_N, "Topic", "TopicArn"),
         type = "string",
         name = "TopicArn",
         target_id = prelude.String.id,
      }),
   },
})

M.ListTopicsOutput = schema.new({
   id = id.from(_N, "ListTopicsResponse"),
   type = "structure",
   members = {
      Topics = schema.new({
         id = id.from(_N, "ListTopicsOutput", "Topics"),
         type = "list",
         name = "Topics",
         target_id = prelude.Document.id,
         list_member = M.Topic,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListTopicsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.OptInPhoneNumberInput = schema.new({
   id = id.from(_N, "OptInPhoneNumberInput"),
   type = "structure",
   members = {
      phoneNumber = schema.new({
         id = id.from(_N, "OptInPhoneNumberInput", "phoneNumber"),
         type = "string",
         name = "phoneNumber",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.OptInPhoneNumberOutput = schema.new({
   id = id.from(_N, "OptInPhoneNumberResponse"),
   type = "structure",
})

M.EndpointDisabledException = schema.new({
   id = id.from(_N, "EndpointDisabledException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "EndpointDisabledException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidParameterValueException = schema.new({
   id = id.from(_N, "InvalidParameterValueException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidParameterValueException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.KMSAccessDeniedException = schema.new({
   id = id.from(_N, "KMSAccessDeniedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "KMSAccessDeniedException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.KMSDisabledException = schema.new({
   id = id.from(_N, "KMSDisabledException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "KMSDisabledException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.KMSInvalidStateException = schema.new({
   id = id.from(_N, "KMSInvalidStateException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "KMSInvalidStateException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.KMSNotFoundException = schema.new({
   id = id.from(_N, "KMSNotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "KMSNotFoundException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.KMSOptInRequired = schema.new({
   id = id.from(_N, "KMSOptInRequired"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "KMSOptInRequired", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.KMSThrottlingException = schema.new({
   id = id.from(_N, "KMSThrottlingException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "KMSThrottlingException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.PlatformApplicationDisabledException = schema.new({
   id = id.from(_N, "PlatformApplicationDisabledException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "PlatformApplicationDisabledException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.MessageAttributeValue = schema.new({
   id = id.from(_N, "MessageAttributeValue"),
   type = "structure",
   members = {
      DataType = schema.new({
         id = id.from(_N, "MessageAttributeValue", "DataType"),
         type = "string",
         name = "DataType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StringValue = schema.new({
         id = id.from(_N, "MessageAttributeValue", "StringValue"),
         type = "string",
         name = "StringValue",
         target_id = prelude.String.id,
      }),
      BinaryValue = schema.new({
         id = id.from(_N, "MessageAttributeValue", "BinaryValue"),
         type = "blob",
         name = "BinaryValue",
         target_id = prelude.Blob.id,
      }),
   },
})

M.PublishInput = schema.new({
   id = id.from(_N, "PublishInput"),
   type = "structure",
   members = {
      TopicArn = schema.new({
         id = id.from(_N, "PublishInput", "TopicArn"),
         type = "string",
         name = "TopicArn",
         target_id = prelude.String.id,
      }),
      TargetArn = schema.new({
         id = id.from(_N, "PublishInput", "TargetArn"),
         type = "string",
         name = "TargetArn",
         target_id = prelude.String.id,
      }),
      PhoneNumber = schema.new({
         id = id.from(_N, "PublishInput", "PhoneNumber"),
         type = "string",
         name = "PhoneNumber",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "PublishInput", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Subject = schema.new({
         id = id.from(_N, "PublishInput", "Subject"),
         type = "string",
         name = "Subject",
         target_id = prelude.String.id,
      }),
      MessageStructure = schema.new({
         id = id.from(_N, "PublishInput", "MessageStructure"),
         type = "string",
         name = "MessageStructure",
         target_id = prelude.String.id,
      }),
      MessageAttributes = schema.new({
         id = id.from(_N, "PublishInput", "MessageAttributes"),
         type = "map",
         name = "MessageAttributes",
         target_id = prelude.Document.id,
         map_key = schema.new({ type = "string", traits = { [traits.XML_NAME] = { name = "Name" } } }),
         map_value = schema.new({ type = "structure", target = M.MessageAttributeValue, traits = { [traits.XML_NAME] = { name = "Value" } } }),
      }),
      MessageDeduplicationId = schema.new({
         id = id.from(_N, "PublishInput", "MessageDeduplicationId"),
         type = "string",
         name = "MessageDeduplicationId",
         target_id = prelude.String.id,
      }),
      MessageGroupId = schema.new({
         id = id.from(_N, "PublishInput", "MessageGroupId"),
         type = "string",
         name = "MessageGroupId",
         target_id = prelude.String.id,
      }),
   },
})

M.PublishOutput = schema.new({
   id = id.from(_N, "PublishResponse"),
   type = "structure",
   members = {
      MessageId = schema.new({
         id = id.from(_N, "PublishOutput", "MessageId"),
         type = "string",
         name = "MessageId",
         target_id = prelude.String.id,
      }),
      SequenceNumber = schema.new({
         id = id.from(_N, "PublishOutput", "SequenceNumber"),
         type = "string",
         name = "SequenceNumber",
         target_id = prelude.String.id,
      }),
   },
})

M.BatchEntryIdsNotDistinctException = schema.new({
   id = id.from(_N, "BatchEntryIdsNotDistinctException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "BatchEntryIdsNotDistinctException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.BatchRequestTooLongException = schema.new({
   id = id.from(_N, "BatchRequestTooLongException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "BatchRequestTooLongException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.EmptyBatchRequestException = schema.new({
   id = id.from(_N, "EmptyBatchRequestException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "EmptyBatchRequestException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidBatchEntryIdException = schema.new({
   id = id.from(_N, "InvalidBatchEntryIdException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidBatchEntryIdException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.PublishBatchRequestEntry = schema.new({
   id = id.from(_N, "PublishBatchRequestEntry"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "PublishBatchRequestEntry", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Message = schema.new({
         id = id.from(_N, "PublishBatchRequestEntry", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Subject = schema.new({
         id = id.from(_N, "PublishBatchRequestEntry", "Subject"),
         type = "string",
         name = "Subject",
         target_id = prelude.String.id,
      }),
      MessageStructure = schema.new({
         id = id.from(_N, "PublishBatchRequestEntry", "MessageStructure"),
         type = "string",
         name = "MessageStructure",
         target_id = prelude.String.id,
      }),
      MessageAttributes = schema.new({
         id = id.from(_N, "PublishBatchRequestEntry", "MessageAttributes"),
         type = "map",
         name = "MessageAttributes",
         target_id = prelude.Document.id,
         map_key = schema.new({ type = "string", traits = { [traits.XML_NAME] = { name = "Name" } } }),
         map_value = schema.new({ type = "structure", target = M.MessageAttributeValue, traits = { [traits.XML_NAME] = { name = "Value" } } }),
      }),
      MessageDeduplicationId = schema.new({
         id = id.from(_N, "PublishBatchRequestEntry", "MessageDeduplicationId"),
         type = "string",
         name = "MessageDeduplicationId",
         target_id = prelude.String.id,
      }),
      MessageGroupId = schema.new({
         id = id.from(_N, "PublishBatchRequestEntry", "MessageGroupId"),
         type = "string",
         name = "MessageGroupId",
         target_id = prelude.String.id,
      }),
   },
})

M.PublishBatchInput = schema.new({
   id = id.from(_N, "PublishBatchInput"),
   type = "structure",
   members = {
      TopicArn = schema.new({
         id = id.from(_N, "PublishBatchInput", "TopicArn"),
         type = "string",
         name = "TopicArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PublishBatchRequestEntries = schema.new({
         id = id.from(_N, "PublishBatchInput", "PublishBatchRequestEntries"),
         type = "list",
         name = "PublishBatchRequestEntries",
         target_id = prelude.Document.id,
         list_member = M.PublishBatchRequestEntry,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BatchResultErrorEntry = schema.new({
   id = id.from(_N, "BatchResultErrorEntry"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "BatchResultErrorEntry", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Code = schema.new({
         id = id.from(_N, "BatchResultErrorEntry", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Message = schema.new({
         id = id.from(_N, "BatchResultErrorEntry", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      SenderFault = schema.new({
         id = id.from(_N, "BatchResultErrorEntry", "SenderFault"),
         type = "boolean",
         name = "SenderFault",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.PublishBatchResultEntry = schema.new({
   id = id.from(_N, "PublishBatchResultEntry"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "PublishBatchResultEntry", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      MessageId = schema.new({
         id = id.from(_N, "PublishBatchResultEntry", "MessageId"),
         type = "string",
         name = "MessageId",
         target_id = prelude.String.id,
      }),
      SequenceNumber = schema.new({
         id = id.from(_N, "PublishBatchResultEntry", "SequenceNumber"),
         type = "string",
         name = "SequenceNumber",
         target_id = prelude.String.id,
      }),
   },
})

M.PublishBatchOutput = schema.new({
   id = id.from(_N, "PublishBatchResponse"),
   type = "structure",
   members = {
      Successful = schema.new({
         id = id.from(_N, "PublishBatchOutput", "Successful"),
         type = "list",
         name = "Successful",
         target_id = prelude.Document.id,
         list_member = M.PublishBatchResultEntry,
      }),
      Failed = schema.new({
         id = id.from(_N, "PublishBatchOutput", "Failed"),
         type = "list",
         name = "Failed",
         target_id = prelude.Document.id,
         list_member = M.BatchResultErrorEntry,
      }),
   },
})

M.TooManyEntriesInBatchRequestException = schema.new({
   id = id.from(_N, "TooManyEntriesInBatchRequestException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "TooManyEntriesInBatchRequestException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.PutDataProtectionPolicyInput = schema.new({
   id = id.from(_N, "PutDataProtectionPolicyInput"),
   type = "structure",
   members = {
      ResourceArn = schema.new({
         id = id.from(_N, "PutDataProtectionPolicyInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DataProtectionPolicy = schema.new({
         id = id.from(_N, "PutDataProtectionPolicyInput", "DataProtectionPolicy"),
         type = "string",
         name = "DataProtectionPolicy",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PutDataProtectionPolicyOutput = prelude.Unit

M.RemovePermissionInput = schema.new({
   id = id.from(_N, "RemovePermissionInput"),
   type = "structure",
   members = {
      TopicArn = schema.new({
         id = id.from(_N, "RemovePermissionInput", "TopicArn"),
         type = "string",
         name = "TopicArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Label = schema.new({
         id = id.from(_N, "RemovePermissionInput", "Label"),
         type = "string",
         name = "Label",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RemovePermissionOutput = prelude.Unit

M.SetEndpointAttributesInput = schema.new({
   id = id.from(_N, "SetEndpointAttributesInput"),
   type = "structure",
   members = {
      EndpointArn = schema.new({
         id = id.from(_N, "SetEndpointAttributesInput", "EndpointArn"),
         type = "string",
         name = "EndpointArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Attributes = schema.new({
         id = id.from(_N, "SetEndpointAttributesInput", "Attributes"),
         type = "map",
         name = "Attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SetEndpointAttributesOutput = prelude.Unit

M.SetPlatformApplicationAttributesInput = schema.new({
   id = id.from(_N, "SetPlatformApplicationAttributesInput"),
   type = "structure",
   members = {
      PlatformApplicationArn = schema.new({
         id = id.from(_N, "SetPlatformApplicationAttributesInput", "PlatformApplicationArn"),
         type = "string",
         name = "PlatformApplicationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Attributes = schema.new({
         id = id.from(_N, "SetPlatformApplicationAttributesInput", "Attributes"),
         type = "map",
         name = "Attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SetPlatformApplicationAttributesOutput = prelude.Unit

M.SetSMSAttributesInput = schema.new({
   id = id.from(_N, "SetSMSAttributesInput"),
   type = "structure",
   members = {
      attributes = schema.new({
         id = id.from(_N, "SetSMSAttributesInput", "attributes"),
         type = "map",
         name = "attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SetSMSAttributesOutput = schema.new({
   id = id.from(_N, "SetSMSAttributesResponse"),
   type = "structure",
})

M.SetSubscriptionAttributesInput = schema.new({
   id = id.from(_N, "SetSubscriptionAttributesInput"),
   type = "structure",
   members = {
      SubscriptionArn = schema.new({
         id = id.from(_N, "SetSubscriptionAttributesInput", "SubscriptionArn"),
         type = "string",
         name = "SubscriptionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AttributeName = schema.new({
         id = id.from(_N, "SetSubscriptionAttributesInput", "AttributeName"),
         type = "string",
         name = "AttributeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AttributeValue = schema.new({
         id = id.from(_N, "SetSubscriptionAttributesInput", "AttributeValue"),
         type = "string",
         name = "AttributeValue",
         target_id = prelude.String.id,
      }),
   },
})

M.SetSubscriptionAttributesOutput = prelude.Unit

M.SetTopicAttributesInput = schema.new({
   id = id.from(_N, "SetTopicAttributesInput"),
   type = "structure",
   members = {
      TopicArn = schema.new({
         id = id.from(_N, "SetTopicAttributesInput", "TopicArn"),
         type = "string",
         name = "TopicArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AttributeName = schema.new({
         id = id.from(_N, "SetTopicAttributesInput", "AttributeName"),
         type = "string",
         name = "AttributeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AttributeValue = schema.new({
         id = id.from(_N, "SetTopicAttributesInput", "AttributeValue"),
         type = "string",
         name = "AttributeValue",
         target_id = prelude.String.id,
      }),
   },
})

M.SetTopicAttributesOutput = prelude.Unit

M.SubscribeInput = schema.new({
   id = id.from(_N, "SubscribeInput"),
   type = "structure",
   members = {
      TopicArn = schema.new({
         id = id.from(_N, "SubscribeInput", "TopicArn"),
         type = "string",
         name = "TopicArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Protocol = schema.new({
         id = id.from(_N, "SubscribeInput", "Protocol"),
         type = "string",
         name = "Protocol",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Endpoint = schema.new({
         id = id.from(_N, "SubscribeInput", "Endpoint"),
         type = "string",
         name = "Endpoint",
         target_id = prelude.String.id,
      }),
      Attributes = schema.new({
         id = id.from(_N, "SubscribeInput", "Attributes"),
         type = "map",
         name = "Attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      ReturnSubscriptionArn = schema.new({
         id = id.from(_N, "SubscribeInput", "ReturnSubscriptionArn"),
         type = "boolean",
         name = "ReturnSubscriptionArn",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.SubscribeOutput = schema.new({
   id = id.from(_N, "SubscribeResponse"),
   type = "structure",
   members = {
      SubscriptionArn = schema.new({
         id = id.from(_N, "SubscribeOutput", "SubscriptionArn"),
         type = "string",
         name = "SubscriptionArn",
         target_id = prelude.String.id,
      }),
   },
})

M.TagResourceInput = schema.new({
   id = id.from(_N, "TagResourceRequest"),
   type = "structure",
   members = {
      ResourceArn = schema.new({
         id = id.from(_N, "TagResourceInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "TagResourceInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
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

M.UnsubscribeInput = schema.new({
   id = id.from(_N, "UnsubscribeInput"),
   type = "structure",
   members = {
      SubscriptionArn = schema.new({
         id = id.from(_N, "UnsubscribeInput", "SubscriptionArn"),
         type = "string",
         name = "SubscriptionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UnsubscribeOutput = prelude.Unit

M.UntagResourceInput = schema.new({
   id = id.from(_N, "UntagResourceRequest"),
   type = "structure",
   members = {
      ResourceArn = schema.new({
         id = id.from(_N, "UntagResourceInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
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
         },
      }),
   },
})

M.UntagResourceOutput = schema.new({
   id = id.from(_N, "UntagResourceResponse"),
   type = "structure",
})

M.VerificationException = schema.new({
   id = id.from(_N, "VerificationException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "VerificationException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "VerificationException", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.VerifySMSSandboxPhoneNumberInput = schema.new({
   id = id.from(_N, "VerifySMSSandboxPhoneNumberInput"),
   type = "structure",
   members = {
      PhoneNumber = schema.new({
         id = id.from(_N, "VerifySMSSandboxPhoneNumberInput", "PhoneNumber"),
         type = "string",
         name = "PhoneNumber",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      OneTimePassword = schema.new({
         id = id.from(_N, "VerifySMSSandboxPhoneNumberInput", "OneTimePassword"),
         type = "string",
         name = "OneTimePassword",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.VerifySMSSandboxPhoneNumberOutput = schema.new({
   id = id.from(_N, "VerifySMSSandboxPhoneNumberResult"),
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
   id = id.from("com.amazonaws.sns", "AmazonSimpleNotificationService"),
   version = "2010-03-31",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AddPermission = schema.operation({
   id = id.from("com.amazonaws.sns", "AddPermission"),
   input = M.AddPermissionInput,
   output = M.AddPermissionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CheckIfPhoneNumberIsOptedOut = schema.operation({
   id = id.from("com.amazonaws.sns", "CheckIfPhoneNumberIsOptedOut"),
   input = M.CheckIfPhoneNumberIsOptedOutInput,
   output = M.CheckIfPhoneNumberIsOptedOutOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ConfirmSubscription = schema.operation({
   id = id.from("com.amazonaws.sns", "ConfirmSubscription"),
   input = M.ConfirmSubscriptionInput,
   output = M.ConfirmSubscriptionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreatePlatformApplication = schema.operation({
   id = id.from("com.amazonaws.sns", "CreatePlatformApplication"),
   input = M.CreatePlatformApplicationInput,
   output = M.CreatePlatformApplicationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreatePlatformEndpoint = schema.operation({
   id = id.from("com.amazonaws.sns", "CreatePlatformEndpoint"),
   input = M.CreatePlatformEndpointInput,
   output = M.CreatePlatformEndpointOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateSMSSandboxPhoneNumber = schema.operation({
   id = id.from("com.amazonaws.sns", "CreateSMSSandboxPhoneNumber"),
   input = M.CreateSMSSandboxPhoneNumberInput,
   output = M.CreateSMSSandboxPhoneNumberOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateTopic = schema.operation({
   id = id.from("com.amazonaws.sns", "CreateTopic"),
   input = M.CreateTopicInput,
   output = M.CreateTopicOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteEndpoint = schema.operation({
   id = id.from("com.amazonaws.sns", "DeleteEndpoint"),
   input = M.DeleteEndpointInput,
   output = M.DeleteEndpointOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeletePlatformApplication = schema.operation({
   id = id.from("com.amazonaws.sns", "DeletePlatformApplication"),
   input = M.DeletePlatformApplicationInput,
   output = M.DeletePlatformApplicationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteSMSSandboxPhoneNumber = schema.operation({
   id = id.from("com.amazonaws.sns", "DeleteSMSSandboxPhoneNumber"),
   input = M.DeleteSMSSandboxPhoneNumberInput,
   output = M.DeleteSMSSandboxPhoneNumberOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteTopic = schema.operation({
   id = id.from("com.amazonaws.sns", "DeleteTopic"),
   input = M.DeleteTopicInput,
   output = M.DeleteTopicOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetDataProtectionPolicy = schema.operation({
   id = id.from("com.amazonaws.sns", "GetDataProtectionPolicy"),
   input = M.GetDataProtectionPolicyInput,
   output = M.GetDataProtectionPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetEndpointAttributes = schema.operation({
   id = id.from("com.amazonaws.sns", "GetEndpointAttributes"),
   input = M.GetEndpointAttributesInput,
   output = M.GetEndpointAttributesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetPlatformApplicationAttributes = schema.operation({
   id = id.from("com.amazonaws.sns", "GetPlatformApplicationAttributes"),
   input = M.GetPlatformApplicationAttributesInput,
   output = M.GetPlatformApplicationAttributesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSMSAttributes = schema.operation({
   id = id.from("com.amazonaws.sns", "GetSMSAttributes"),
   input = M.GetSMSAttributesInput,
   output = M.GetSMSAttributesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSMSSandboxAccountStatus = schema.operation({
   id = id.from("com.amazonaws.sns", "GetSMSSandboxAccountStatus"),
   input = M.GetSMSSandboxAccountStatusInput,
   output = M.GetSMSSandboxAccountStatusOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSubscriptionAttributes = schema.operation({
   id = id.from("com.amazonaws.sns", "GetSubscriptionAttributes"),
   input = M.GetSubscriptionAttributesInput,
   output = M.GetSubscriptionAttributesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetTopicAttributes = schema.operation({
   id = id.from("com.amazonaws.sns", "GetTopicAttributes"),
   input = M.GetTopicAttributesInput,
   output = M.GetTopicAttributesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListEndpointsByPlatformApplication = schema.operation({
   id = id.from("com.amazonaws.sns", "ListEndpointsByPlatformApplication"),
   input = M.ListEndpointsByPlatformApplicationInput,
   output = M.ListEndpointsByPlatformApplicationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListOriginationNumbers = schema.operation({
   id = id.from("com.amazonaws.sns", "ListOriginationNumbers"),
   input = M.ListOriginationNumbersInput,
   output = M.ListOriginationNumbersOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPhoneNumbersOptedOut = schema.operation({
   id = id.from("com.amazonaws.sns", "ListPhoneNumbersOptedOut"),
   input = M.ListPhoneNumbersOptedOutInput,
   output = M.ListPhoneNumbersOptedOutOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPlatformApplications = schema.operation({
   id = id.from("com.amazonaws.sns", "ListPlatformApplications"),
   input = M.ListPlatformApplicationsInput,
   output = M.ListPlatformApplicationsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListSMSSandboxPhoneNumbers = schema.operation({
   id = id.from("com.amazonaws.sns", "ListSMSSandboxPhoneNumbers"),
   input = M.ListSMSSandboxPhoneNumbersInput,
   output = M.ListSMSSandboxPhoneNumbersOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListSubscriptions = schema.operation({
   id = id.from("com.amazonaws.sns", "ListSubscriptions"),
   input = M.ListSubscriptionsInput,
   output = M.ListSubscriptionsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListSubscriptionsByTopic = schema.operation({
   id = id.from("com.amazonaws.sns", "ListSubscriptionsByTopic"),
   input = M.ListSubscriptionsByTopicInput,
   output = M.ListSubscriptionsByTopicOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.sns", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTopics = schema.operation({
   id = id.from("com.amazonaws.sns", "ListTopics"),
   input = M.ListTopicsInput,
   output = M.ListTopicsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.OptInPhoneNumber = schema.operation({
   id = id.from("com.amazonaws.sns", "OptInPhoneNumber"),
   input = M.OptInPhoneNumberInput,
   output = M.OptInPhoneNumberOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.Publish = schema.operation({
   id = id.from("com.amazonaws.sns", "Publish"),
   input = M.PublishInput,
   output = M.PublishOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PublishBatch = schema.operation({
   id = id.from("com.amazonaws.sns", "PublishBatch"),
   input = M.PublishBatchInput,
   output = M.PublishBatchOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutDataProtectionPolicy = schema.operation({
   id = id.from("com.amazonaws.sns", "PutDataProtectionPolicy"),
   input = M.PutDataProtectionPolicyInput,
   output = M.PutDataProtectionPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RemovePermission = schema.operation({
   id = id.from("com.amazonaws.sns", "RemovePermission"),
   input = M.RemovePermissionInput,
   output = M.RemovePermissionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SetEndpointAttributes = schema.operation({
   id = id.from("com.amazonaws.sns", "SetEndpointAttributes"),
   input = M.SetEndpointAttributesInput,
   output = M.SetEndpointAttributesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SetPlatformApplicationAttributes = schema.operation({
   id = id.from("com.amazonaws.sns", "SetPlatformApplicationAttributes"),
   input = M.SetPlatformApplicationAttributesInput,
   output = M.SetPlatformApplicationAttributesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SetSMSAttributes = schema.operation({
   id = id.from("com.amazonaws.sns", "SetSMSAttributes"),
   input = M.SetSMSAttributesInput,
   output = M.SetSMSAttributesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SetSubscriptionAttributes = schema.operation({
   id = id.from("com.amazonaws.sns", "SetSubscriptionAttributes"),
   input = M.SetSubscriptionAttributesInput,
   output = M.SetSubscriptionAttributesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SetTopicAttributes = schema.operation({
   id = id.from("com.amazonaws.sns", "SetTopicAttributes"),
   input = M.SetTopicAttributesInput,
   output = M.SetTopicAttributesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.Subscribe = schema.operation({
   id = id.from("com.amazonaws.sns", "Subscribe"),
   input = M.SubscribeInput,
   output = M.SubscribeOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.sns", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.Unsubscribe = schema.operation({
   id = id.from("com.amazonaws.sns", "Unsubscribe"),
   input = M.UnsubscribeInput,
   output = M.UnsubscribeOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.sns", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.VerifySMSSandboxPhoneNumber = schema.operation({
   id = id.from("com.amazonaws.sns", "VerifySMSSandboxPhoneNumber"),
   input = M.VerifySMSSandboxPhoneNumberInput,
   output = M.VerifySMSSandboxPhoneNumberOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
