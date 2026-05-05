local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.sns"

local M = {}

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

M.AddPermissionOutput = schema.new({
    id = id.from(_N, "AddPermissionOutput"),
    type = "structure",
})

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
    id = id.from(_N, "CheckIfPhoneNumberIsOptedOutOutput"),
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
    id = id.from(_N, "ConfirmSubscriptionOutput"),
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
    id = id.from(_N, "CreatePlatformApplicationOutput"),
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
    id = id.from(_N, "CreatePlatformEndpointOutput"),
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
    id = id.from(_N, "CreateSMSSandboxPhoneNumberOutput"),
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
    id = id.from(_N, "CreateTopicOutput"),
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

M.DeleteEndpointOutput = schema.new({
    id = id.from(_N, "DeleteEndpointOutput"),
    type = "structure",
})

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

M.DeletePlatformApplicationOutput = schema.new({
    id = id.from(_N, "DeletePlatformApplicationOutput"),
    type = "structure",
})

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
    id = id.from(_N, "DeleteSMSSandboxPhoneNumberOutput"),
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

M.DeleteTopicOutput = schema.new({
    id = id.from(_N, "DeleteTopicOutput"),
    type = "structure",
})

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
    id = id.from(_N, "GetDataProtectionPolicyOutput"),
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
    id = id.from(_N, "GetEndpointAttributesOutput"),
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
    id = id.from(_N, "GetPlatformApplicationAttributesOutput"),
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
    id = id.from(_N, "GetSMSAttributesOutput"),
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
    id = id.from(_N, "GetSMSSandboxAccountStatusOutput"),
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
    id = id.from(_N, "GetSubscriptionAttributesOutput"),
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
    id = id.from(_N, "GetTopicAttributesOutput"),
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
    id = id.from(_N, "ListEndpointsByPlatformApplicationOutput"),
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
    id = id.from(_N, "ListOriginationNumbersInput"),
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
    id = id.from(_N, "ListOriginationNumbersOutput"),
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
    id = id.from(_N, "ListPhoneNumbersOptedOutOutput"),
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
    id = id.from(_N, "ListPlatformApplicationsOutput"),
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
    id = id.from(_N, "ListSMSSandboxPhoneNumbersOutput"),
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
    id = id.from(_N, "ListSubscriptionsOutput"),
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
    id = id.from(_N, "ListSubscriptionsByTopicOutput"),
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
    id = id.from(_N, "ListTopicsOutput"),
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
    id = id.from(_N, "OptInPhoneNumberOutput"),
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
            map_key = prelude.String,
            map_value = M.MessageAttributeValue,
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
    id = id.from(_N, "PublishOutput"),
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
            map_key = prelude.String,
            map_value = M.MessageAttributeValue,
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
    id = id.from(_N, "PublishBatchOutput"),
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

M.PutDataProtectionPolicyOutput = schema.new({
    id = id.from(_N, "PutDataProtectionPolicyOutput"),
    type = "structure",
})

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

M.RemovePermissionOutput = schema.new({
    id = id.from(_N, "RemovePermissionOutput"),
    type = "structure",
})

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

M.SetEndpointAttributesOutput = schema.new({
    id = id.from(_N, "SetEndpointAttributesOutput"),
    type = "structure",
})

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

M.SetPlatformApplicationAttributesOutput = schema.new({
    id = id.from(_N, "SetPlatformApplicationAttributesOutput"),
    type = "structure",
})

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
    id = id.from(_N, "SetSMSAttributesOutput"),
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

M.SetSubscriptionAttributesOutput = schema.new({
    id = id.from(_N, "SetSubscriptionAttributesOutput"),
    type = "structure",
})

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

M.SetTopicAttributesOutput = schema.new({
    id = id.from(_N, "SetTopicAttributesOutput"),
    type = "structure",
})

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
    id = id.from(_N, "SubscribeOutput"),
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
    id = id.from(_N, "TagResourceOutput"),
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

M.UnsubscribeOutput = schema.new({
    id = id.from(_N, "UnsubscribeOutput"),
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
    id = id.from(_N, "UntagResourceOutput"),
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
    id = id.from(_N, "VerifySMSSandboxPhoneNumberOutput"),
    type = "structure",
})

return M
