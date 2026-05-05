local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.pinpointsmsvoicev2"

local M = {}

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "AccessDeniedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        Reason = schema.new({
            id = id.from(_N, "AccessDeniedException", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
    },
})

M.AccountAttribute = schema.new({
    id = id.from(_N, "AccountAttribute"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "AccountAttribute", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "AccountAttribute", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AccountLimit = schema.new({
    id = id.from(_N, "AccountLimit"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "AccountLimit", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Used = schema.new({
            id = id.from(_N, "AccountLimit", "Used"),
            type = "long",
            name = "Used",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Max = schema.new({
            id = id.from(_N, "AccountLimit", "Max"),
            type = "long",
            name = "Max",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.AssociateOriginationIdentityInput = schema.new({
    id = id.from(_N, "AssociateOriginationIdentityRequest"),
    type = "structure",
    members = {
        PoolId = schema.new({
            id = id.from(_N, "AssociateOriginationIdentityInput", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OriginationIdentity = schema.new({
            id = id.from(_N, "AssociateOriginationIdentityInput", "OriginationIdentity"),
            type = "string",
            name = "OriginationIdentity",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsoCountryCode = schema.new({
            id = id.from(_N, "AssociateOriginationIdentityInput", "IsoCountryCode"),
            type = "string",
            name = "IsoCountryCode",
            target_id = prelude.String.id,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "AssociateOriginationIdentityInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.AssociateOriginationIdentityOutput = schema.new({
    id = id.from(_N, "AssociateOriginationIdentityResult"),
    type = "structure",
    members = {
        PoolArn = schema.new({
            id = id.from(_N, "AssociateOriginationIdentityOutput", "PoolArn"),
            type = "string",
            name = "PoolArn",
            target_id = prelude.String.id,
        }),
        PoolId = schema.new({
            id = id.from(_N, "AssociateOriginationIdentityOutput", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
        }),
        OriginationIdentityArn = schema.new({
            id = id.from(_N, "AssociateOriginationIdentityOutput", "OriginationIdentityArn"),
            type = "string",
            name = "OriginationIdentityArn",
            target_id = prelude.String.id,
        }),
        OriginationIdentity = schema.new({
            id = id.from(_N, "AssociateOriginationIdentityOutput", "OriginationIdentity"),
            type = "string",
            name = "OriginationIdentity",
            target_id = prelude.String.id,
        }),
        IsoCountryCode = schema.new({
            id = id.from(_N, "AssociateOriginationIdentityOutput", "IsoCountryCode"),
            type = "string",
            name = "IsoCountryCode",
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
        Message = schema.new({
            id = id.from(_N, "ConflictException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        Reason = schema.new({
            id = id.from(_N, "ConflictException", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ConflictException", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ConflictException", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
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
        Message = schema.new({
            id = id.from(_N, "InternalServerException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RequestId = schema.new({
            id = id.from(_N, "InternalServerException", "RequestId"),
            type = "string",
            name = "RequestId",
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
        ResourceType = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "ResourceId"),
            type = "string",
            name = "ResourceId",
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
        Message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        Reason = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "Reason"),
            type = "string",
            name = "Reason",
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
        Message = schema.new({
            id = id.from(_N, "ThrottlingException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ValidationExceptionField = schema.new({
    id = id.from(_N, "ValidationExceptionField"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ValidationExceptionField", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "ValidationExceptionField", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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
        }),
        Reason = schema.new({
            id = id.from(_N, "ValidationException", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
        Fields = schema.new({
            id = id.from(_N, "ValidationException", "Fields"),
            type = "list",
            name = "Fields",
            target_id = prelude.Document.id,
            list_member = M.ValidationExceptionField,
        }),
    },
})

M.AssociateProtectConfigurationInput = schema.new({
    id = id.from(_N, "AssociateProtectConfigurationRequest"),
    type = "structure",
    members = {
        ProtectConfigurationId = schema.new({
            id = id.from(_N, "AssociateProtectConfigurationInput", "ProtectConfigurationId"),
            type = "string",
            name = "ProtectConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConfigurationSetName = schema.new({
            id = id.from(_N, "AssociateProtectConfigurationInput", "ConfigurationSetName"),
            type = "string",
            name = "ConfigurationSetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateProtectConfigurationOutput = schema.new({
    id = id.from(_N, "AssociateProtectConfigurationResult"),
    type = "structure",
    members = {
        ConfigurationSetArn = schema.new({
            id = id.from(_N, "AssociateProtectConfigurationOutput", "ConfigurationSetArn"),
            type = "string",
            name = "ConfigurationSetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConfigurationSetName = schema.new({
            id = id.from(_N, "AssociateProtectConfigurationOutput", "ConfigurationSetName"),
            type = "string",
            name = "ConfigurationSetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProtectConfigurationArn = schema.new({
            id = id.from(_N, "AssociateProtectConfigurationOutput", "ProtectConfigurationArn"),
            type = "string",
            name = "ProtectConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProtectConfigurationId = schema.new({
            id = id.from(_N, "AssociateProtectConfigurationOutput", "ProtectConfigurationId"),
            type = "string",
            name = "ProtectConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CarrierLookupInput = schema.new({
    id = id.from(_N, "CarrierLookupRequest"),
    type = "structure",
    members = {
        PhoneNumber = schema.new({
            id = id.from(_N, "CarrierLookupInput", "PhoneNumber"),
            type = "string",
            name = "PhoneNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CarrierLookupOutput = schema.new({
    id = id.from(_N, "CarrierLookupResult"),
    type = "structure",
    members = {
        E164PhoneNumber = schema.new({
            id = id.from(_N, "CarrierLookupOutput", "E164PhoneNumber"),
            type = "string",
            name = "E164PhoneNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DialingCountryCode = schema.new({
            id = id.from(_N, "CarrierLookupOutput", "DialingCountryCode"),
            type = "string",
            name = "DialingCountryCode",
            target_id = prelude.String.id,
        }),
        IsoCountryCode = schema.new({
            id = id.from(_N, "CarrierLookupOutput", "IsoCountryCode"),
            type = "string",
            name = "IsoCountryCode",
            target_id = prelude.String.id,
        }),
        Country = schema.new({
            id = id.from(_N, "CarrierLookupOutput", "Country"),
            type = "string",
            name = "Country",
            target_id = prelude.String.id,
        }),
        MCC = schema.new({
            id = id.from(_N, "CarrierLookupOutput", "MCC"),
            type = "string",
            name = "MCC",
            target_id = prelude.String.id,
        }),
        MNC = schema.new({
            id = id.from(_N, "CarrierLookupOutput", "MNC"),
            type = "string",
            name = "MNC",
            target_id = prelude.String.id,
        }),
        Carrier = schema.new({
            id = id.from(_N, "CarrierLookupOutput", "Carrier"),
            type = "string",
            name = "Carrier",
            target_id = prelude.String.id,
        }),
        PhoneNumberType = schema.new({
            id = id.from(_N, "CarrierLookupOutput", "PhoneNumberType"),
            type = "string",
            name = "PhoneNumberType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CarrierStatusInformation = schema.new({
    id = id.from(_N, "CarrierStatusInformation"),
    type = "structure",
    members = {
        CarrierName = schema.new({
            id = id.from(_N, "CarrierStatusInformation", "CarrierName"),
            type = "string",
            name = "CarrierName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "CarrierStatusInformation", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LogGroupArn = schema.new({
            id = id.from(_N, "CloudWatchLogsDestination", "LogGroupArn"),
            type = "string",
            name = "LogGroupArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConfigurationSetFilter = schema.new({
    id = id.from(_N, "ConfigurationSetFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ConfigurationSetFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "ConfigurationSetFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.KinesisFirehoseDestination = schema.new({
    id = id.from(_N, "KinesisFirehoseDestination"),
    type = "structure",
    members = {
        IamRoleArn = schema.new({
            id = id.from(_N, "KinesisFirehoseDestination", "IamRoleArn"),
            type = "string",
            name = "IamRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeliveryStreamArn = schema.new({
            id = id.from(_N, "KinesisFirehoseDestination", "DeliveryStreamArn"),
            type = "string",
            name = "DeliveryStreamArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EventDestination = schema.new({
    id = id.from(_N, "EventDestination"),
    type = "structure",
    members = {
        EventDestinationName = schema.new({
            id = id.from(_N, "EventDestination", "EventDestinationName"),
            type = "string",
            name = "EventDestinationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Enabled = schema.new({
            id = id.from(_N, "EventDestination", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MatchingEventTypes = schema.new({
            id = id.from(_N, "EventDestination", "MatchingEventTypes"),
            type = "list",
            name = "MatchingEventTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CloudWatchLogsDestination = schema.new({
            id = id.from(_N, "EventDestination", "CloudWatchLogsDestination"),
            type = "structure",
            name = "CloudWatchLogsDestination",
            target_id = id.from(_N, "CloudWatchLogsDestination"),
            target = M.CloudWatchLogsDestination,
        }),
        KinesisFirehoseDestination = schema.new({
            id = id.from(_N, "EventDestination", "KinesisFirehoseDestination"),
            type = "structure",
            name = "KinesisFirehoseDestination",
            target_id = id.from(_N, "KinesisFirehoseDestination"),
            target = M.KinesisFirehoseDestination,
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

M.ConfigurationSetInformation = schema.new({
    id = id.from(_N, "ConfigurationSetInformation"),
    type = "structure",
    members = {
        ConfigurationSetArn = schema.new({
            id = id.from(_N, "ConfigurationSetInformation", "ConfigurationSetArn"),
            type = "string",
            name = "ConfigurationSetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConfigurationSetName = schema.new({
            id = id.from(_N, "ConfigurationSetInformation", "ConfigurationSetName"),
            type = "string",
            name = "ConfigurationSetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EventDestinations = schema.new({
            id = id.from(_N, "ConfigurationSetInformation", "EventDestinations"),
            type = "list",
            name = "EventDestinations",
            target_id = prelude.Document.id,
            list_member = M.EventDestination,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DefaultMessageType = schema.new({
            id = id.from(_N, "ConfigurationSetInformation", "DefaultMessageType"),
            type = "string",
            name = "DefaultMessageType",
            target_id = prelude.String.id,
        }),
        DefaultSenderId = schema.new({
            id = id.from(_N, "ConfigurationSetInformation", "DefaultSenderId"),
            type = "string",
            name = "DefaultSenderId",
            target_id = prelude.String.id,
        }),
        DefaultMessageFeedbackEnabled = schema.new({
            id = id.from(_N, "ConfigurationSetInformation", "DefaultMessageFeedbackEnabled"),
            type = "boolean",
            name = "DefaultMessageFeedbackEnabled",
            target_id = prelude.Boolean.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "ConfigurationSetInformation", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProtectConfigurationId = schema.new({
            id = id.from(_N, "ConfigurationSetInformation", "ProtectConfigurationId"),
            type = "string",
            name = "ProtectConfigurationId",
            target_id = prelude.String.id,
        }),
    },
})

M.CountryLaunchStatusFilter = schema.new({
    id = id.from(_N, "CountryLaunchStatusFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CountryLaunchStatusFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "CountryLaunchStatusFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CountryLaunchStatusInformation = schema.new({
    id = id.from(_N, "CountryLaunchStatusInformation"),
    type = "structure",
    members = {
        IsoCountryCode = schema.new({
            id = id.from(_N, "CountryLaunchStatusInformation", "IsoCountryCode"),
            type = "string",
            name = "IsoCountryCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "CountryLaunchStatusInformation", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RcsPlatformId = schema.new({
            id = id.from(_N, "CountryLaunchStatusInformation", "RcsPlatformId"),
            type = "string",
            name = "RcsPlatformId",
            target_id = prelude.String.id,
        }),
        RegistrationId = schema.new({
            id = id.from(_N, "CountryLaunchStatusInformation", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CarrierStatus = schema.new({
            id = id.from(_N, "CountryLaunchStatusInformation", "CarrierStatus"),
            type = "list",
            name = "CarrierStatus",
            target_id = prelude.Document.id,
            list_member = M.CarrierStatusInformation,
            traits = {
                [traits.REQUIRED] = {},
            },
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

M.CreateConfigurationSetInput = schema.new({
    id = id.from(_N, "CreateConfigurationSetRequest"),
    type = "structure",
    members = {
        ConfigurationSetName = schema.new({
            id = id.from(_N, "CreateConfigurationSetInput", "ConfigurationSetName"),
            type = "string",
            name = "ConfigurationSetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateConfigurationSetInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateConfigurationSetInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateConfigurationSetOutput = schema.new({
    id = id.from(_N, "CreateConfigurationSetResult"),
    type = "structure",
    members = {
        ConfigurationSetArn = schema.new({
            id = id.from(_N, "CreateConfigurationSetOutput", "ConfigurationSetArn"),
            type = "string",
            name = "ConfigurationSetArn",
            target_id = prelude.String.id,
        }),
        ConfigurationSetName = schema.new({
            id = id.from(_N, "CreateConfigurationSetOutput", "ConfigurationSetName"),
            type = "string",
            name = "ConfigurationSetName",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateConfigurationSetOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "CreateConfigurationSetOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.CreateEventDestinationInput = schema.new({
    id = id.from(_N, "CreateEventDestinationRequest"),
    type = "structure",
    members = {
        ConfigurationSetName = schema.new({
            id = id.from(_N, "CreateEventDestinationInput", "ConfigurationSetName"),
            type = "string",
            name = "ConfigurationSetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EventDestinationName = schema.new({
            id = id.from(_N, "CreateEventDestinationInput", "EventDestinationName"),
            type = "string",
            name = "EventDestinationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MatchingEventTypes = schema.new({
            id = id.from(_N, "CreateEventDestinationInput", "MatchingEventTypes"),
            type = "list",
            name = "MatchingEventTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CloudWatchLogsDestination = schema.new({
            id = id.from(_N, "CreateEventDestinationInput", "CloudWatchLogsDestination"),
            type = "structure",
            name = "CloudWatchLogsDestination",
            target_id = id.from(_N, "CloudWatchLogsDestination"),
            target = M.CloudWatchLogsDestination,
        }),
        KinesisFirehoseDestination = schema.new({
            id = id.from(_N, "CreateEventDestinationInput", "KinesisFirehoseDestination"),
            type = "structure",
            name = "KinesisFirehoseDestination",
            target_id = id.from(_N, "KinesisFirehoseDestination"),
            target = M.KinesisFirehoseDestination,
        }),
        SnsDestination = schema.new({
            id = id.from(_N, "CreateEventDestinationInput", "SnsDestination"),
            type = "structure",
            name = "SnsDestination",
            target_id = id.from(_N, "SnsDestination"),
            target = M.SnsDestination,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateEventDestinationInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateEventDestinationOutput = schema.new({
    id = id.from(_N, "CreateEventDestinationResult"),
    type = "structure",
    members = {
        ConfigurationSetArn = schema.new({
            id = id.from(_N, "CreateEventDestinationOutput", "ConfigurationSetArn"),
            type = "string",
            name = "ConfigurationSetArn",
            target_id = prelude.String.id,
        }),
        ConfigurationSetName = schema.new({
            id = id.from(_N, "CreateEventDestinationOutput", "ConfigurationSetName"),
            type = "string",
            name = "ConfigurationSetName",
            target_id = prelude.String.id,
        }),
        EventDestination = schema.new({
            id = id.from(_N, "CreateEventDestinationOutput", "EventDestination"),
            type = "structure",
            name = "EventDestination",
            target_id = id.from(_N, "EventDestination"),
            target = M.EventDestination,
        }),
    },
})

M.CreateNotifyConfigurationInput = schema.new({
    id = id.from(_N, "CreateNotifyConfigurationRequest"),
    type = "structure",
    members = {
        DisplayName = schema.new({
            id = id.from(_N, "CreateNotifyConfigurationInput", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UseCase = schema.new({
            id = id.from(_N, "CreateNotifyConfigurationInput", "UseCase"),
            type = "string",
            name = "UseCase",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DefaultTemplateId = schema.new({
            id = id.from(_N, "CreateNotifyConfigurationInput", "DefaultTemplateId"),
            type = "string",
            name = "DefaultTemplateId",
            target_id = prelude.String.id,
        }),
        PoolId = schema.new({
            id = id.from(_N, "CreateNotifyConfigurationInput", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
        }),
        EnabledCountries = schema.new({
            id = id.from(_N, "CreateNotifyConfigurationInput", "EnabledCountries"),
            type = "list",
            name = "EnabledCountries",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        EnabledChannels = schema.new({
            id = id.from(_N, "CreateNotifyConfigurationInput", "EnabledChannels"),
            type = "list",
            name = "EnabledChannels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "CreateNotifyConfigurationInput", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateNotifyConfigurationInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateNotifyConfigurationInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateNotifyConfigurationOutput = schema.new({
    id = id.from(_N, "CreateNotifyConfigurationResult"),
    type = "structure",
    members = {
        NotifyConfigurationArn = schema.new({
            id = id.from(_N, "CreateNotifyConfigurationOutput", "NotifyConfigurationArn"),
            type = "string",
            name = "NotifyConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NotifyConfigurationId = schema.new({
            id = id.from(_N, "CreateNotifyConfigurationOutput", "NotifyConfigurationId"),
            type = "string",
            name = "NotifyConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DisplayName = schema.new({
            id = id.from(_N, "CreateNotifyConfigurationOutput", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UseCase = schema.new({
            id = id.from(_N, "CreateNotifyConfigurationOutput", "UseCase"),
            type = "string",
            name = "UseCase",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DefaultTemplateId = schema.new({
            id = id.from(_N, "CreateNotifyConfigurationOutput", "DefaultTemplateId"),
            type = "string",
            name = "DefaultTemplateId",
            target_id = prelude.String.id,
        }),
        PoolId = schema.new({
            id = id.from(_N, "CreateNotifyConfigurationOutput", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
        }),
        EnabledCountries = schema.new({
            id = id.from(_N, "CreateNotifyConfigurationOutput", "EnabledCountries"),
            type = "list",
            name = "EnabledCountries",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        EnabledChannels = schema.new({
            id = id.from(_N, "CreateNotifyConfigurationOutput", "EnabledChannels"),
            type = "list",
            name = "EnabledChannels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tier = schema.new({
            id = id.from(_N, "CreateNotifyConfigurationOutput", "Tier"),
            type = "string",
            name = "Tier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TierUpgradeStatus = schema.new({
            id = id.from(_N, "CreateNotifyConfigurationOutput", "TierUpgradeStatus"),
            type = "string",
            name = "TierUpgradeStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "CreateNotifyConfigurationOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RejectionReason = schema.new({
            id = id.from(_N, "CreateNotifyConfigurationOutput", "RejectionReason"),
            type = "string",
            name = "RejectionReason",
            target_id = prelude.String.id,
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "CreateNotifyConfigurationOutput", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateNotifyConfigurationOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "CreateNotifyConfigurationOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateOptOutListInput = schema.new({
    id = id.from(_N, "CreateOptOutListRequest"),
    type = "structure",
    members = {
        OptOutListName = schema.new({
            id = id.from(_N, "CreateOptOutListInput", "OptOutListName"),
            type = "string",
            name = "OptOutListName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateOptOutListInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateOptOutListInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateOptOutListOutput = schema.new({
    id = id.from(_N, "CreateOptOutListResult"),
    type = "structure",
    members = {
        OptOutListArn = schema.new({
            id = id.from(_N, "CreateOptOutListOutput", "OptOutListArn"),
            type = "string",
            name = "OptOutListArn",
            target_id = prelude.String.id,
        }),
        OptOutListName = schema.new({
            id = id.from(_N, "CreateOptOutListOutput", "OptOutListName"),
            type = "string",
            name = "OptOutListName",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateOptOutListOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "CreateOptOutListOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.CreatePoolInput = schema.new({
    id = id.from(_N, "CreatePoolRequest"),
    type = "structure",
    members = {
        OriginationIdentity = schema.new({
            id = id.from(_N, "CreatePoolInput", "OriginationIdentity"),
            type = "string",
            name = "OriginationIdentity",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsoCountryCode = schema.new({
            id = id.from(_N, "CreatePoolInput", "IsoCountryCode"),
            type = "string",
            name = "IsoCountryCode",
            target_id = prelude.String.id,
        }),
        MessageType = schema.new({
            id = id.from(_N, "CreatePoolInput", "MessageType"),
            type = "string",
            name = "MessageType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "CreatePoolInput", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreatePoolInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreatePoolInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreatePoolOutput = schema.new({
    id = id.from(_N, "CreatePoolResult"),
    type = "structure",
    members = {
        PoolArn = schema.new({
            id = id.from(_N, "CreatePoolOutput", "PoolArn"),
            type = "string",
            name = "PoolArn",
            target_id = prelude.String.id,
        }),
        PoolId = schema.new({
            id = id.from(_N, "CreatePoolOutput", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "CreatePoolOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        MessageType = schema.new({
            id = id.from(_N, "CreatePoolOutput", "MessageType"),
            type = "string",
            name = "MessageType",
            target_id = prelude.String.id,
        }),
        TwoWayEnabled = schema.new({
            id = id.from(_N, "CreatePoolOutput", "TwoWayEnabled"),
            type = "boolean",
            name = "TwoWayEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        TwoWayChannelArn = schema.new({
            id = id.from(_N, "CreatePoolOutput", "TwoWayChannelArn"),
            type = "string",
            name = "TwoWayChannelArn",
            target_id = prelude.String.id,
        }),
        TwoWayChannelRole = schema.new({
            id = id.from(_N, "CreatePoolOutput", "TwoWayChannelRole"),
            type = "string",
            name = "TwoWayChannelRole",
            target_id = prelude.String.id,
        }),
        SelfManagedOptOutsEnabled = schema.new({
            id = id.from(_N, "CreatePoolOutput", "SelfManagedOptOutsEnabled"),
            type = "boolean",
            name = "SelfManagedOptOutsEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        OptOutListName = schema.new({
            id = id.from(_N, "CreatePoolOutput", "OptOutListName"),
            type = "string",
            name = "OptOutListName",
            target_id = prelude.String.id,
        }),
        SharedRoutesEnabled = schema.new({
            id = id.from(_N, "CreatePoolOutput", "SharedRoutesEnabled"),
            type = "boolean",
            name = "SharedRoutesEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "CreatePoolOutput", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreatePoolOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "CreatePoolOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.CreateProtectConfigurationInput = schema.new({
    id = id.from(_N, "CreateProtectConfigurationRequest"),
    type = "structure",
    members = {
        ClientToken = schema.new({
            id = id.from(_N, "CreateProtectConfigurationInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "CreateProtectConfigurationInput", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateProtectConfigurationInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateProtectConfigurationOutput = schema.new({
    id = id.from(_N, "CreateProtectConfigurationResult"),
    type = "structure",
    members = {
        ProtectConfigurationArn = schema.new({
            id = id.from(_N, "CreateProtectConfigurationOutput", "ProtectConfigurationArn"),
            type = "string",
            name = "ProtectConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProtectConfigurationId = schema.new({
            id = id.from(_N, "CreateProtectConfigurationOutput", "ProtectConfigurationId"),
            type = "string",
            name = "ProtectConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "CreateProtectConfigurationOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccountDefault = schema.new({
            id = id.from(_N, "CreateProtectConfigurationOutput", "AccountDefault"),
            type = "boolean",
            name = "AccountDefault",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "CreateProtectConfigurationOutput", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateProtectConfigurationOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateRcsAgentInput = schema.new({
    id = id.from(_N, "CreateRcsAgentRequest"),
    type = "structure",
    members = {
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "CreateRcsAgentInput", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
        }),
        OptOutListName = schema.new({
            id = id.from(_N, "CreateRcsAgentInput", "OptOutListName"),
            type = "string",
            name = "OptOutListName",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateRcsAgentInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateRcsAgentInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateRcsAgentOutput = schema.new({
    id = id.from(_N, "CreateRcsAgentResult"),
    type = "structure",
    members = {
        RcsAgentArn = schema.new({
            id = id.from(_N, "CreateRcsAgentOutput", "RcsAgentArn"),
            type = "string",
            name = "RcsAgentArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RcsAgentId = schema.new({
            id = id.from(_N, "CreateRcsAgentOutput", "RcsAgentId"),
            type = "string",
            name = "RcsAgentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "CreateRcsAgentOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "CreateRcsAgentOutput", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        OptOutListName = schema.new({
            id = id.from(_N, "CreateRcsAgentOutput", "OptOutListName"),
            type = "string",
            name = "OptOutListName",
            target_id = prelude.String.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "CreateRcsAgentOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SelfManagedOptOutsEnabled = schema.new({
            id = id.from(_N, "CreateRcsAgentOutput", "SelfManagedOptOutsEnabled"),
            type = "boolean",
            name = "SelfManagedOptOutsEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        TwoWayChannelArn = schema.new({
            id = id.from(_N, "CreateRcsAgentOutput", "TwoWayChannelArn"),
            type = "string",
            name = "TwoWayChannelArn",
            target_id = prelude.String.id,
        }),
        TwoWayChannelRole = schema.new({
            id = id.from(_N, "CreateRcsAgentOutput", "TwoWayChannelRole"),
            type = "string",
            name = "TwoWayChannelRole",
            target_id = prelude.String.id,
        }),
        TwoWayEnabled = schema.new({
            id = id.from(_N, "CreateRcsAgentOutput", "TwoWayEnabled"),
            type = "boolean",
            name = "TwoWayEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateRcsAgentOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateRegistrationInput = schema.new({
    id = id.from(_N, "CreateRegistrationRequest"),
    type = "structure",
    members = {
        RegistrationType = schema.new({
            id = id.from(_N, "CreateRegistrationInput", "RegistrationType"),
            type = "string",
            name = "RegistrationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateRegistrationInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateRegistrationInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateRegistrationOutput = schema.new({
    id = id.from(_N, "CreateRegistrationResult"),
    type = "structure",
    members = {
        RegistrationArn = schema.new({
            id = id.from(_N, "CreateRegistrationOutput", "RegistrationArn"),
            type = "string",
            name = "RegistrationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationId = schema.new({
            id = id.from(_N, "CreateRegistrationOutput", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationType = schema.new({
            id = id.from(_N, "CreateRegistrationOutput", "RegistrationType"),
            type = "string",
            name = "RegistrationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationStatus = schema.new({
            id = id.from(_N, "CreateRegistrationOutput", "RegistrationStatus"),
            type = "string",
            name = "RegistrationStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CurrentVersionNumber = schema.new({
            id = id.from(_N, "CreateRegistrationOutput", "CurrentVersionNumber"),
            type = "long",
            name = "CurrentVersionNumber",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AdditionalAttributes = schema.new({
            id = id.from(_N, "CreateRegistrationOutput", "AdditionalAttributes"),
            type = "map",
            name = "AdditionalAttributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateRegistrationOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "CreateRegistrationOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateRegistrationAssociationInput = schema.new({
    id = id.from(_N, "CreateRegistrationAssociationRequest"),
    type = "structure",
    members = {
        RegistrationId = schema.new({
            id = id.from(_N, "CreateRegistrationAssociationInput", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "CreateRegistrationAssociationInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateRegistrationAssociationOutput = schema.new({
    id = id.from(_N, "CreateRegistrationAssociationResult"),
    type = "structure",
    members = {
        RegistrationArn = schema.new({
            id = id.from(_N, "CreateRegistrationAssociationOutput", "RegistrationArn"),
            type = "string",
            name = "RegistrationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationId = schema.new({
            id = id.from(_N, "CreateRegistrationAssociationOutput", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationType = schema.new({
            id = id.from(_N, "CreateRegistrationAssociationOutput", "RegistrationType"),
            type = "string",
            name = "RegistrationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "CreateRegistrationAssociationOutput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "CreateRegistrationAssociationOutput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "CreateRegistrationAssociationOutput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsoCountryCode = schema.new({
            id = id.from(_N, "CreateRegistrationAssociationOutput", "IsoCountryCode"),
            type = "string",
            name = "IsoCountryCode",
            target_id = prelude.String.id,
        }),
        PhoneNumber = schema.new({
            id = id.from(_N, "CreateRegistrationAssociationOutput", "PhoneNumber"),
            type = "string",
            name = "PhoneNumber",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateRegistrationAttachmentInput = schema.new({
    id = id.from(_N, "CreateRegistrationAttachmentRequest"),
    type = "structure",
    members = {
        AttachmentBody = schema.new({
            id = id.from(_N, "CreateRegistrationAttachmentInput", "AttachmentBody"),
            type = "blob",
            name = "AttachmentBody",
            target_id = prelude.Blob.id,
        }),
        AttachmentUrl = schema.new({
            id = id.from(_N, "CreateRegistrationAttachmentInput", "AttachmentUrl"),
            type = "string",
            name = "AttachmentUrl",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateRegistrationAttachmentInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateRegistrationAttachmentInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateRegistrationAttachmentOutput = schema.new({
    id = id.from(_N, "CreateRegistrationAttachmentResult"),
    type = "structure",
    members = {
        RegistrationAttachmentArn = schema.new({
            id = id.from(_N, "CreateRegistrationAttachmentOutput", "RegistrationAttachmentArn"),
            type = "string",
            name = "RegistrationAttachmentArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationAttachmentId = schema.new({
            id = id.from(_N, "CreateRegistrationAttachmentOutput", "RegistrationAttachmentId"),
            type = "string",
            name = "RegistrationAttachmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AttachmentStatus = schema.new({
            id = id.from(_N, "CreateRegistrationAttachmentOutput", "AttachmentStatus"),
            type = "string",
            name = "AttachmentStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateRegistrationAttachmentOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "CreateRegistrationAttachmentOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateRegistrationVersionInput = schema.new({
    id = id.from(_N, "CreateRegistrationVersionRequest"),
    type = "structure",
    members = {
        RegistrationId = schema.new({
            id = id.from(_N, "CreateRegistrationVersionInput", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RegistrationVersionStatusHistory = schema.new({
    id = id.from(_N, "RegistrationVersionStatusHistory"),
    type = "structure",
    members = {
        DraftTimestamp = schema.new({
            id = id.from(_N, "RegistrationVersionStatusHistory", "DraftTimestamp"),
            type = "timestamp",
            name = "DraftTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SubmittedTimestamp = schema.new({
            id = id.from(_N, "RegistrationVersionStatusHistory", "SubmittedTimestamp"),
            type = "timestamp",
            name = "SubmittedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        AwsReviewingTimestamp = schema.new({
            id = id.from(_N, "RegistrationVersionStatusHistory", "AwsReviewingTimestamp"),
            type = "timestamp",
            name = "AwsReviewingTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        ReviewingTimestamp = schema.new({
            id = id.from(_N, "RegistrationVersionStatusHistory", "ReviewingTimestamp"),
            type = "timestamp",
            name = "ReviewingTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        RequiresAuthenticationTimestamp = schema.new({
            id = id.from(_N, "RegistrationVersionStatusHistory", "RequiresAuthenticationTimestamp"),
            type = "timestamp",
            name = "RequiresAuthenticationTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        ApprovedTimestamp = schema.new({
            id = id.from(_N, "RegistrationVersionStatusHistory", "ApprovedTimestamp"),
            type = "timestamp",
            name = "ApprovedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        DiscardedTimestamp = schema.new({
            id = id.from(_N, "RegistrationVersionStatusHistory", "DiscardedTimestamp"),
            type = "timestamp",
            name = "DiscardedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        DeniedTimestamp = schema.new({
            id = id.from(_N, "RegistrationVersionStatusHistory", "DeniedTimestamp"),
            type = "timestamp",
            name = "DeniedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        RevokedTimestamp = schema.new({
            id = id.from(_N, "RegistrationVersionStatusHistory", "RevokedTimestamp"),
            type = "timestamp",
            name = "RevokedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        ArchivedTimestamp = schema.new({
            id = id.from(_N, "RegistrationVersionStatusHistory", "ArchivedTimestamp"),
            type = "timestamp",
            name = "ArchivedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.CreateRegistrationVersionOutput = schema.new({
    id = id.from(_N, "CreateRegistrationVersionResult"),
    type = "structure",
    members = {
        RegistrationArn = schema.new({
            id = id.from(_N, "CreateRegistrationVersionOutput", "RegistrationArn"),
            type = "string",
            name = "RegistrationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationId = schema.new({
            id = id.from(_N, "CreateRegistrationVersionOutput", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VersionNumber = schema.new({
            id = id.from(_N, "CreateRegistrationVersionOutput", "VersionNumber"),
            type = "long",
            name = "VersionNumber",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationVersionStatus = schema.new({
            id = id.from(_N, "CreateRegistrationVersionOutput", "RegistrationVersionStatus"),
            type = "string",
            name = "RegistrationVersionStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationVersionStatusHistory = schema.new({
            id = id.from(_N, "CreateRegistrationVersionOutput", "RegistrationVersionStatusHistory"),
            type = "structure",
            name = "RegistrationVersionStatusHistory",
            target_id = id.from(_N, "RegistrationVersionStatusHistory"),
            target = M.RegistrationVersionStatusHistory,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateVerifiedDestinationNumberInput = schema.new({
    id = id.from(_N, "CreateVerifiedDestinationNumberRequest"),
    type = "structure",
    members = {
        DestinationPhoneNumber = schema.new({
            id = id.from(_N, "CreateVerifiedDestinationNumberInput", "DestinationPhoneNumber"),
            type = "string",
            name = "DestinationPhoneNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RcsAgentId = schema.new({
            id = id.from(_N, "CreateVerifiedDestinationNumberInput", "RcsAgentId"),
            type = "string",
            name = "RcsAgentId",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateVerifiedDestinationNumberInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateVerifiedDestinationNumberInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateVerifiedDestinationNumberOutput = schema.new({
    id = id.from(_N, "CreateVerifiedDestinationNumberResult"),
    type = "structure",
    members = {
        VerifiedDestinationNumberArn = schema.new({
            id = id.from(_N, "CreateVerifiedDestinationNumberOutput", "VerifiedDestinationNumberArn"),
            type = "string",
            name = "VerifiedDestinationNumberArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VerifiedDestinationNumberId = schema.new({
            id = id.from(_N, "CreateVerifiedDestinationNumberOutput", "VerifiedDestinationNumberId"),
            type = "string",
            name = "VerifiedDestinationNumberId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DestinationPhoneNumber = schema.new({
            id = id.from(_N, "CreateVerifiedDestinationNumberOutput", "DestinationPhoneNumber"),
            type = "string",
            name = "DestinationPhoneNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "CreateVerifiedDestinationNumberOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RcsAgentId = schema.new({
            id = id.from(_N, "CreateVerifiedDestinationNumberOutput", "RcsAgentId"),
            type = "string",
            name = "RcsAgentId",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateVerifiedDestinationNumberOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "CreateVerifiedDestinationNumberOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteAccountDefaultProtectConfigurationInput = schema.new({
    id = id.from(_N, "DeleteAccountDefaultProtectConfigurationRequest"),
    type = "structure",
})

M.DeleteAccountDefaultProtectConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteAccountDefaultProtectConfigurationResult"),
    type = "structure",
    members = {
        DefaultProtectConfigurationArn = schema.new({
            id = id.from(_N, "DeleteAccountDefaultProtectConfigurationOutput", "DefaultProtectConfigurationArn"),
            type = "string",
            name = "DefaultProtectConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DefaultProtectConfigurationId = schema.new({
            id = id.from(_N, "DeleteAccountDefaultProtectConfigurationOutput", "DefaultProtectConfigurationId"),
            type = "string",
            name = "DefaultProtectConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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
            },
        }),
    },
})

M.DeleteConfigurationSetOutput = schema.new({
    id = id.from(_N, "DeleteConfigurationSetResult"),
    type = "structure",
    members = {
        ConfigurationSetArn = schema.new({
            id = id.from(_N, "DeleteConfigurationSetOutput", "ConfigurationSetArn"),
            type = "string",
            name = "ConfigurationSetArn",
            target_id = prelude.String.id,
        }),
        ConfigurationSetName = schema.new({
            id = id.from(_N, "DeleteConfigurationSetOutput", "ConfigurationSetName"),
            type = "string",
            name = "ConfigurationSetName",
            target_id = prelude.String.id,
        }),
        EventDestinations = schema.new({
            id = id.from(_N, "DeleteConfigurationSetOutput", "EventDestinations"),
            type = "list",
            name = "EventDestinations",
            target_id = prelude.Document.id,
            list_member = M.EventDestination,
        }),
        DefaultMessageType = schema.new({
            id = id.from(_N, "DeleteConfigurationSetOutput", "DefaultMessageType"),
            type = "string",
            name = "DefaultMessageType",
            target_id = prelude.String.id,
        }),
        DefaultSenderId = schema.new({
            id = id.from(_N, "DeleteConfigurationSetOutput", "DefaultSenderId"),
            type = "string",
            name = "DefaultSenderId",
            target_id = prelude.String.id,
        }),
        DefaultMessageFeedbackEnabled = schema.new({
            id = id.from(_N, "DeleteConfigurationSetOutput", "DefaultMessageFeedbackEnabled"),
            type = "boolean",
            name = "DefaultMessageFeedbackEnabled",
            target_id = prelude.Boolean.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "DeleteConfigurationSetOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DeleteDefaultMessageTypeInput = schema.new({
    id = id.from(_N, "DeleteDefaultMessageTypeRequest"),
    type = "structure",
    members = {
        ConfigurationSetName = schema.new({
            id = id.from(_N, "DeleteDefaultMessageTypeInput", "ConfigurationSetName"),
            type = "string",
            name = "ConfigurationSetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteDefaultMessageTypeOutput = schema.new({
    id = id.from(_N, "DeleteDefaultMessageTypeResult"),
    type = "structure",
    members = {
        ConfigurationSetArn = schema.new({
            id = id.from(_N, "DeleteDefaultMessageTypeOutput", "ConfigurationSetArn"),
            type = "string",
            name = "ConfigurationSetArn",
            target_id = prelude.String.id,
        }),
        ConfigurationSetName = schema.new({
            id = id.from(_N, "DeleteDefaultMessageTypeOutput", "ConfigurationSetName"),
            type = "string",
            name = "ConfigurationSetName",
            target_id = prelude.String.id,
        }),
        MessageType = schema.new({
            id = id.from(_N, "DeleteDefaultMessageTypeOutput", "MessageType"),
            type = "string",
            name = "MessageType",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteDefaultSenderIdInput = schema.new({
    id = id.from(_N, "DeleteDefaultSenderIdRequest"),
    type = "structure",
    members = {
        ConfigurationSetName = schema.new({
            id = id.from(_N, "DeleteDefaultSenderIdInput", "ConfigurationSetName"),
            type = "string",
            name = "ConfigurationSetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteDefaultSenderIdOutput = schema.new({
    id = id.from(_N, "DeleteDefaultSenderIdResult"),
    type = "structure",
    members = {
        ConfigurationSetArn = schema.new({
            id = id.from(_N, "DeleteDefaultSenderIdOutput", "ConfigurationSetArn"),
            type = "string",
            name = "ConfigurationSetArn",
            target_id = prelude.String.id,
        }),
        ConfigurationSetName = schema.new({
            id = id.from(_N, "DeleteDefaultSenderIdOutput", "ConfigurationSetName"),
            type = "string",
            name = "ConfigurationSetName",
            target_id = prelude.String.id,
        }),
        SenderId = schema.new({
            id = id.from(_N, "DeleteDefaultSenderIdOutput", "SenderId"),
            type = "string",
            name = "SenderId",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteEventDestinationInput = schema.new({
    id = id.from(_N, "DeleteEventDestinationRequest"),
    type = "structure",
    members = {
        ConfigurationSetName = schema.new({
            id = id.from(_N, "DeleteEventDestinationInput", "ConfigurationSetName"),
            type = "string",
            name = "ConfigurationSetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EventDestinationName = schema.new({
            id = id.from(_N, "DeleteEventDestinationInput", "EventDestinationName"),
            type = "string",
            name = "EventDestinationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteEventDestinationOutput = schema.new({
    id = id.from(_N, "DeleteEventDestinationResult"),
    type = "structure",
    members = {
        ConfigurationSetArn = schema.new({
            id = id.from(_N, "DeleteEventDestinationOutput", "ConfigurationSetArn"),
            type = "string",
            name = "ConfigurationSetArn",
            target_id = prelude.String.id,
        }),
        ConfigurationSetName = schema.new({
            id = id.from(_N, "DeleteEventDestinationOutput", "ConfigurationSetName"),
            type = "string",
            name = "ConfigurationSetName",
            target_id = prelude.String.id,
        }),
        EventDestination = schema.new({
            id = id.from(_N, "DeleteEventDestinationOutput", "EventDestination"),
            type = "structure",
            name = "EventDestination",
            target_id = id.from(_N, "EventDestination"),
            target = M.EventDestination,
        }),
    },
})

M.DeleteKeywordInput = schema.new({
    id = id.from(_N, "DeleteKeywordRequest"),
    type = "structure",
    members = {
        OriginationIdentity = schema.new({
            id = id.from(_N, "DeleteKeywordInput", "OriginationIdentity"),
            type = "string",
            name = "OriginationIdentity",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Keyword = schema.new({
            id = id.from(_N, "DeleteKeywordInput", "Keyword"),
            type = "string",
            name = "Keyword",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteKeywordOutput = schema.new({
    id = id.from(_N, "DeleteKeywordResult"),
    type = "structure",
    members = {
        OriginationIdentityArn = schema.new({
            id = id.from(_N, "DeleteKeywordOutput", "OriginationIdentityArn"),
            type = "string",
            name = "OriginationIdentityArn",
            target_id = prelude.String.id,
        }),
        OriginationIdentity = schema.new({
            id = id.from(_N, "DeleteKeywordOutput", "OriginationIdentity"),
            type = "string",
            name = "OriginationIdentity",
            target_id = prelude.String.id,
        }),
        Keyword = schema.new({
            id = id.from(_N, "DeleteKeywordOutput", "Keyword"),
            type = "string",
            name = "Keyword",
            target_id = prelude.String.id,
        }),
        KeywordMessage = schema.new({
            id = id.from(_N, "DeleteKeywordOutput", "KeywordMessage"),
            type = "string",
            name = "KeywordMessage",
            target_id = prelude.String.id,
        }),
        KeywordAction = schema.new({
            id = id.from(_N, "DeleteKeywordOutput", "KeywordAction"),
            type = "string",
            name = "KeywordAction",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteMediaMessageSpendLimitOverrideInput = schema.new({
    id = id.from(_N, "DeleteMediaMessageSpendLimitOverrideRequest"),
    type = "structure",
})

M.DeleteMediaMessageSpendLimitOverrideOutput = schema.new({
    id = id.from(_N, "DeleteMediaMessageSpendLimitOverrideResult"),
    type = "structure",
    members = {
        MonthlyLimit = schema.new({
            id = id.from(_N, "DeleteMediaMessageSpendLimitOverrideOutput", "MonthlyLimit"),
            type = "long",
            name = "MonthlyLimit",
            target_id = prelude.Long.id,
        }),
    },
})

M.DeleteNotifyConfigurationInput = schema.new({
    id = id.from(_N, "DeleteNotifyConfigurationRequest"),
    type = "structure",
    members = {
        NotifyConfigurationId = schema.new({
            id = id.from(_N, "DeleteNotifyConfigurationInput", "NotifyConfigurationId"),
            type = "string",
            name = "NotifyConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteNotifyConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteNotifyConfigurationResult"),
    type = "structure",
    members = {
        NotifyConfigurationArn = schema.new({
            id = id.from(_N, "DeleteNotifyConfigurationOutput", "NotifyConfigurationArn"),
            type = "string",
            name = "NotifyConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NotifyConfigurationId = schema.new({
            id = id.from(_N, "DeleteNotifyConfigurationOutput", "NotifyConfigurationId"),
            type = "string",
            name = "NotifyConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DisplayName = schema.new({
            id = id.from(_N, "DeleteNotifyConfigurationOutput", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UseCase = schema.new({
            id = id.from(_N, "DeleteNotifyConfigurationOutput", "UseCase"),
            type = "string",
            name = "UseCase",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DefaultTemplateId = schema.new({
            id = id.from(_N, "DeleteNotifyConfigurationOutput", "DefaultTemplateId"),
            type = "string",
            name = "DefaultTemplateId",
            target_id = prelude.String.id,
        }),
        PoolId = schema.new({
            id = id.from(_N, "DeleteNotifyConfigurationOutput", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
        }),
        EnabledCountries = schema.new({
            id = id.from(_N, "DeleteNotifyConfigurationOutput", "EnabledCountries"),
            type = "list",
            name = "EnabledCountries",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        EnabledChannels = schema.new({
            id = id.from(_N, "DeleteNotifyConfigurationOutput", "EnabledChannels"),
            type = "list",
            name = "EnabledChannels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tier = schema.new({
            id = id.from(_N, "DeleteNotifyConfigurationOutput", "Tier"),
            type = "string",
            name = "Tier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TierUpgradeStatus = schema.new({
            id = id.from(_N, "DeleteNotifyConfigurationOutput", "TierUpgradeStatus"),
            type = "string",
            name = "TierUpgradeStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "DeleteNotifyConfigurationOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RejectionReason = schema.new({
            id = id.from(_N, "DeleteNotifyConfigurationOutput", "RejectionReason"),
            type = "string",
            name = "RejectionReason",
            target_id = prelude.String.id,
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "DeleteNotifyConfigurationOutput", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "DeleteNotifyConfigurationOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteNotifyMessageSpendLimitOverrideInput = schema.new({
    id = id.from(_N, "DeleteNotifyMessageSpendLimitOverrideRequest"),
    type = "structure",
})

M.DeleteNotifyMessageSpendLimitOverrideOutput = schema.new({
    id = id.from(_N, "DeleteNotifyMessageSpendLimitOverrideResult"),
    type = "structure",
    members = {
        MonthlyLimit = schema.new({
            id = id.from(_N, "DeleteNotifyMessageSpendLimitOverrideOutput", "MonthlyLimit"),
            type = "long",
            name = "MonthlyLimit",
            target_id = prelude.Long.id,
        }),
    },
})

M.DeleteOptedOutNumberInput = schema.new({
    id = id.from(_N, "DeleteOptedOutNumberRequest"),
    type = "structure",
    members = {
        OptOutListName = schema.new({
            id = id.from(_N, "DeleteOptedOutNumberInput", "OptOutListName"),
            type = "string",
            name = "OptOutListName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OptedOutNumber = schema.new({
            id = id.from(_N, "DeleteOptedOutNumberInput", "OptedOutNumber"),
            type = "string",
            name = "OptedOutNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteOptedOutNumberOutput = schema.new({
    id = id.from(_N, "DeleteOptedOutNumberResult"),
    type = "structure",
    members = {
        OptOutListArn = schema.new({
            id = id.from(_N, "DeleteOptedOutNumberOutput", "OptOutListArn"),
            type = "string",
            name = "OptOutListArn",
            target_id = prelude.String.id,
        }),
        OptOutListName = schema.new({
            id = id.from(_N, "DeleteOptedOutNumberOutput", "OptOutListName"),
            type = "string",
            name = "OptOutListName",
            target_id = prelude.String.id,
        }),
        OptedOutNumber = schema.new({
            id = id.from(_N, "DeleteOptedOutNumberOutput", "OptedOutNumber"),
            type = "string",
            name = "OptedOutNumber",
            target_id = prelude.String.id,
        }),
        OptedOutTimestamp = schema.new({
            id = id.from(_N, "DeleteOptedOutNumberOutput", "OptedOutTimestamp"),
            type = "timestamp",
            name = "OptedOutTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        EndUserOptedOut = schema.new({
            id = id.from(_N, "DeleteOptedOutNumberOutput", "EndUserOptedOut"),
            type = "boolean",
            name = "EndUserOptedOut",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DeleteOptOutListInput = schema.new({
    id = id.from(_N, "DeleteOptOutListRequest"),
    type = "structure",
    members = {
        OptOutListName = schema.new({
            id = id.from(_N, "DeleteOptOutListInput", "OptOutListName"),
            type = "string",
            name = "OptOutListName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteOptOutListOutput = schema.new({
    id = id.from(_N, "DeleteOptOutListResult"),
    type = "structure",
    members = {
        OptOutListArn = schema.new({
            id = id.from(_N, "DeleteOptOutListOutput", "OptOutListArn"),
            type = "string",
            name = "OptOutListArn",
            target_id = prelude.String.id,
        }),
        OptOutListName = schema.new({
            id = id.from(_N, "DeleteOptOutListOutput", "OptOutListName"),
            type = "string",
            name = "OptOutListName",
            target_id = prelude.String.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "DeleteOptOutListOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DeletePoolInput = schema.new({
    id = id.from(_N, "DeletePoolRequest"),
    type = "structure",
    members = {
        PoolId = schema.new({
            id = id.from(_N, "DeletePoolInput", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeletePoolOutput = schema.new({
    id = id.from(_N, "DeletePoolResult"),
    type = "structure",
    members = {
        PoolArn = schema.new({
            id = id.from(_N, "DeletePoolOutput", "PoolArn"),
            type = "string",
            name = "PoolArn",
            target_id = prelude.String.id,
        }),
        PoolId = schema.new({
            id = id.from(_N, "DeletePoolOutput", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DeletePoolOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        MessageType = schema.new({
            id = id.from(_N, "DeletePoolOutput", "MessageType"),
            type = "string",
            name = "MessageType",
            target_id = prelude.String.id,
        }),
        TwoWayEnabled = schema.new({
            id = id.from(_N, "DeletePoolOutput", "TwoWayEnabled"),
            type = "boolean",
            name = "TwoWayEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        TwoWayChannelArn = schema.new({
            id = id.from(_N, "DeletePoolOutput", "TwoWayChannelArn"),
            type = "string",
            name = "TwoWayChannelArn",
            target_id = prelude.String.id,
        }),
        TwoWayChannelRole = schema.new({
            id = id.from(_N, "DeletePoolOutput", "TwoWayChannelRole"),
            type = "string",
            name = "TwoWayChannelRole",
            target_id = prelude.String.id,
        }),
        SelfManagedOptOutsEnabled = schema.new({
            id = id.from(_N, "DeletePoolOutput", "SelfManagedOptOutsEnabled"),
            type = "boolean",
            name = "SelfManagedOptOutsEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        OptOutListName = schema.new({
            id = id.from(_N, "DeletePoolOutput", "OptOutListName"),
            type = "string",
            name = "OptOutListName",
            target_id = prelude.String.id,
        }),
        SharedRoutesEnabled = schema.new({
            id = id.from(_N, "DeletePoolOutput", "SharedRoutesEnabled"),
            type = "boolean",
            name = "SharedRoutesEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "DeletePoolOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DeleteProtectConfigurationInput = schema.new({
    id = id.from(_N, "DeleteProtectConfigurationRequest"),
    type = "structure",
    members = {
        ProtectConfigurationId = schema.new({
            id = id.from(_N, "DeleteProtectConfigurationInput", "ProtectConfigurationId"),
            type = "string",
            name = "ProtectConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteProtectConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteProtectConfigurationResult"),
    type = "structure",
    members = {
        ProtectConfigurationArn = schema.new({
            id = id.from(_N, "DeleteProtectConfigurationOutput", "ProtectConfigurationArn"),
            type = "string",
            name = "ProtectConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProtectConfigurationId = schema.new({
            id = id.from(_N, "DeleteProtectConfigurationOutput", "ProtectConfigurationId"),
            type = "string",
            name = "ProtectConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "DeleteProtectConfigurationOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccountDefault = schema.new({
            id = id.from(_N, "DeleteProtectConfigurationOutput", "AccountDefault"),
            type = "boolean",
            name = "AccountDefault",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "DeleteProtectConfigurationOutput", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DeleteProtectConfigurationRuleSetNumberOverrideInput = schema.new({
    id = id.from(_N, "DeleteProtectConfigurationRuleSetNumberOverrideRequest"),
    type = "structure",
    members = {
        ProtectConfigurationId = schema.new({
            id = id.from(_N, "DeleteProtectConfigurationRuleSetNumberOverrideInput", "ProtectConfigurationId"),
            type = "string",
            name = "ProtectConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DestinationPhoneNumber = schema.new({
            id = id.from(_N, "DeleteProtectConfigurationRuleSetNumberOverrideInput", "DestinationPhoneNumber"),
            type = "string",
            name = "DestinationPhoneNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteProtectConfigurationRuleSetNumberOverrideOutput = schema.new({
    id = id.from(_N, "DeleteProtectConfigurationRuleSetNumberOverrideResult"),
    type = "structure",
    members = {
        ProtectConfigurationArn = schema.new({
            id = id.from(_N, "DeleteProtectConfigurationRuleSetNumberOverrideOutput", "ProtectConfigurationArn"),
            type = "string",
            name = "ProtectConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProtectConfigurationId = schema.new({
            id = id.from(_N, "DeleteProtectConfigurationRuleSetNumberOverrideOutput", "ProtectConfigurationId"),
            type = "string",
            name = "ProtectConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DestinationPhoneNumber = schema.new({
            id = id.from(_N, "DeleteProtectConfigurationRuleSetNumberOverrideOutput", "DestinationPhoneNumber"),
            type = "string",
            name = "DestinationPhoneNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "DeleteProtectConfigurationRuleSetNumberOverrideOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Action = schema.new({
            id = id.from(_N, "DeleteProtectConfigurationRuleSetNumberOverrideOutput", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsoCountryCode = schema.new({
            id = id.from(_N, "DeleteProtectConfigurationRuleSetNumberOverrideOutput", "IsoCountryCode"),
            type = "string",
            name = "IsoCountryCode",
            target_id = prelude.String.id,
        }),
        ExpirationTimestamp = schema.new({
            id = id.from(_N, "DeleteProtectConfigurationRuleSetNumberOverrideOutput", "ExpirationTimestamp"),
            type = "timestamp",
            name = "ExpirationTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DeleteRcsAgentInput = schema.new({
    id = id.from(_N, "DeleteRcsAgentRequest"),
    type = "structure",
    members = {
        RcsAgentId = schema.new({
            id = id.from(_N, "DeleteRcsAgentInput", "RcsAgentId"),
            type = "string",
            name = "RcsAgentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRcsAgentOutput = schema.new({
    id = id.from(_N, "DeleteRcsAgentResult"),
    type = "structure",
    members = {
        RcsAgentArn = schema.new({
            id = id.from(_N, "DeleteRcsAgentOutput", "RcsAgentArn"),
            type = "string",
            name = "RcsAgentArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RcsAgentId = schema.new({
            id = id.from(_N, "DeleteRcsAgentOutput", "RcsAgentId"),
            type = "string",
            name = "RcsAgentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "DeleteRcsAgentOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "DeleteRcsAgentOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "DeleteRcsAgentOutput", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        OptOutListName = schema.new({
            id = id.from(_N, "DeleteRcsAgentOutput", "OptOutListName"),
            type = "string",
            name = "OptOutListName",
            target_id = prelude.String.id,
        }),
        SelfManagedOptOutsEnabled = schema.new({
            id = id.from(_N, "DeleteRcsAgentOutput", "SelfManagedOptOutsEnabled"),
            type = "boolean",
            name = "SelfManagedOptOutsEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        TwoWayChannelArn = schema.new({
            id = id.from(_N, "DeleteRcsAgentOutput", "TwoWayChannelArn"),
            type = "string",
            name = "TwoWayChannelArn",
            target_id = prelude.String.id,
        }),
        TwoWayChannelRole = schema.new({
            id = id.from(_N, "DeleteRcsAgentOutput", "TwoWayChannelRole"),
            type = "string",
            name = "TwoWayChannelRole",
            target_id = prelude.String.id,
        }),
        TwoWayEnabled = schema.new({
            id = id.from(_N, "DeleteRcsAgentOutput", "TwoWayEnabled"),
            type = "boolean",
            name = "TwoWayEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DeleteRegistrationInput = schema.new({
    id = id.from(_N, "DeleteRegistrationRequest"),
    type = "structure",
    members = {
        RegistrationId = schema.new({
            id = id.from(_N, "DeleteRegistrationInput", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRegistrationOutput = schema.new({
    id = id.from(_N, "DeleteRegistrationResult"),
    type = "structure",
    members = {
        RegistrationArn = schema.new({
            id = id.from(_N, "DeleteRegistrationOutput", "RegistrationArn"),
            type = "string",
            name = "RegistrationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationId = schema.new({
            id = id.from(_N, "DeleteRegistrationOutput", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationType = schema.new({
            id = id.from(_N, "DeleteRegistrationOutput", "RegistrationType"),
            type = "string",
            name = "RegistrationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationStatus = schema.new({
            id = id.from(_N, "DeleteRegistrationOutput", "RegistrationStatus"),
            type = "string",
            name = "RegistrationStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CurrentVersionNumber = schema.new({
            id = id.from(_N, "DeleteRegistrationOutput", "CurrentVersionNumber"),
            type = "long",
            name = "CurrentVersionNumber",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ApprovedVersionNumber = schema.new({
            id = id.from(_N, "DeleteRegistrationOutput", "ApprovedVersionNumber"),
            type = "long",
            name = "ApprovedVersionNumber",
            target_id = prelude.Long.id,
        }),
        LatestDeniedVersionNumber = schema.new({
            id = id.from(_N, "DeleteRegistrationOutput", "LatestDeniedVersionNumber"),
            type = "long",
            name = "LatestDeniedVersionNumber",
            target_id = prelude.Long.id,
        }),
        AdditionalAttributes = schema.new({
            id = id.from(_N, "DeleteRegistrationOutput", "AdditionalAttributes"),
            type = "map",
            name = "AdditionalAttributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "DeleteRegistrationOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRegistrationAttachmentInput = schema.new({
    id = id.from(_N, "DeleteRegistrationAttachmentRequest"),
    type = "structure",
    members = {
        RegistrationAttachmentId = schema.new({
            id = id.from(_N, "DeleteRegistrationAttachmentInput", "RegistrationAttachmentId"),
            type = "string",
            name = "RegistrationAttachmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRegistrationAttachmentOutput = schema.new({
    id = id.from(_N, "DeleteRegistrationAttachmentResult"),
    type = "structure",
    members = {
        RegistrationAttachmentArn = schema.new({
            id = id.from(_N, "DeleteRegistrationAttachmentOutput", "RegistrationAttachmentArn"),
            type = "string",
            name = "RegistrationAttachmentArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationAttachmentId = schema.new({
            id = id.from(_N, "DeleteRegistrationAttachmentOutput", "RegistrationAttachmentId"),
            type = "string",
            name = "RegistrationAttachmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AttachmentStatus = schema.new({
            id = id.from(_N, "DeleteRegistrationAttachmentOutput", "AttachmentStatus"),
            type = "string",
            name = "AttachmentStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AttachmentUploadErrorReason = schema.new({
            id = id.from(_N, "DeleteRegistrationAttachmentOutput", "AttachmentUploadErrorReason"),
            type = "string",
            name = "AttachmentUploadErrorReason",
            target_id = prelude.String.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "DeleteRegistrationAttachmentOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRegistrationFieldValueInput = schema.new({
    id = id.from(_N, "DeleteRegistrationFieldValueRequest"),
    type = "structure",
    members = {
        RegistrationId = schema.new({
            id = id.from(_N, "DeleteRegistrationFieldValueInput", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FieldPath = schema.new({
            id = id.from(_N, "DeleteRegistrationFieldValueInput", "FieldPath"),
            type = "string",
            name = "FieldPath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRegistrationFieldValueOutput = schema.new({
    id = id.from(_N, "DeleteRegistrationFieldValueResult"),
    type = "structure",
    members = {
        RegistrationArn = schema.new({
            id = id.from(_N, "DeleteRegistrationFieldValueOutput", "RegistrationArn"),
            type = "string",
            name = "RegistrationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationId = schema.new({
            id = id.from(_N, "DeleteRegistrationFieldValueOutput", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VersionNumber = schema.new({
            id = id.from(_N, "DeleteRegistrationFieldValueOutput", "VersionNumber"),
            type = "long",
            name = "VersionNumber",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FieldPath = schema.new({
            id = id.from(_N, "DeleteRegistrationFieldValueOutput", "FieldPath"),
            type = "string",
            name = "FieldPath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SelectChoices = schema.new({
            id = id.from(_N, "DeleteRegistrationFieldValueOutput", "SelectChoices"),
            type = "list",
            name = "SelectChoices",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        TextValue = schema.new({
            id = id.from(_N, "DeleteRegistrationFieldValueOutput", "TextValue"),
            type = "string",
            name = "TextValue",
            target_id = prelude.String.id,
        }),
        RegistrationAttachmentId = schema.new({
            id = id.from(_N, "DeleteRegistrationFieldValueOutput", "RegistrationAttachmentId"),
            type = "string",
            name = "RegistrationAttachmentId",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteResourcePolicyInput = schema.new({
    id = id.from(_N, "DeleteResourcePolicyRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "DeleteResourcePolicyInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteResourcePolicyOutput = schema.new({
    id = id.from(_N, "DeleteResourcePolicyResult"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "DeleteResourcePolicyOutput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        Policy = schema.new({
            id = id.from(_N, "DeleteResourcePolicyOutput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "DeleteResourcePolicyOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DeleteTextMessageSpendLimitOverrideInput = schema.new({
    id = id.from(_N, "DeleteTextMessageSpendLimitOverrideRequest"),
    type = "structure",
})

M.DeleteTextMessageSpendLimitOverrideOutput = schema.new({
    id = id.from(_N, "DeleteTextMessageSpendLimitOverrideResult"),
    type = "structure",
    members = {
        MonthlyLimit = schema.new({
            id = id.from(_N, "DeleteTextMessageSpendLimitOverrideOutput", "MonthlyLimit"),
            type = "long",
            name = "MonthlyLimit",
            target_id = prelude.Long.id,
        }),
    },
})

M.DeleteVerifiedDestinationNumberInput = schema.new({
    id = id.from(_N, "DeleteVerifiedDestinationNumberRequest"),
    type = "structure",
    members = {
        VerifiedDestinationNumberId = schema.new({
            id = id.from(_N, "DeleteVerifiedDestinationNumberInput", "VerifiedDestinationNumberId"),
            type = "string",
            name = "VerifiedDestinationNumberId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteVerifiedDestinationNumberOutput = schema.new({
    id = id.from(_N, "DeleteVerifiedDestinationNumberResult"),
    type = "structure",
    members = {
        VerifiedDestinationNumberArn = schema.new({
            id = id.from(_N, "DeleteVerifiedDestinationNumberOutput", "VerifiedDestinationNumberArn"),
            type = "string",
            name = "VerifiedDestinationNumberArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VerifiedDestinationNumberId = schema.new({
            id = id.from(_N, "DeleteVerifiedDestinationNumberOutput", "VerifiedDestinationNumberId"),
            type = "string",
            name = "VerifiedDestinationNumberId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DestinationPhoneNumber = schema.new({
            id = id.from(_N, "DeleteVerifiedDestinationNumberOutput", "DestinationPhoneNumber"),
            type = "string",
            name = "DestinationPhoneNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "DeleteVerifiedDestinationNumberOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteVoiceMessageSpendLimitOverrideInput = schema.new({
    id = id.from(_N, "DeleteVoiceMessageSpendLimitOverrideRequest"),
    type = "structure",
})

M.DeleteVoiceMessageSpendLimitOverrideOutput = schema.new({
    id = id.from(_N, "DeleteVoiceMessageSpendLimitOverrideResult"),
    type = "structure",
    members = {
        MonthlyLimit = schema.new({
            id = id.from(_N, "DeleteVoiceMessageSpendLimitOverrideOutput", "MonthlyLimit"),
            type = "long",
            name = "MonthlyLimit",
            target_id = prelude.Long.id,
        }),
    },
})

M.DescribeAccountAttributesInput = schema.new({
    id = id.from(_N, "DescribeAccountAttributesRequest"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "DescribeAccountAttributesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeAccountAttributesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DescribeAccountAttributesOutput = schema.new({
    id = id.from(_N, "DescribeAccountAttributesResult"),
    type = "structure",
    members = {
        AccountAttributes = schema.new({
            id = id.from(_N, "DescribeAccountAttributesOutput", "AccountAttributes"),
            type = "list",
            name = "AccountAttributes",
            target_id = prelude.Document.id,
            list_member = M.AccountAttribute,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeAccountAttributesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeAccountLimitsInput = schema.new({
    id = id.from(_N, "DescribeAccountLimitsRequest"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "DescribeAccountLimitsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeAccountLimitsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DescribeAccountLimitsOutput = schema.new({
    id = id.from(_N, "DescribeAccountLimitsResult"),
    type = "structure",
    members = {
        AccountLimits = schema.new({
            id = id.from(_N, "DescribeAccountLimitsOutput", "AccountLimits"),
            type = "list",
            name = "AccountLimits",
            target_id = prelude.Document.id,
            list_member = M.AccountLimit,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeAccountLimitsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeConfigurationSetsInput = schema.new({
    id = id.from(_N, "DescribeConfigurationSetsRequest"),
    type = "structure",
    members = {
        ConfigurationSetNames = schema.new({
            id = id.from(_N, "DescribeConfigurationSetsInput", "ConfigurationSetNames"),
            type = "list",
            name = "ConfigurationSetNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeConfigurationSetsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.ConfigurationSetFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeConfigurationSetsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeConfigurationSetsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DescribeConfigurationSetsOutput = schema.new({
    id = id.from(_N, "DescribeConfigurationSetsResult"),
    type = "structure",
    members = {
        ConfigurationSets = schema.new({
            id = id.from(_N, "DescribeConfigurationSetsOutput", "ConfigurationSets"),
            type = "list",
            name = "ConfigurationSets",
            target_id = prelude.Document.id,
            list_member = M.ConfigurationSetInformation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeConfigurationSetsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.KeywordFilter = schema.new({
    id = id.from(_N, "KeywordFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "KeywordFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "KeywordFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeKeywordsInput = schema.new({
    id = id.from(_N, "DescribeKeywordsRequest"),
    type = "structure",
    members = {
        OriginationIdentity = schema.new({
            id = id.from(_N, "DescribeKeywordsInput", "OriginationIdentity"),
            type = "string",
            name = "OriginationIdentity",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Keywords = schema.new({
            id = id.from(_N, "DescribeKeywordsInput", "Keywords"),
            type = "list",
            name = "Keywords",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeKeywordsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.KeywordFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeKeywordsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeKeywordsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.KeywordInformation = schema.new({
    id = id.from(_N, "KeywordInformation"),
    type = "structure",
    members = {
        Keyword = schema.new({
            id = id.from(_N, "KeywordInformation", "Keyword"),
            type = "string",
            name = "Keyword",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KeywordMessage = schema.new({
            id = id.from(_N, "KeywordInformation", "KeywordMessage"),
            type = "string",
            name = "KeywordMessage",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KeywordAction = schema.new({
            id = id.from(_N, "KeywordInformation", "KeywordAction"),
            type = "string",
            name = "KeywordAction",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeKeywordsOutput = schema.new({
    id = id.from(_N, "DescribeKeywordsResult"),
    type = "structure",
    members = {
        OriginationIdentityArn = schema.new({
            id = id.from(_N, "DescribeKeywordsOutput", "OriginationIdentityArn"),
            type = "string",
            name = "OriginationIdentityArn",
            target_id = prelude.String.id,
        }),
        OriginationIdentity = schema.new({
            id = id.from(_N, "DescribeKeywordsOutput", "OriginationIdentity"),
            type = "string",
            name = "OriginationIdentity",
            target_id = prelude.String.id,
        }),
        Keywords = schema.new({
            id = id.from(_N, "DescribeKeywordsOutput", "Keywords"),
            type = "list",
            name = "Keywords",
            target_id = prelude.Document.id,
            list_member = M.KeywordInformation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeKeywordsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.NotifyConfigurationFilter = schema.new({
    id = id.from(_N, "NotifyConfigurationFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "NotifyConfigurationFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "NotifyConfigurationFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeNotifyConfigurationsInput = schema.new({
    id = id.from(_N, "DescribeNotifyConfigurationsRequest"),
    type = "structure",
    members = {
        NotifyConfigurationIds = schema.new({
            id = id.from(_N, "DescribeNotifyConfigurationsInput", "NotifyConfigurationIds"),
            type = "list",
            name = "NotifyConfigurationIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeNotifyConfigurationsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.NotifyConfigurationFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeNotifyConfigurationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeNotifyConfigurationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.NotifyConfigurationInformation = schema.new({
    id = id.from(_N, "NotifyConfigurationInformation"),
    type = "structure",
    members = {
        NotifyConfigurationArn = schema.new({
            id = id.from(_N, "NotifyConfigurationInformation", "NotifyConfigurationArn"),
            type = "string",
            name = "NotifyConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NotifyConfigurationId = schema.new({
            id = id.from(_N, "NotifyConfigurationInformation", "NotifyConfigurationId"),
            type = "string",
            name = "NotifyConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DisplayName = schema.new({
            id = id.from(_N, "NotifyConfigurationInformation", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UseCase = schema.new({
            id = id.from(_N, "NotifyConfigurationInformation", "UseCase"),
            type = "string",
            name = "UseCase",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DefaultTemplateId = schema.new({
            id = id.from(_N, "NotifyConfigurationInformation", "DefaultTemplateId"),
            type = "string",
            name = "DefaultTemplateId",
            target_id = prelude.String.id,
        }),
        PoolId = schema.new({
            id = id.from(_N, "NotifyConfigurationInformation", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
        }),
        EnabledCountries = schema.new({
            id = id.from(_N, "NotifyConfigurationInformation", "EnabledCountries"),
            type = "list",
            name = "EnabledCountries",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        EnabledChannels = schema.new({
            id = id.from(_N, "NotifyConfigurationInformation", "EnabledChannels"),
            type = "list",
            name = "EnabledChannels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tier = schema.new({
            id = id.from(_N, "NotifyConfigurationInformation", "Tier"),
            type = "string",
            name = "Tier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TierUpgradeStatus = schema.new({
            id = id.from(_N, "NotifyConfigurationInformation", "TierUpgradeStatus"),
            type = "string",
            name = "TierUpgradeStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "NotifyConfigurationInformation", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RejectionReason = schema.new({
            id = id.from(_N, "NotifyConfigurationInformation", "RejectionReason"),
            type = "string",
            name = "RejectionReason",
            target_id = prelude.String.id,
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "NotifyConfigurationInformation", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "NotifyConfigurationInformation", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeNotifyConfigurationsOutput = schema.new({
    id = id.from(_N, "DescribeNotifyConfigurationsResult"),
    type = "structure",
    members = {
        NotifyConfigurations = schema.new({
            id = id.from(_N, "DescribeNotifyConfigurationsOutput", "NotifyConfigurations"),
            type = "list",
            name = "NotifyConfigurations",
            target_id = prelude.Document.id,
            list_member = M.NotifyConfigurationInformation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeNotifyConfigurationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.NotifyTemplateFilter = schema.new({
    id = id.from(_N, "NotifyTemplateFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "NotifyTemplateFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "NotifyTemplateFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeNotifyTemplatesInput = schema.new({
    id = id.from(_N, "DescribeNotifyTemplatesRequest"),
    type = "structure",
    members = {
        TemplateIds = schema.new({
            id = id.from(_N, "DescribeNotifyTemplatesInput", "TemplateIds"),
            type = "list",
            name = "TemplateIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeNotifyTemplatesInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.NotifyTemplateFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeNotifyTemplatesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeNotifyTemplatesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.TemplateVariableMetadata = schema.new({
    id = id.from(_N, "TemplateVariableMetadata"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "TemplateVariableMetadata", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Required = schema.new({
            id = id.from(_N, "TemplateVariableMetadata", "Required"),
            type = "boolean",
            name = "Required",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        Description = schema.new({
            id = id.from(_N, "TemplateVariableMetadata", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        MaxLength = schema.new({
            id = id.from(_N, "TemplateVariableMetadata", "MaxLength"),
            type = "integer",
            name = "MaxLength",
            target_id = prelude.Integer.id,
        }),
        MinValue = schema.new({
            id = id.from(_N, "TemplateVariableMetadata", "MinValue"),
            type = "integer",
            name = "MinValue",
            target_id = prelude.Integer.id,
        }),
        MaxValue = schema.new({
            id = id.from(_N, "TemplateVariableMetadata", "MaxValue"),
            type = "integer",
            name = "MaxValue",
            target_id = prelude.Integer.id,
        }),
        DefaultValue = schema.new({
            id = id.from(_N, "TemplateVariableMetadata", "DefaultValue"),
            type = "string",
            name = "DefaultValue",
            target_id = prelude.String.id,
        }),
        Pattern = schema.new({
            id = id.from(_N, "TemplateVariableMetadata", "Pattern"),
            type = "string",
            name = "Pattern",
            target_id = prelude.String.id,
        }),
        Sample = schema.new({
            id = id.from(_N, "TemplateVariableMetadata", "Sample"),
            type = "string",
            name = "Sample",
            target_id = prelude.String.id,
        }),
        Source = schema.new({
            id = id.from(_N, "TemplateVariableMetadata", "Source"),
            type = "string",
            name = "Source",
            target_id = prelude.String.id,
        }),
    },
})

M.NotifyTemplateInformation = schema.new({
    id = id.from(_N, "NotifyTemplateInformation"),
    type = "structure",
    members = {
        TemplateId = schema.new({
            id = id.from(_N, "NotifyTemplateInformation", "TemplateId"),
            type = "string",
            name = "TemplateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Version = schema.new({
            id = id.from(_N, "NotifyTemplateInformation", "Version"),
            type = "integer",
            name = "Version",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TemplateType = schema.new({
            id = id.from(_N, "NotifyTemplateInformation", "TemplateType"),
            type = "string",
            name = "TemplateType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Channels = schema.new({
            id = id.from(_N, "NotifyTemplateInformation", "Channels"),
            type = "list",
            name = "Channels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TierAccess = schema.new({
            id = id.from(_N, "NotifyTemplateInformation", "TierAccess"),
            type = "list",
            name = "TierAccess",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Status = schema.new({
            id = id.from(_N, "NotifyTemplateInformation", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        SupportedCountries = schema.new({
            id = id.from(_N, "NotifyTemplateInformation", "SupportedCountries"),
            type = "list",
            name = "SupportedCountries",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "NotifyTemplateInformation", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
        }),
        Content = schema.new({
            id = id.from(_N, "NotifyTemplateInformation", "Content"),
            type = "string",
            name = "Content",
            target_id = prelude.String.id,
        }),
        Variables = schema.new({
            id = id.from(_N, "NotifyTemplateInformation", "Variables"),
            type = "map",
            name = "Variables",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.TemplateVariableMetadata,
        }),
        SupportedVoiceIds = schema.new({
            id = id.from(_N, "NotifyTemplateInformation", "SupportedVoiceIds"),
            type = "list",
            name = "SupportedVoiceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "NotifyTemplateInformation", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeNotifyTemplatesOutput = schema.new({
    id = id.from(_N, "DescribeNotifyTemplatesResult"),
    type = "structure",
    members = {
        NotifyTemplates = schema.new({
            id = id.from(_N, "DescribeNotifyTemplatesOutput", "NotifyTemplates"),
            type = "list",
            name = "NotifyTemplates",
            target_id = prelude.Document.id,
            list_member = M.NotifyTemplateInformation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeNotifyTemplatesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.OptedOutFilter = schema.new({
    id = id.from(_N, "OptedOutFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "OptedOutFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "OptedOutFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeOptedOutNumbersInput = schema.new({
    id = id.from(_N, "DescribeOptedOutNumbersRequest"),
    type = "structure",
    members = {
        OptOutListName = schema.new({
            id = id.from(_N, "DescribeOptedOutNumbersInput", "OptOutListName"),
            type = "string",
            name = "OptOutListName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OptedOutNumbers = schema.new({
            id = id.from(_N, "DescribeOptedOutNumbersInput", "OptedOutNumbers"),
            type = "list",
            name = "OptedOutNumbers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeOptedOutNumbersInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.OptedOutFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeOptedOutNumbersInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeOptedOutNumbersInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.OptedOutNumberInformation = schema.new({
    id = id.from(_N, "OptedOutNumberInformation"),
    type = "structure",
    members = {
        OptedOutNumber = schema.new({
            id = id.from(_N, "OptedOutNumberInformation", "OptedOutNumber"),
            type = "string",
            name = "OptedOutNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OptedOutTimestamp = schema.new({
            id = id.from(_N, "OptedOutNumberInformation", "OptedOutTimestamp"),
            type = "timestamp",
            name = "OptedOutTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndUserOptedOut = schema.new({
            id = id.from(_N, "OptedOutNumberInformation", "EndUserOptedOut"),
            type = "boolean",
            name = "EndUserOptedOut",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DescribeOptedOutNumbersOutput = schema.new({
    id = id.from(_N, "DescribeOptedOutNumbersResult"),
    type = "structure",
    members = {
        OptOutListArn = schema.new({
            id = id.from(_N, "DescribeOptedOutNumbersOutput", "OptOutListArn"),
            type = "string",
            name = "OptOutListArn",
            target_id = prelude.String.id,
        }),
        OptOutListName = schema.new({
            id = id.from(_N, "DescribeOptedOutNumbersOutput", "OptOutListName"),
            type = "string",
            name = "OptOutListName",
            target_id = prelude.String.id,
        }),
        OptedOutNumbers = schema.new({
            id = id.from(_N, "DescribeOptedOutNumbersOutput", "OptedOutNumbers"),
            type = "list",
            name = "OptedOutNumbers",
            target_id = prelude.Document.id,
            list_member = M.OptedOutNumberInformation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeOptedOutNumbersOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeOptOutListsInput = schema.new({
    id = id.from(_N, "DescribeOptOutListsRequest"),
    type = "structure",
    members = {
        OptOutListNames = schema.new({
            id = id.from(_N, "DescribeOptOutListsInput", "OptOutListNames"),
            type = "list",
            name = "OptOutListNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeOptOutListsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeOptOutListsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        Owner = schema.new({
            id = id.from(_N, "DescribeOptOutListsInput", "Owner"),
            type = "string",
            name = "Owner",
            target_id = prelude.String.id,
        }),
    },
})

M.OptOutListInformation = schema.new({
    id = id.from(_N, "OptOutListInformation"),
    type = "structure",
    members = {
        OptOutListArn = schema.new({
            id = id.from(_N, "OptOutListInformation", "OptOutListArn"),
            type = "string",
            name = "OptOutListArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OptOutListName = schema.new({
            id = id.from(_N, "OptOutListInformation", "OptOutListName"),
            type = "string",
            name = "OptOutListName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "OptOutListInformation", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeOptOutListsOutput = schema.new({
    id = id.from(_N, "DescribeOptOutListsResult"),
    type = "structure",
    members = {
        OptOutLists = schema.new({
            id = id.from(_N, "DescribeOptOutListsOutput", "OptOutLists"),
            type = "list",
            name = "OptOutLists",
            target_id = prelude.Document.id,
            list_member = M.OptOutListInformation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeOptOutListsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PhoneNumberFilter = schema.new({
    id = id.from(_N, "PhoneNumberFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "PhoneNumberFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "PhoneNumberFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribePhoneNumbersInput = schema.new({
    id = id.from(_N, "DescribePhoneNumbersRequest"),
    type = "structure",
    members = {
        PhoneNumberIds = schema.new({
            id = id.from(_N, "DescribePhoneNumbersInput", "PhoneNumberIds"),
            type = "list",
            name = "PhoneNumberIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribePhoneNumbersInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.PhoneNumberFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribePhoneNumbersInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribePhoneNumbersInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        Owner = schema.new({
            id = id.from(_N, "DescribePhoneNumbersInput", "Owner"),
            type = "string",
            name = "Owner",
            target_id = prelude.String.id,
        }),
    },
})

M.PhoneNumberInformation = schema.new({
    id = id.from(_N, "PhoneNumberInformation"),
    type = "structure",
    members = {
        PhoneNumberArn = schema.new({
            id = id.from(_N, "PhoneNumberInformation", "PhoneNumberArn"),
            type = "string",
            name = "PhoneNumberArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PhoneNumberId = schema.new({
            id = id.from(_N, "PhoneNumberInformation", "PhoneNumberId"),
            type = "string",
            name = "PhoneNumberId",
            target_id = prelude.String.id,
        }),
        PhoneNumber = schema.new({
            id = id.from(_N, "PhoneNumberInformation", "PhoneNumber"),
            type = "string",
            name = "PhoneNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "PhoneNumberInformation", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsoCountryCode = schema.new({
            id = id.from(_N, "PhoneNumberInformation", "IsoCountryCode"),
            type = "string",
            name = "IsoCountryCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MessageType = schema.new({
            id = id.from(_N, "PhoneNumberInformation", "MessageType"),
            type = "string",
            name = "MessageType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NumberCapabilities = schema.new({
            id = id.from(_N, "PhoneNumberInformation", "NumberCapabilities"),
            type = "list",
            name = "NumberCapabilities",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NumberType = schema.new({
            id = id.from(_N, "PhoneNumberInformation", "NumberType"),
            type = "string",
            name = "NumberType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MonthlyLeasingPrice = schema.new({
            id = id.from(_N, "PhoneNumberInformation", "MonthlyLeasingPrice"),
            type = "string",
            name = "MonthlyLeasingPrice",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TwoWayEnabled = schema.new({
            id = id.from(_N, "PhoneNumberInformation", "TwoWayEnabled"),
            type = "boolean",
            name = "TwoWayEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        TwoWayChannelArn = schema.new({
            id = id.from(_N, "PhoneNumberInformation", "TwoWayChannelArn"),
            type = "string",
            name = "TwoWayChannelArn",
            target_id = prelude.String.id,
        }),
        TwoWayChannelRole = schema.new({
            id = id.from(_N, "PhoneNumberInformation", "TwoWayChannelRole"),
            type = "string",
            name = "TwoWayChannelRole",
            target_id = prelude.String.id,
        }),
        SelfManagedOptOutsEnabled = schema.new({
            id = id.from(_N, "PhoneNumberInformation", "SelfManagedOptOutsEnabled"),
            type = "boolean",
            name = "SelfManagedOptOutsEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        OptOutListName = schema.new({
            id = id.from(_N, "PhoneNumberInformation", "OptOutListName"),
            type = "string",
            name = "OptOutListName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InternationalSendingEnabled = schema.new({
            id = id.from(_N, "PhoneNumberInformation", "InternationalSendingEnabled"),
            type = "boolean",
            name = "InternationalSendingEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "PhoneNumberInformation", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        PoolId = schema.new({
            id = id.from(_N, "PhoneNumberInformation", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
        }),
        RegistrationId = schema.new({
            id = id.from(_N, "PhoneNumberInformation", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "PhoneNumberInformation", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribePhoneNumbersOutput = schema.new({
    id = id.from(_N, "DescribePhoneNumbersResult"),
    type = "structure",
    members = {
        PhoneNumbers = schema.new({
            id = id.from(_N, "DescribePhoneNumbersOutput", "PhoneNumbers"),
            type = "list",
            name = "PhoneNumbers",
            target_id = prelude.Document.id,
            list_member = M.PhoneNumberInformation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribePhoneNumbersOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PoolFilter = schema.new({
    id = id.from(_N, "PoolFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "PoolFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "PoolFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribePoolsInput = schema.new({
    id = id.from(_N, "DescribePoolsRequest"),
    type = "structure",
    members = {
        PoolIds = schema.new({
            id = id.from(_N, "DescribePoolsInput", "PoolIds"),
            type = "list",
            name = "PoolIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribePoolsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.PoolFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribePoolsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribePoolsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        Owner = schema.new({
            id = id.from(_N, "DescribePoolsInput", "Owner"),
            type = "string",
            name = "Owner",
            target_id = prelude.String.id,
        }),
    },
})

M.PoolInformation = schema.new({
    id = id.from(_N, "PoolInformation"),
    type = "structure",
    members = {
        PoolArn = schema.new({
            id = id.from(_N, "PoolInformation", "PoolArn"),
            type = "string",
            name = "PoolArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PoolId = schema.new({
            id = id.from(_N, "PoolInformation", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "PoolInformation", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MessageType = schema.new({
            id = id.from(_N, "PoolInformation", "MessageType"),
            type = "string",
            name = "MessageType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TwoWayEnabled = schema.new({
            id = id.from(_N, "PoolInformation", "TwoWayEnabled"),
            type = "boolean",
            name = "TwoWayEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        TwoWayChannelArn = schema.new({
            id = id.from(_N, "PoolInformation", "TwoWayChannelArn"),
            type = "string",
            name = "TwoWayChannelArn",
            target_id = prelude.String.id,
        }),
        TwoWayChannelRole = schema.new({
            id = id.from(_N, "PoolInformation", "TwoWayChannelRole"),
            type = "string",
            name = "TwoWayChannelRole",
            target_id = prelude.String.id,
        }),
        SelfManagedOptOutsEnabled = schema.new({
            id = id.from(_N, "PoolInformation", "SelfManagedOptOutsEnabled"),
            type = "boolean",
            name = "SelfManagedOptOutsEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        OptOutListName = schema.new({
            id = id.from(_N, "PoolInformation", "OptOutListName"),
            type = "string",
            name = "OptOutListName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SharedRoutesEnabled = schema.new({
            id = id.from(_N, "PoolInformation", "SharedRoutesEnabled"),
            type = "boolean",
            name = "SharedRoutesEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "PoolInformation", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "PoolInformation", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribePoolsOutput = schema.new({
    id = id.from(_N, "DescribePoolsResult"),
    type = "structure",
    members = {
        Pools = schema.new({
            id = id.from(_N, "DescribePoolsOutput", "Pools"),
            type = "list",
            name = "Pools",
            target_id = prelude.Document.id,
            list_member = M.PoolInformation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribePoolsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ProtectConfigurationFilter = schema.new({
    id = id.from(_N, "ProtectConfigurationFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ProtectConfigurationFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "ProtectConfigurationFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeProtectConfigurationsInput = schema.new({
    id = id.from(_N, "DescribeProtectConfigurationsRequest"),
    type = "structure",
    members = {
        ProtectConfigurationIds = schema.new({
            id = id.from(_N, "DescribeProtectConfigurationsInput", "ProtectConfigurationIds"),
            type = "list",
            name = "ProtectConfigurationIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeProtectConfigurationsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.ProtectConfigurationFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeProtectConfigurationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeProtectConfigurationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ProtectConfigurationInformation = schema.new({
    id = id.from(_N, "ProtectConfigurationInformation"),
    type = "structure",
    members = {
        ProtectConfigurationArn = schema.new({
            id = id.from(_N, "ProtectConfigurationInformation", "ProtectConfigurationArn"),
            type = "string",
            name = "ProtectConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProtectConfigurationId = schema.new({
            id = id.from(_N, "ProtectConfigurationInformation", "ProtectConfigurationId"),
            type = "string",
            name = "ProtectConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "ProtectConfigurationInformation", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccountDefault = schema.new({
            id = id.from(_N, "ProtectConfigurationInformation", "AccountDefault"),
            type = "boolean",
            name = "AccountDefault",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "ProtectConfigurationInformation", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DescribeProtectConfigurationsOutput = schema.new({
    id = id.from(_N, "DescribeProtectConfigurationsResult"),
    type = "structure",
    members = {
        ProtectConfigurations = schema.new({
            id = id.from(_N, "DescribeProtectConfigurationsOutput", "ProtectConfigurations"),
            type = "list",
            name = "ProtectConfigurations",
            target_id = prelude.Document.id,
            list_member = M.ProtectConfigurationInformation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeProtectConfigurationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeRcsAgentCountryLaunchStatusInput = schema.new({
    id = id.from(_N, "DescribeRcsAgentCountryLaunchStatusRequest"),
    type = "structure",
    members = {
        RcsAgentId = schema.new({
            id = id.from(_N, "DescribeRcsAgentCountryLaunchStatusInput", "RcsAgentId"),
            type = "string",
            name = "RcsAgentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsoCountryCodes = schema.new({
            id = id.from(_N, "DescribeRcsAgentCountryLaunchStatusInput", "IsoCountryCodes"),
            type = "list",
            name = "IsoCountryCodes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeRcsAgentCountryLaunchStatusInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.CountryLaunchStatusFilter,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeRcsAgentCountryLaunchStatusInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeRcsAgentCountryLaunchStatusInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeRcsAgentCountryLaunchStatusOutput = schema.new({
    id = id.from(_N, "DescribeRcsAgentCountryLaunchStatusResult"),
    type = "structure",
    members = {
        RcsAgentId = schema.new({
            id = id.from(_N, "DescribeRcsAgentCountryLaunchStatusOutput", "RcsAgentId"),
            type = "string",
            name = "RcsAgentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RcsAgentArn = schema.new({
            id = id.from(_N, "DescribeRcsAgentCountryLaunchStatusOutput", "RcsAgentArn"),
            type = "string",
            name = "RcsAgentArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CountryLaunchStatus = schema.new({
            id = id.from(_N, "DescribeRcsAgentCountryLaunchStatusOutput", "CountryLaunchStatus"),
            type = "list",
            name = "CountryLaunchStatus",
            target_id = prelude.Document.id,
            list_member = M.CountryLaunchStatusInformation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeRcsAgentCountryLaunchStatusOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RcsAgentFilter = schema.new({
    id = id.from(_N, "RcsAgentFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "RcsAgentFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "RcsAgentFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeRcsAgentsInput = schema.new({
    id = id.from(_N, "DescribeRcsAgentsRequest"),
    type = "structure",
    members = {
        RcsAgentIds = schema.new({
            id = id.from(_N, "DescribeRcsAgentsInput", "RcsAgentIds"),
            type = "list",
            name = "RcsAgentIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Owner = schema.new({
            id = id.from(_N, "DescribeRcsAgentsInput", "Owner"),
            type = "string",
            name = "Owner",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeRcsAgentsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.RcsAgentFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeRcsAgentsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeRcsAgentsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.TestingAgentInformation = schema.new({
    id = id.from(_N, "TestingAgentInformation"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "TestingAgentInformation", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TestingAgentId = schema.new({
            id = id.from(_N, "TestingAgentInformation", "TestingAgentId"),
            type = "string",
            name = "TestingAgentId",
            target_id = prelude.String.id,
        }),
        RegistrationId = schema.new({
            id = id.from(_N, "TestingAgentInformation", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RcsAgentInformation = schema.new({
    id = id.from(_N, "RcsAgentInformation"),
    type = "structure",
    members = {
        RcsAgentArn = schema.new({
            id = id.from(_N, "RcsAgentInformation", "RcsAgentArn"),
            type = "string",
            name = "RcsAgentArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RcsAgentId = schema.new({
            id = id.from(_N, "RcsAgentInformation", "RcsAgentId"),
            type = "string",
            name = "RcsAgentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "RcsAgentInformation", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "RcsAgentInformation", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "RcsAgentInformation", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        OptOutListName = schema.new({
            id = id.from(_N, "RcsAgentInformation", "OptOutListName"),
            type = "string",
            name = "OptOutListName",
            target_id = prelude.String.id,
        }),
        SelfManagedOptOutsEnabled = schema.new({
            id = id.from(_N, "RcsAgentInformation", "SelfManagedOptOutsEnabled"),
            type = "boolean",
            name = "SelfManagedOptOutsEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        TwoWayChannelArn = schema.new({
            id = id.from(_N, "RcsAgentInformation", "TwoWayChannelArn"),
            type = "string",
            name = "TwoWayChannelArn",
            target_id = prelude.String.id,
        }),
        TwoWayChannelRole = schema.new({
            id = id.from(_N, "RcsAgentInformation", "TwoWayChannelRole"),
            type = "string",
            name = "TwoWayChannelRole",
            target_id = prelude.String.id,
        }),
        TwoWayEnabled = schema.new({
            id = id.from(_N, "RcsAgentInformation", "TwoWayEnabled"),
            type = "boolean",
            name = "TwoWayEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        PoolId = schema.new({
            id = id.from(_N, "RcsAgentInformation", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
        }),
        TestingAgent = schema.new({
            id = id.from(_N, "RcsAgentInformation", "TestingAgent"),
            type = "structure",
            name = "TestingAgent",
            target_id = id.from(_N, "TestingAgentInformation"),
            target = M.TestingAgentInformation,
        }),
    },
})

M.DescribeRcsAgentsOutput = schema.new({
    id = id.from(_N, "DescribeRcsAgentsResult"),
    type = "structure",
    members = {
        RcsAgents = schema.new({
            id = id.from(_N, "DescribeRcsAgentsOutput", "RcsAgents"),
            type = "list",
            name = "RcsAgents",
            target_id = prelude.Document.id,
            list_member = M.RcsAgentInformation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeRcsAgentsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RegistrationAttachmentFilter = schema.new({
    id = id.from(_N, "RegistrationAttachmentFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "RegistrationAttachmentFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "RegistrationAttachmentFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeRegistrationAttachmentsInput = schema.new({
    id = id.from(_N, "DescribeRegistrationAttachmentsRequest"),
    type = "structure",
    members = {
        RegistrationAttachmentIds = schema.new({
            id = id.from(_N, "DescribeRegistrationAttachmentsInput", "RegistrationAttachmentIds"),
            type = "list",
            name = "RegistrationAttachmentIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeRegistrationAttachmentsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.RegistrationAttachmentFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeRegistrationAttachmentsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeRegistrationAttachmentsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.RegistrationAttachmentsInformation = schema.new({
    id = id.from(_N, "RegistrationAttachmentsInformation"),
    type = "structure",
    members = {
        RegistrationAttachmentArn = schema.new({
            id = id.from(_N, "RegistrationAttachmentsInformation", "RegistrationAttachmentArn"),
            type = "string",
            name = "RegistrationAttachmentArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationAttachmentId = schema.new({
            id = id.from(_N, "RegistrationAttachmentsInformation", "RegistrationAttachmentId"),
            type = "string",
            name = "RegistrationAttachmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AttachmentStatus = schema.new({
            id = id.from(_N, "RegistrationAttachmentsInformation", "AttachmentStatus"),
            type = "string",
            name = "AttachmentStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AttachmentUploadErrorReason = schema.new({
            id = id.from(_N, "RegistrationAttachmentsInformation", "AttachmentUploadErrorReason"),
            type = "string",
            name = "AttachmentUploadErrorReason",
            target_id = prelude.String.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "RegistrationAttachmentsInformation", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AttachmentUrl = schema.new({
            id = id.from(_N, "RegistrationAttachmentsInformation", "AttachmentUrl"),
            type = "string",
            name = "AttachmentUrl",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeRegistrationAttachmentsOutput = schema.new({
    id = id.from(_N, "DescribeRegistrationAttachmentsResult"),
    type = "structure",
    members = {
        RegistrationAttachments = schema.new({
            id = id.from(_N, "DescribeRegistrationAttachmentsOutput", "RegistrationAttachments"),
            type = "list",
            name = "RegistrationAttachments",
            target_id = prelude.Document.id,
            list_member = M.RegistrationAttachmentsInformation,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeRegistrationAttachmentsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeRegistrationFieldDefinitionsInput = schema.new({
    id = id.from(_N, "DescribeRegistrationFieldDefinitionsRequest"),
    type = "structure",
    members = {
        RegistrationType = schema.new({
            id = id.from(_N, "DescribeRegistrationFieldDefinitionsInput", "RegistrationType"),
            type = "string",
            name = "RegistrationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SectionPath = schema.new({
            id = id.from(_N, "DescribeRegistrationFieldDefinitionsInput", "SectionPath"),
            type = "string",
            name = "SectionPath",
            target_id = prelude.String.id,
        }),
        FieldPaths = schema.new({
            id = id.from(_N, "DescribeRegistrationFieldDefinitionsInput", "FieldPaths"),
            type = "list",
            name = "FieldPaths",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeRegistrationFieldDefinitionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeRegistrationFieldDefinitionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.SelectOptionDescription = schema.new({
    id = id.from(_N, "SelectOptionDescription"),
    type = "structure",
    members = {
        Option = schema.new({
            id = id.from(_N, "SelectOptionDescription", "Option"),
            type = "string",
            name = "Option",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Title = schema.new({
            id = id.from(_N, "SelectOptionDescription", "Title"),
            type = "string",
            name = "Title",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "SelectOptionDescription", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.RegistrationFieldDisplayHints = schema.new({
    id = id.from(_N, "RegistrationFieldDisplayHints"),
    type = "structure",
    members = {
        Title = schema.new({
            id = id.from(_N, "RegistrationFieldDisplayHints", "Title"),
            type = "string",
            name = "Title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ShortDescription = schema.new({
            id = id.from(_N, "RegistrationFieldDisplayHints", "ShortDescription"),
            type = "string",
            name = "ShortDescription",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LongDescription = schema.new({
            id = id.from(_N, "RegistrationFieldDisplayHints", "LongDescription"),
            type = "string",
            name = "LongDescription",
            target_id = prelude.String.id,
        }),
        DocumentationTitle = schema.new({
            id = id.from(_N, "RegistrationFieldDisplayHints", "DocumentationTitle"),
            type = "string",
            name = "DocumentationTitle",
            target_id = prelude.String.id,
        }),
        DocumentationLink = schema.new({
            id = id.from(_N, "RegistrationFieldDisplayHints", "DocumentationLink"),
            type = "string",
            name = "DocumentationLink",
            target_id = prelude.String.id,
        }),
        SelectOptionDescriptions = schema.new({
            id = id.from(_N, "RegistrationFieldDisplayHints", "SelectOptionDescriptions"),
            type = "list",
            name = "SelectOptionDescriptions",
            target_id = prelude.Document.id,
            list_member = M.SelectOptionDescription,
        }),
        TextValidationDescription = schema.new({
            id = id.from(_N, "RegistrationFieldDisplayHints", "TextValidationDescription"),
            type = "string",
            name = "TextValidationDescription",
            target_id = prelude.String.id,
        }),
        ExampleTextValue = schema.new({
            id = id.from(_N, "RegistrationFieldDisplayHints", "ExampleTextValue"),
            type = "string",
            name = "ExampleTextValue",
            target_id = prelude.String.id,
        }),
    },
})

M.SelectValidation = schema.new({
    id = id.from(_N, "SelectValidation"),
    type = "structure",
    members = {
        MinChoices = schema.new({
            id = id.from(_N, "SelectValidation", "MinChoices"),
            type = "integer",
            name = "MinChoices",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxChoices = schema.new({
            id = id.from(_N, "SelectValidation", "MaxChoices"),
            type = "integer",
            name = "MaxChoices",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Options = schema.new({
            id = id.from(_N, "SelectValidation", "Options"),
            type = "list",
            name = "Options",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TextValidation = schema.new({
    id = id.from(_N, "TextValidation"),
    type = "structure",
    members = {
        MinLength = schema.new({
            id = id.from(_N, "TextValidation", "MinLength"),
            type = "integer",
            name = "MinLength",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxLength = schema.new({
            id = id.from(_N, "TextValidation", "MaxLength"),
            type = "integer",
            name = "MaxLength",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Pattern = schema.new({
            id = id.from(_N, "TextValidation", "Pattern"),
            type = "string",
            name = "Pattern",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RegistrationFieldDefinition = schema.new({
    id = id.from(_N, "RegistrationFieldDefinition"),
    type = "structure",
    members = {
        SectionPath = schema.new({
            id = id.from(_N, "RegistrationFieldDefinition", "SectionPath"),
            type = "string",
            name = "SectionPath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FieldPath = schema.new({
            id = id.from(_N, "RegistrationFieldDefinition", "FieldPath"),
            type = "string",
            name = "FieldPath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FieldType = schema.new({
            id = id.from(_N, "RegistrationFieldDefinition", "FieldType"),
            type = "string",
            name = "FieldType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FieldRequirement = schema.new({
            id = id.from(_N, "RegistrationFieldDefinition", "FieldRequirement"),
            type = "string",
            name = "FieldRequirement",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SelectValidation = schema.new({
            id = id.from(_N, "RegistrationFieldDefinition", "SelectValidation"),
            type = "structure",
            name = "SelectValidation",
            target_id = id.from(_N, "SelectValidation"),
            target = M.SelectValidation,
        }),
        TextValidation = schema.new({
            id = id.from(_N, "RegistrationFieldDefinition", "TextValidation"),
            type = "structure",
            name = "TextValidation",
            target_id = id.from(_N, "TextValidation"),
            target = M.TextValidation,
        }),
        DisplayHints = schema.new({
            id = id.from(_N, "RegistrationFieldDefinition", "DisplayHints"),
            type = "structure",
            name = "DisplayHints",
            target_id = id.from(_N, "RegistrationFieldDisplayHints"),
            target = M.RegistrationFieldDisplayHints,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeRegistrationFieldDefinitionsOutput = schema.new({
    id = id.from(_N, "DescribeRegistrationFieldDefinitionsResult"),
    type = "structure",
    members = {
        RegistrationType = schema.new({
            id = id.from(_N, "DescribeRegistrationFieldDefinitionsOutput", "RegistrationType"),
            type = "string",
            name = "RegistrationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationFieldDefinitions = schema.new({
            id = id.from(_N, "DescribeRegistrationFieldDefinitionsOutput", "RegistrationFieldDefinitions"),
            type = "list",
            name = "RegistrationFieldDefinitions",
            target_id = prelude.Document.id,
            list_member = M.RegistrationFieldDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeRegistrationFieldDefinitionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeRegistrationFieldValuesInput = schema.new({
    id = id.from(_N, "DescribeRegistrationFieldValuesRequest"),
    type = "structure",
    members = {
        RegistrationId = schema.new({
            id = id.from(_N, "DescribeRegistrationFieldValuesInput", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VersionNumber = schema.new({
            id = id.from(_N, "DescribeRegistrationFieldValuesInput", "VersionNumber"),
            type = "long",
            name = "VersionNumber",
            target_id = prelude.Long.id,
        }),
        SectionPath = schema.new({
            id = id.from(_N, "DescribeRegistrationFieldValuesInput", "SectionPath"),
            type = "string",
            name = "SectionPath",
            target_id = prelude.String.id,
        }),
        FieldPaths = schema.new({
            id = id.from(_N, "DescribeRegistrationFieldValuesInput", "FieldPaths"),
            type = "list",
            name = "FieldPaths",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeRegistrationFieldValuesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeRegistrationFieldValuesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.RegistrationFieldValueInformation = schema.new({
    id = id.from(_N, "RegistrationFieldValueInformation"),
    type = "structure",
    members = {
        FieldPath = schema.new({
            id = id.from(_N, "RegistrationFieldValueInformation", "FieldPath"),
            type = "string",
            name = "FieldPath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SelectChoices = schema.new({
            id = id.from(_N, "RegistrationFieldValueInformation", "SelectChoices"),
            type = "list",
            name = "SelectChoices",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        TextValue = schema.new({
            id = id.from(_N, "RegistrationFieldValueInformation", "TextValue"),
            type = "string",
            name = "TextValue",
            target_id = prelude.String.id,
        }),
        RegistrationAttachmentId = schema.new({
            id = id.from(_N, "RegistrationFieldValueInformation", "RegistrationAttachmentId"),
            type = "string",
            name = "RegistrationAttachmentId",
            target_id = prelude.String.id,
        }),
        DeniedReason = schema.new({
            id = id.from(_N, "RegistrationFieldValueInformation", "DeniedReason"),
            type = "string",
            name = "DeniedReason",
            target_id = prelude.String.id,
        }),
        Feedback = schema.new({
            id = id.from(_N, "RegistrationFieldValueInformation", "Feedback"),
            type = "string",
            name = "Feedback",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeRegistrationFieldValuesOutput = schema.new({
    id = id.from(_N, "DescribeRegistrationFieldValuesResult"),
    type = "structure",
    members = {
        RegistrationArn = schema.new({
            id = id.from(_N, "DescribeRegistrationFieldValuesOutput", "RegistrationArn"),
            type = "string",
            name = "RegistrationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationId = schema.new({
            id = id.from(_N, "DescribeRegistrationFieldValuesOutput", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VersionNumber = schema.new({
            id = id.from(_N, "DescribeRegistrationFieldValuesOutput", "VersionNumber"),
            type = "long",
            name = "VersionNumber",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationFieldValues = schema.new({
            id = id.from(_N, "DescribeRegistrationFieldValuesOutput", "RegistrationFieldValues"),
            type = "list",
            name = "RegistrationFieldValues",
            target_id = prelude.Document.id,
            list_member = M.RegistrationFieldValueInformation,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeRegistrationFieldValuesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RegistrationFilter = schema.new({
    id = id.from(_N, "RegistrationFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "RegistrationFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "RegistrationFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeRegistrationsInput = schema.new({
    id = id.from(_N, "DescribeRegistrationsRequest"),
    type = "structure",
    members = {
        RegistrationIds = schema.new({
            id = id.from(_N, "DescribeRegistrationsInput", "RegistrationIds"),
            type = "list",
            name = "RegistrationIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeRegistrationsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.RegistrationFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeRegistrationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeRegistrationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.RegistrationInformation = schema.new({
    id = id.from(_N, "RegistrationInformation"),
    type = "structure",
    members = {
        RegistrationArn = schema.new({
            id = id.from(_N, "RegistrationInformation", "RegistrationArn"),
            type = "string",
            name = "RegistrationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationId = schema.new({
            id = id.from(_N, "RegistrationInformation", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationType = schema.new({
            id = id.from(_N, "RegistrationInformation", "RegistrationType"),
            type = "string",
            name = "RegistrationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationStatus = schema.new({
            id = id.from(_N, "RegistrationInformation", "RegistrationStatus"),
            type = "string",
            name = "RegistrationStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CurrentVersionNumber = schema.new({
            id = id.from(_N, "RegistrationInformation", "CurrentVersionNumber"),
            type = "long",
            name = "CurrentVersionNumber",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ApprovedVersionNumber = schema.new({
            id = id.from(_N, "RegistrationInformation", "ApprovedVersionNumber"),
            type = "long",
            name = "ApprovedVersionNumber",
            target_id = prelude.Long.id,
        }),
        LatestDeniedVersionNumber = schema.new({
            id = id.from(_N, "RegistrationInformation", "LatestDeniedVersionNumber"),
            type = "long",
            name = "LatestDeniedVersionNumber",
            target_id = prelude.Long.id,
        }),
        AdditionalAttributes = schema.new({
            id = id.from(_N, "RegistrationInformation", "AdditionalAttributes"),
            type = "map",
            name = "AdditionalAttributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "RegistrationInformation", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeRegistrationsOutput = schema.new({
    id = id.from(_N, "DescribeRegistrationsResult"),
    type = "structure",
    members = {
        Registrations = schema.new({
            id = id.from(_N, "DescribeRegistrationsOutput", "Registrations"),
            type = "list",
            name = "Registrations",
            target_id = prelude.Document.id,
            list_member = M.RegistrationInformation,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeRegistrationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeRegistrationSectionDefinitionsInput = schema.new({
    id = id.from(_N, "DescribeRegistrationSectionDefinitionsRequest"),
    type = "structure",
    members = {
        RegistrationType = schema.new({
            id = id.from(_N, "DescribeRegistrationSectionDefinitionsInput", "RegistrationType"),
            type = "string",
            name = "RegistrationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SectionPaths = schema.new({
            id = id.from(_N, "DescribeRegistrationSectionDefinitionsInput", "SectionPaths"),
            type = "list",
            name = "SectionPaths",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeRegistrationSectionDefinitionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeRegistrationSectionDefinitionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.RegistrationSectionDisplayHints = schema.new({
    id = id.from(_N, "RegistrationSectionDisplayHints"),
    type = "structure",
    members = {
        Title = schema.new({
            id = id.from(_N, "RegistrationSectionDisplayHints", "Title"),
            type = "string",
            name = "Title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ShortDescription = schema.new({
            id = id.from(_N, "RegistrationSectionDisplayHints", "ShortDescription"),
            type = "string",
            name = "ShortDescription",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LongDescription = schema.new({
            id = id.from(_N, "RegistrationSectionDisplayHints", "LongDescription"),
            type = "string",
            name = "LongDescription",
            target_id = prelude.String.id,
        }),
        DocumentationTitle = schema.new({
            id = id.from(_N, "RegistrationSectionDisplayHints", "DocumentationTitle"),
            type = "string",
            name = "DocumentationTitle",
            target_id = prelude.String.id,
        }),
        DocumentationLink = schema.new({
            id = id.from(_N, "RegistrationSectionDisplayHints", "DocumentationLink"),
            type = "string",
            name = "DocumentationLink",
            target_id = prelude.String.id,
        }),
    },
})

M.RegistrationSectionDefinition = schema.new({
    id = id.from(_N, "RegistrationSectionDefinition"),
    type = "structure",
    members = {
        SectionPath = schema.new({
            id = id.from(_N, "RegistrationSectionDefinition", "SectionPath"),
            type = "string",
            name = "SectionPath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DisplayHints = schema.new({
            id = id.from(_N, "RegistrationSectionDefinition", "DisplayHints"),
            type = "structure",
            name = "DisplayHints",
            target_id = id.from(_N, "RegistrationSectionDisplayHints"),
            target = M.RegistrationSectionDisplayHints,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeRegistrationSectionDefinitionsOutput = schema.new({
    id = id.from(_N, "DescribeRegistrationSectionDefinitionsResult"),
    type = "structure",
    members = {
        RegistrationType = schema.new({
            id = id.from(_N, "DescribeRegistrationSectionDefinitionsOutput", "RegistrationType"),
            type = "string",
            name = "RegistrationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationSectionDefinitions = schema.new({
            id = id.from(_N, "DescribeRegistrationSectionDefinitionsOutput", "RegistrationSectionDefinitions"),
            type = "list",
            name = "RegistrationSectionDefinitions",
            target_id = prelude.Document.id,
            list_member = M.RegistrationSectionDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeRegistrationSectionDefinitionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RegistrationTypeFilter = schema.new({
    id = id.from(_N, "RegistrationTypeFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "RegistrationTypeFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "RegistrationTypeFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeRegistrationTypeDefinitionsInput = schema.new({
    id = id.from(_N, "DescribeRegistrationTypeDefinitionsRequest"),
    type = "structure",
    members = {
        RegistrationTypes = schema.new({
            id = id.from(_N, "DescribeRegistrationTypeDefinitionsInput", "RegistrationTypes"),
            type = "list",
            name = "RegistrationTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeRegistrationTypeDefinitionsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.RegistrationTypeFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeRegistrationTypeDefinitionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeRegistrationTypeDefinitionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.RegistrationTypeDisplayHints = schema.new({
    id = id.from(_N, "RegistrationTypeDisplayHints"),
    type = "structure",
    members = {
        Title = schema.new({
            id = id.from(_N, "RegistrationTypeDisplayHints", "Title"),
            type = "string",
            name = "Title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ShortDescription = schema.new({
            id = id.from(_N, "RegistrationTypeDisplayHints", "ShortDescription"),
            type = "string",
            name = "ShortDescription",
            target_id = prelude.String.id,
        }),
        LongDescription = schema.new({
            id = id.from(_N, "RegistrationTypeDisplayHints", "LongDescription"),
            type = "string",
            name = "LongDescription",
            target_id = prelude.String.id,
        }),
        DocumentationTitle = schema.new({
            id = id.from(_N, "RegistrationTypeDisplayHints", "DocumentationTitle"),
            type = "string",
            name = "DocumentationTitle",
            target_id = prelude.String.id,
        }),
        DocumentationLink = schema.new({
            id = id.from(_N, "RegistrationTypeDisplayHints", "DocumentationLink"),
            type = "string",
            name = "DocumentationLink",
            target_id = prelude.String.id,
        }),
    },
})

M.SupportedAssociation = schema.new({
    id = id.from(_N, "SupportedAssociation"),
    type = "structure",
    members = {
        ResourceType = schema.new({
            id = id.from(_N, "SupportedAssociation", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsoCountryCode = schema.new({
            id = id.from(_N, "SupportedAssociation", "IsoCountryCode"),
            type = "string",
            name = "IsoCountryCode",
            target_id = prelude.String.id,
        }),
        AssociationBehavior = schema.new({
            id = id.from(_N, "SupportedAssociation", "AssociationBehavior"),
            type = "string",
            name = "AssociationBehavior",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DisassociationBehavior = schema.new({
            id = id.from(_N, "SupportedAssociation", "DisassociationBehavior"),
            type = "string",
            name = "DisassociationBehavior",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RegistrationTypeDefinition = schema.new({
    id = id.from(_N, "RegistrationTypeDefinition"),
    type = "structure",
    members = {
        RegistrationType = schema.new({
            id = id.from(_N, "RegistrationTypeDefinition", "RegistrationType"),
            type = "string",
            name = "RegistrationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SupportedAssociations = schema.new({
            id = id.from(_N, "RegistrationTypeDefinition", "SupportedAssociations"),
            type = "list",
            name = "SupportedAssociations",
            target_id = prelude.Document.id,
            list_member = M.SupportedAssociation,
        }),
        DisplayHints = schema.new({
            id = id.from(_N, "RegistrationTypeDefinition", "DisplayHints"),
            type = "structure",
            name = "DisplayHints",
            target_id = id.from(_N, "RegistrationTypeDisplayHints"),
            target = M.RegistrationTypeDisplayHints,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeRegistrationTypeDefinitionsOutput = schema.new({
    id = id.from(_N, "DescribeRegistrationTypeDefinitionsResult"),
    type = "structure",
    members = {
        RegistrationTypeDefinitions = schema.new({
            id = id.from(_N, "DescribeRegistrationTypeDefinitionsOutput", "RegistrationTypeDefinitions"),
            type = "list",
            name = "RegistrationTypeDefinitions",
            target_id = prelude.Document.id,
            list_member = M.RegistrationTypeDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeRegistrationTypeDefinitionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RegistrationVersionFilter = schema.new({
    id = id.from(_N, "RegistrationVersionFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "RegistrationVersionFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "RegistrationVersionFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeRegistrationVersionsInput = schema.new({
    id = id.from(_N, "DescribeRegistrationVersionsRequest"),
    type = "structure",
    members = {
        RegistrationId = schema.new({
            id = id.from(_N, "DescribeRegistrationVersionsInput", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VersionNumbers = schema.new({
            id = id.from(_N, "DescribeRegistrationVersionsInput", "VersionNumbers"),
            type = "list",
            name = "VersionNumbers",
            target_id = prelude.Document.id,
            list_member = prelude.Long,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeRegistrationVersionsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.RegistrationVersionFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeRegistrationVersionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeRegistrationVersionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.RegistrationDeniedReasonInformation = schema.new({
    id = id.from(_N, "RegistrationDeniedReasonInformation"),
    type = "structure",
    members = {
        Reason = schema.new({
            id = id.from(_N, "RegistrationDeniedReasonInformation", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ShortDescription = schema.new({
            id = id.from(_N, "RegistrationDeniedReasonInformation", "ShortDescription"),
            type = "string",
            name = "ShortDescription",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LongDescription = schema.new({
            id = id.from(_N, "RegistrationDeniedReasonInformation", "LongDescription"),
            type = "string",
            name = "LongDescription",
            target_id = prelude.String.id,
        }),
        DocumentationTitle = schema.new({
            id = id.from(_N, "RegistrationDeniedReasonInformation", "DocumentationTitle"),
            type = "string",
            name = "DocumentationTitle",
            target_id = prelude.String.id,
        }),
        DocumentationLink = schema.new({
            id = id.from(_N, "RegistrationDeniedReasonInformation", "DocumentationLink"),
            type = "string",
            name = "DocumentationLink",
            target_id = prelude.String.id,
        }),
    },
})

M.RegistrationVersionInformation = schema.new({
    id = id.from(_N, "RegistrationVersionInformation"),
    type = "structure",
    members = {
        VersionNumber = schema.new({
            id = id.from(_N, "RegistrationVersionInformation", "VersionNumber"),
            type = "long",
            name = "VersionNumber",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationVersionStatus = schema.new({
            id = id.from(_N, "RegistrationVersionInformation", "RegistrationVersionStatus"),
            type = "string",
            name = "RegistrationVersionStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationVersionStatusHistory = schema.new({
            id = id.from(_N, "RegistrationVersionInformation", "RegistrationVersionStatusHistory"),
            type = "structure",
            name = "RegistrationVersionStatusHistory",
            target_id = id.from(_N, "RegistrationVersionStatusHistory"),
            target = M.RegistrationVersionStatusHistory,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeniedReasons = schema.new({
            id = id.from(_N, "RegistrationVersionInformation", "DeniedReasons"),
            type = "list",
            name = "DeniedReasons",
            target_id = prelude.Document.id,
            list_member = M.RegistrationDeniedReasonInformation,
        }),
        Feedback = schema.new({
            id = id.from(_N, "RegistrationVersionInformation", "Feedback"),
            type = "string",
            name = "Feedback",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeRegistrationVersionsOutput = schema.new({
    id = id.from(_N, "DescribeRegistrationVersionsResult"),
    type = "structure",
    members = {
        RegistrationArn = schema.new({
            id = id.from(_N, "DescribeRegistrationVersionsOutput", "RegistrationArn"),
            type = "string",
            name = "RegistrationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationId = schema.new({
            id = id.from(_N, "DescribeRegistrationVersionsOutput", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationVersions = schema.new({
            id = id.from(_N, "DescribeRegistrationVersionsOutput", "RegistrationVersions"),
            type = "list",
            name = "RegistrationVersions",
            target_id = prelude.Document.id,
            list_member = M.RegistrationVersionInformation,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeRegistrationVersionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SenderIdFilter = schema.new({
    id = id.from(_N, "SenderIdFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "SenderIdFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "SenderIdFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SenderIdAndCountry = schema.new({
    id = id.from(_N, "SenderIdAndCountry"),
    type = "structure",
    members = {
        SenderId = schema.new({
            id = id.from(_N, "SenderIdAndCountry", "SenderId"),
            type = "string",
            name = "SenderId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsoCountryCode = schema.new({
            id = id.from(_N, "SenderIdAndCountry", "IsoCountryCode"),
            type = "string",
            name = "IsoCountryCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeSenderIdsInput = schema.new({
    id = id.from(_N, "DescribeSenderIdsRequest"),
    type = "structure",
    members = {
        SenderIds = schema.new({
            id = id.from(_N, "DescribeSenderIdsInput", "SenderIds"),
            type = "list",
            name = "SenderIds",
            target_id = prelude.Document.id,
            list_member = M.SenderIdAndCountry,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeSenderIdsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.SenderIdFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeSenderIdsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeSenderIdsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        Owner = schema.new({
            id = id.from(_N, "DescribeSenderIdsInput", "Owner"),
            type = "string",
            name = "Owner",
            target_id = prelude.String.id,
        }),
    },
})

M.SenderIdInformation = schema.new({
    id = id.from(_N, "SenderIdInformation"),
    type = "structure",
    members = {
        SenderIdArn = schema.new({
            id = id.from(_N, "SenderIdInformation", "SenderIdArn"),
            type = "string",
            name = "SenderIdArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SenderId = schema.new({
            id = id.from(_N, "SenderIdInformation", "SenderId"),
            type = "string",
            name = "SenderId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsoCountryCode = schema.new({
            id = id.from(_N, "SenderIdInformation", "IsoCountryCode"),
            type = "string",
            name = "IsoCountryCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MessageTypes = schema.new({
            id = id.from(_N, "SenderIdInformation", "MessageTypes"),
            type = "list",
            name = "MessageTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MonthlyLeasingPrice = schema.new({
            id = id.from(_N, "SenderIdInformation", "MonthlyLeasingPrice"),
            type = "string",
            name = "MonthlyLeasingPrice",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "SenderIdInformation", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        Registered = schema.new({
            id = id.from(_N, "SenderIdInformation", "Registered"),
            type = "boolean",
            name = "Registered",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        RegistrationId = schema.new({
            id = id.from(_N, "SenderIdInformation", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeSenderIdsOutput = schema.new({
    id = id.from(_N, "DescribeSenderIdsResult"),
    type = "structure",
    members = {
        SenderIds = schema.new({
            id = id.from(_N, "DescribeSenderIdsOutput", "SenderIds"),
            type = "list",
            name = "SenderIds",
            target_id = prelude.Document.id,
            list_member = M.SenderIdInformation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeSenderIdsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeSpendLimitsInput = schema.new({
    id = id.from(_N, "DescribeSpendLimitsRequest"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "DescribeSpendLimitsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeSpendLimitsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.SpendLimit = schema.new({
    id = id.from(_N, "SpendLimit"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "SpendLimit", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EnforcedLimit = schema.new({
            id = id.from(_N, "SpendLimit", "EnforcedLimit"),
            type = "long",
            name = "EnforcedLimit",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        MaxLimit = schema.new({
            id = id.from(_N, "SpendLimit", "MaxLimit"),
            type = "long",
            name = "MaxLimit",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Overridden = schema.new({
            id = id.from(_N, "SpendLimit", "Overridden"),
            type = "boolean",
            name = "Overridden",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DescribeSpendLimitsOutput = schema.new({
    id = id.from(_N, "DescribeSpendLimitsResult"),
    type = "structure",
    members = {
        SpendLimits = schema.new({
            id = id.from(_N, "DescribeSpendLimitsOutput", "SpendLimits"),
            type = "list",
            name = "SpendLimits",
            target_id = prelude.Document.id,
            list_member = M.SpendLimit,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeSpendLimitsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.VerifiedDestinationNumberFilter = schema.new({
    id = id.from(_N, "VerifiedDestinationNumberFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "VerifiedDestinationNumberFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "VerifiedDestinationNumberFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeVerifiedDestinationNumbersInput = schema.new({
    id = id.from(_N, "DescribeVerifiedDestinationNumbersRequest"),
    type = "structure",
    members = {
        VerifiedDestinationNumberIds = schema.new({
            id = id.from(_N, "DescribeVerifiedDestinationNumbersInput", "VerifiedDestinationNumberIds"),
            type = "list",
            name = "VerifiedDestinationNumberIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        DestinationPhoneNumbers = schema.new({
            id = id.from(_N, "DescribeVerifiedDestinationNumbersInput", "DestinationPhoneNumbers"),
            type = "list",
            name = "DestinationPhoneNumbers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeVerifiedDestinationNumbersInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.VerifiedDestinationNumberFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeVerifiedDestinationNumbersInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeVerifiedDestinationNumbersInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.VerifiedDestinationNumberInformation = schema.new({
    id = id.from(_N, "VerifiedDestinationNumberInformation"),
    type = "structure",
    members = {
        VerifiedDestinationNumberArn = schema.new({
            id = id.from(_N, "VerifiedDestinationNumberInformation", "VerifiedDestinationNumberArn"),
            type = "string",
            name = "VerifiedDestinationNumberArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VerifiedDestinationNumberId = schema.new({
            id = id.from(_N, "VerifiedDestinationNumberInformation", "VerifiedDestinationNumberId"),
            type = "string",
            name = "VerifiedDestinationNumberId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DestinationPhoneNumber = schema.new({
            id = id.from(_N, "VerifiedDestinationNumberInformation", "DestinationPhoneNumber"),
            type = "string",
            name = "DestinationPhoneNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "VerifiedDestinationNumberInformation", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RcsAgentId = schema.new({
            id = id.from(_N, "VerifiedDestinationNumberInformation", "RcsAgentId"),
            type = "string",
            name = "RcsAgentId",
            target_id = prelude.String.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "VerifiedDestinationNumberInformation", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeVerifiedDestinationNumbersOutput = schema.new({
    id = id.from(_N, "DescribeVerifiedDestinationNumbersResult"),
    type = "structure",
    members = {
        VerifiedDestinationNumbers = schema.new({
            id = id.from(_N, "DescribeVerifiedDestinationNumbersOutput", "VerifiedDestinationNumbers"),
            type = "list",
            name = "VerifiedDestinationNumbers",
            target_id = prelude.Document.id,
            list_member = M.VerifiedDestinationNumberInformation,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeVerifiedDestinationNumbersOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DisassociateOriginationIdentityInput = schema.new({
    id = id.from(_N, "DisassociateOriginationIdentityRequest"),
    type = "structure",
    members = {
        PoolId = schema.new({
            id = id.from(_N, "DisassociateOriginationIdentityInput", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OriginationIdentity = schema.new({
            id = id.from(_N, "DisassociateOriginationIdentityInput", "OriginationIdentity"),
            type = "string",
            name = "OriginationIdentity",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsoCountryCode = schema.new({
            id = id.from(_N, "DisassociateOriginationIdentityInput", "IsoCountryCode"),
            type = "string",
            name = "IsoCountryCode",
            target_id = prelude.String.id,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "DisassociateOriginationIdentityInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DisassociateOriginationIdentityOutput = schema.new({
    id = id.from(_N, "DisassociateOriginationIdentityResult"),
    type = "structure",
    members = {
        PoolArn = schema.new({
            id = id.from(_N, "DisassociateOriginationIdentityOutput", "PoolArn"),
            type = "string",
            name = "PoolArn",
            target_id = prelude.String.id,
        }),
        PoolId = schema.new({
            id = id.from(_N, "DisassociateOriginationIdentityOutput", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
        }),
        OriginationIdentityArn = schema.new({
            id = id.from(_N, "DisassociateOriginationIdentityOutput", "OriginationIdentityArn"),
            type = "string",
            name = "OriginationIdentityArn",
            target_id = prelude.String.id,
        }),
        OriginationIdentity = schema.new({
            id = id.from(_N, "DisassociateOriginationIdentityOutput", "OriginationIdentity"),
            type = "string",
            name = "OriginationIdentity",
            target_id = prelude.String.id,
        }),
        IsoCountryCode = schema.new({
            id = id.from(_N, "DisassociateOriginationIdentityOutput", "IsoCountryCode"),
            type = "string",
            name = "IsoCountryCode",
            target_id = prelude.String.id,
        }),
    },
})

M.DisassociateProtectConfigurationInput = schema.new({
    id = id.from(_N, "DisassociateProtectConfigurationRequest"),
    type = "structure",
    members = {
        ProtectConfigurationId = schema.new({
            id = id.from(_N, "DisassociateProtectConfigurationInput", "ProtectConfigurationId"),
            type = "string",
            name = "ProtectConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConfigurationSetName = schema.new({
            id = id.from(_N, "DisassociateProtectConfigurationInput", "ConfigurationSetName"),
            type = "string",
            name = "ConfigurationSetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisassociateProtectConfigurationOutput = schema.new({
    id = id.from(_N, "DisassociateProtectConfigurationResult"),
    type = "structure",
    members = {
        ConfigurationSetArn = schema.new({
            id = id.from(_N, "DisassociateProtectConfigurationOutput", "ConfigurationSetArn"),
            type = "string",
            name = "ConfigurationSetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConfigurationSetName = schema.new({
            id = id.from(_N, "DisassociateProtectConfigurationOutput", "ConfigurationSetName"),
            type = "string",
            name = "ConfigurationSetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProtectConfigurationArn = schema.new({
            id = id.from(_N, "DisassociateProtectConfigurationOutput", "ProtectConfigurationArn"),
            type = "string",
            name = "ProtectConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProtectConfigurationId = schema.new({
            id = id.from(_N, "DisassociateProtectConfigurationOutput", "ProtectConfigurationId"),
            type = "string",
            name = "ProtectConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DiscardRegistrationVersionInput = schema.new({
    id = id.from(_N, "DiscardRegistrationVersionRequest"),
    type = "structure",
    members = {
        RegistrationId = schema.new({
            id = id.from(_N, "DiscardRegistrationVersionInput", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DiscardRegistrationVersionOutput = schema.new({
    id = id.from(_N, "DiscardRegistrationVersionResult"),
    type = "structure",
    members = {
        RegistrationArn = schema.new({
            id = id.from(_N, "DiscardRegistrationVersionOutput", "RegistrationArn"),
            type = "string",
            name = "RegistrationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationId = schema.new({
            id = id.from(_N, "DiscardRegistrationVersionOutput", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VersionNumber = schema.new({
            id = id.from(_N, "DiscardRegistrationVersionOutput", "VersionNumber"),
            type = "long",
            name = "VersionNumber",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationVersionStatus = schema.new({
            id = id.from(_N, "DiscardRegistrationVersionOutput", "RegistrationVersionStatus"),
            type = "string",
            name = "RegistrationVersionStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationVersionStatusHistory = schema.new({
            id = id.from(_N, "DiscardRegistrationVersionOutput", "RegistrationVersionStatusHistory"),
            type = "structure",
            name = "RegistrationVersionStatusHistory",
            target_id = id.from(_N, "RegistrationVersionStatusHistory"),
            target = M.RegistrationVersionStatusHistory,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetProtectConfigurationCountryRuleSetInput = schema.new({
    id = id.from(_N, "GetProtectConfigurationCountryRuleSetRequest"),
    type = "structure",
    members = {
        ProtectConfigurationId = schema.new({
            id = id.from(_N, "GetProtectConfigurationCountryRuleSetInput", "ProtectConfigurationId"),
            type = "string",
            name = "ProtectConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NumberCapability = schema.new({
            id = id.from(_N, "GetProtectConfigurationCountryRuleSetInput", "NumberCapability"),
            type = "string",
            name = "NumberCapability",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ProtectConfigurationCountryRuleSetInformation = schema.new({
    id = id.from(_N, "ProtectConfigurationCountryRuleSetInformation"),
    type = "structure",
    members = {
        ProtectStatus = schema.new({
            id = id.from(_N, "ProtectConfigurationCountryRuleSetInformation", "ProtectStatus"),
            type = "string",
            name = "ProtectStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetProtectConfigurationCountryRuleSetOutput = schema.new({
    id = id.from(_N, "GetProtectConfigurationCountryRuleSetResult"),
    type = "structure",
    members = {
        ProtectConfigurationArn = schema.new({
            id = id.from(_N, "GetProtectConfigurationCountryRuleSetOutput", "ProtectConfigurationArn"),
            type = "string",
            name = "ProtectConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProtectConfigurationId = schema.new({
            id = id.from(_N, "GetProtectConfigurationCountryRuleSetOutput", "ProtectConfigurationId"),
            type = "string",
            name = "ProtectConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NumberCapability = schema.new({
            id = id.from(_N, "GetProtectConfigurationCountryRuleSetOutput", "NumberCapability"),
            type = "string",
            name = "NumberCapability",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CountryRuleSet = schema.new({
            id = id.from(_N, "GetProtectConfigurationCountryRuleSetOutput", "CountryRuleSet"),
            type = "map",
            name = "CountryRuleSet",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ProtectConfigurationCountryRuleSetInformation,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetResourcePolicyInput = schema.new({
    id = id.from(_N, "GetResourcePolicyRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "GetResourcePolicyInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetResourcePolicyOutput = schema.new({
    id = id.from(_N, "GetResourcePolicyResult"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "GetResourcePolicyOutput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        Policy = schema.new({
            id = id.from(_N, "GetResourcePolicyOutput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "GetResourcePolicyOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListNotifyCountriesInput = schema.new({
    id = id.from(_N, "ListNotifyCountriesRequest"),
    type = "structure",
    members = {
        Channels = schema.new({
            id = id.from(_N, "ListNotifyCountriesInput", "Channels"),
            type = "list",
            name = "Channels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        UseCases = schema.new({
            id = id.from(_N, "ListNotifyCountriesInput", "UseCases"),
            type = "list",
            name = "UseCases",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Tier = schema.new({
            id = id.from(_N, "ListNotifyCountriesInput", "Tier"),
            type = "string",
            name = "Tier",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListNotifyCountriesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListNotifyCountriesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.NotifyCountryInformation = schema.new({
    id = id.from(_N, "NotifyCountryInformation"),
    type = "structure",
    members = {
        IsoCountryCode = schema.new({
            id = id.from(_N, "NotifyCountryInformation", "IsoCountryCode"),
            type = "string",
            name = "IsoCountryCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CountryName = schema.new({
            id = id.from(_N, "NotifyCountryInformation", "CountryName"),
            type = "string",
            name = "CountryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SupportedChannels = schema.new({
            id = id.from(_N, "NotifyCountryInformation", "SupportedChannels"),
            type = "list",
            name = "SupportedChannels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SupportedUseCases = schema.new({
            id = id.from(_N, "NotifyCountryInformation", "SupportedUseCases"),
            type = "list",
            name = "SupportedUseCases",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SupportedTiers = schema.new({
            id = id.from(_N, "NotifyCountryInformation", "SupportedTiers"),
            type = "list",
            name = "SupportedTiers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CustomerOwnedIdentityRequired = schema.new({
            id = id.from(_N, "NotifyCountryInformation", "CustomerOwnedIdentityRequired"),
            type = "boolean",
            name = "CustomerOwnedIdentityRequired",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.ListNotifyCountriesOutput = schema.new({
    id = id.from(_N, "ListNotifyCountriesResult"),
    type = "structure",
    members = {
        NotifyCountries = schema.new({
            id = id.from(_N, "ListNotifyCountriesOutput", "NotifyCountries"),
            type = "list",
            name = "NotifyCountries",
            target_id = prelude.Document.id,
            list_member = M.NotifyCountryInformation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListNotifyCountriesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PoolOriginationIdentitiesFilter = schema.new({
    id = id.from(_N, "PoolOriginationIdentitiesFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "PoolOriginationIdentitiesFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "PoolOriginationIdentitiesFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListPoolOriginationIdentitiesInput = schema.new({
    id = id.from(_N, "ListPoolOriginationIdentitiesRequest"),
    type = "structure",
    members = {
        PoolId = schema.new({
            id = id.from(_N, "ListPoolOriginationIdentitiesInput", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filters = schema.new({
            id = id.from(_N, "ListPoolOriginationIdentitiesInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.PoolOriginationIdentitiesFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListPoolOriginationIdentitiesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListPoolOriginationIdentitiesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.OriginationIdentityMetadata = schema.new({
    id = id.from(_N, "OriginationIdentityMetadata"),
    type = "structure",
    members = {
        OriginationIdentityArn = schema.new({
            id = id.from(_N, "OriginationIdentityMetadata", "OriginationIdentityArn"),
            type = "string",
            name = "OriginationIdentityArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OriginationIdentity = schema.new({
            id = id.from(_N, "OriginationIdentityMetadata", "OriginationIdentity"),
            type = "string",
            name = "OriginationIdentity",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsoCountryCode = schema.new({
            id = id.from(_N, "OriginationIdentityMetadata", "IsoCountryCode"),
            type = "string",
            name = "IsoCountryCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NumberCapabilities = schema.new({
            id = id.from(_N, "OriginationIdentityMetadata", "NumberCapabilities"),
            type = "list",
            name = "NumberCapabilities",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PhoneNumber = schema.new({
            id = id.from(_N, "OriginationIdentityMetadata", "PhoneNumber"),
            type = "string",
            name = "PhoneNumber",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPoolOriginationIdentitiesOutput = schema.new({
    id = id.from(_N, "ListPoolOriginationIdentitiesResult"),
    type = "structure",
    members = {
        PoolArn = schema.new({
            id = id.from(_N, "ListPoolOriginationIdentitiesOutput", "PoolArn"),
            type = "string",
            name = "PoolArn",
            target_id = prelude.String.id,
        }),
        PoolId = schema.new({
            id = id.from(_N, "ListPoolOriginationIdentitiesOutput", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
        }),
        OriginationIdentities = schema.new({
            id = id.from(_N, "ListPoolOriginationIdentitiesOutput", "OriginationIdentities"),
            type = "list",
            name = "OriginationIdentities",
            target_id = prelude.Document.id,
            list_member = M.OriginationIdentityMetadata,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListPoolOriginationIdentitiesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ProtectConfigurationRuleSetNumberOverrideFilterItem = schema.new({
    id = id.from(_N, "ProtectConfigurationRuleSetNumberOverrideFilterItem"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ProtectConfigurationRuleSetNumberOverrideFilterItem", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "ProtectConfigurationRuleSetNumberOverrideFilterItem", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListProtectConfigurationRuleSetNumberOverridesInput = schema.new({
    id = id.from(_N, "ListProtectConfigurationRuleSetNumberOverridesRequest"),
    type = "structure",
    members = {
        ProtectConfigurationId = schema.new({
            id = id.from(_N, "ListProtectConfigurationRuleSetNumberOverridesInput", "ProtectConfigurationId"),
            type = "string",
            name = "ProtectConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filters = schema.new({
            id = id.from(_N, "ListProtectConfigurationRuleSetNumberOverridesInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.ProtectConfigurationRuleSetNumberOverrideFilterItem,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListProtectConfigurationRuleSetNumberOverridesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListProtectConfigurationRuleSetNumberOverridesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ProtectConfigurationRuleSetNumberOverride = schema.new({
    id = id.from(_N, "ProtectConfigurationRuleSetNumberOverride"),
    type = "structure",
    members = {
        DestinationPhoneNumber = schema.new({
            id = id.from(_N, "ProtectConfigurationRuleSetNumberOverride", "DestinationPhoneNumber"),
            type = "string",
            name = "DestinationPhoneNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "ProtectConfigurationRuleSetNumberOverride", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Action = schema.new({
            id = id.from(_N, "ProtectConfigurationRuleSetNumberOverride", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsoCountryCode = schema.new({
            id = id.from(_N, "ProtectConfigurationRuleSetNumberOverride", "IsoCountryCode"),
            type = "string",
            name = "IsoCountryCode",
            target_id = prelude.String.id,
        }),
        ExpirationTimestamp = schema.new({
            id = id.from(_N, "ProtectConfigurationRuleSetNumberOverride", "ExpirationTimestamp"),
            type = "timestamp",
            name = "ExpirationTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListProtectConfigurationRuleSetNumberOverridesOutput = schema.new({
    id = id.from(_N, "ListProtectConfigurationRuleSetNumberOverridesResult"),
    type = "structure",
    members = {
        ProtectConfigurationArn = schema.new({
            id = id.from(_N, "ListProtectConfigurationRuleSetNumberOverridesOutput", "ProtectConfigurationArn"),
            type = "string",
            name = "ProtectConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProtectConfigurationId = schema.new({
            id = id.from(_N, "ListProtectConfigurationRuleSetNumberOverridesOutput", "ProtectConfigurationId"),
            type = "string",
            name = "ProtectConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RuleSetNumberOverrides = schema.new({
            id = id.from(_N, "ListProtectConfigurationRuleSetNumberOverridesOutput", "RuleSetNumberOverrides"),
            type = "list",
            name = "RuleSetNumberOverrides",
            target_id = prelude.Document.id,
            list_member = M.ProtectConfigurationRuleSetNumberOverride,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListProtectConfigurationRuleSetNumberOverridesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RegistrationAssociationFilter = schema.new({
    id = id.from(_N, "RegistrationAssociationFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "RegistrationAssociationFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "RegistrationAssociationFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListRegistrationAssociationsInput = schema.new({
    id = id.from(_N, "ListRegistrationAssociationsRequest"),
    type = "structure",
    members = {
        RegistrationId = schema.new({
            id = id.from(_N, "ListRegistrationAssociationsInput", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filters = schema.new({
            id = id.from(_N, "ListRegistrationAssociationsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.RegistrationAssociationFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListRegistrationAssociationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListRegistrationAssociationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.RegistrationAssociationMetadata = schema.new({
    id = id.from(_N, "RegistrationAssociationMetadata"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "RegistrationAssociationMetadata", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "RegistrationAssociationMetadata", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "RegistrationAssociationMetadata", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsoCountryCode = schema.new({
            id = id.from(_N, "RegistrationAssociationMetadata", "IsoCountryCode"),
            type = "string",
            name = "IsoCountryCode",
            target_id = prelude.String.id,
        }),
        PhoneNumber = schema.new({
            id = id.from(_N, "RegistrationAssociationMetadata", "PhoneNumber"),
            type = "string",
            name = "PhoneNumber",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRegistrationAssociationsOutput = schema.new({
    id = id.from(_N, "ListRegistrationAssociationsResult"),
    type = "structure",
    members = {
        RegistrationArn = schema.new({
            id = id.from(_N, "ListRegistrationAssociationsOutput", "RegistrationArn"),
            type = "string",
            name = "RegistrationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationId = schema.new({
            id = id.from(_N, "ListRegistrationAssociationsOutput", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationType = schema.new({
            id = id.from(_N, "ListRegistrationAssociationsOutput", "RegistrationType"),
            type = "string",
            name = "RegistrationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationAssociations = schema.new({
            id = id.from(_N, "ListRegistrationAssociationsOutput", "RegistrationAssociations"),
            type = "list",
            name = "RegistrationAssociations",
            target_id = prelude.Document.id,
            list_member = M.RegistrationAssociationMetadata,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListRegistrationAssociationsOutput", "NextToken"),
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
    id = id.from(_N, "ListTagsForResourceResult"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.PutKeywordInput = schema.new({
    id = id.from(_N, "PutKeywordRequest"),
    type = "structure",
    members = {
        OriginationIdentity = schema.new({
            id = id.from(_N, "PutKeywordInput", "OriginationIdentity"),
            type = "string",
            name = "OriginationIdentity",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Keyword = schema.new({
            id = id.from(_N, "PutKeywordInput", "Keyword"),
            type = "string",
            name = "Keyword",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KeywordMessage = schema.new({
            id = id.from(_N, "PutKeywordInput", "KeywordMessage"),
            type = "string",
            name = "KeywordMessage",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KeywordAction = schema.new({
            id = id.from(_N, "PutKeywordInput", "KeywordAction"),
            type = "string",
            name = "KeywordAction",
            target_id = prelude.String.id,
        }),
    },
})

M.PutKeywordOutput = schema.new({
    id = id.from(_N, "PutKeywordResult"),
    type = "structure",
    members = {
        OriginationIdentityArn = schema.new({
            id = id.from(_N, "PutKeywordOutput", "OriginationIdentityArn"),
            type = "string",
            name = "OriginationIdentityArn",
            target_id = prelude.String.id,
        }),
        OriginationIdentity = schema.new({
            id = id.from(_N, "PutKeywordOutput", "OriginationIdentity"),
            type = "string",
            name = "OriginationIdentity",
            target_id = prelude.String.id,
        }),
        Keyword = schema.new({
            id = id.from(_N, "PutKeywordOutput", "Keyword"),
            type = "string",
            name = "Keyword",
            target_id = prelude.String.id,
        }),
        KeywordMessage = schema.new({
            id = id.from(_N, "PutKeywordOutput", "KeywordMessage"),
            type = "string",
            name = "KeywordMessage",
            target_id = prelude.String.id,
        }),
        KeywordAction = schema.new({
            id = id.from(_N, "PutKeywordOutput", "KeywordAction"),
            type = "string",
            name = "KeywordAction",
            target_id = prelude.String.id,
        }),
    },
})

M.PutMessageFeedbackInput = schema.new({
    id = id.from(_N, "PutMessageFeedbackRequest"),
    type = "structure",
    members = {
        MessageId = schema.new({
            id = id.from(_N, "PutMessageFeedbackInput", "MessageId"),
            type = "string",
            name = "MessageId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MessageFeedbackStatus = schema.new({
            id = id.from(_N, "PutMessageFeedbackInput", "MessageFeedbackStatus"),
            type = "string",
            name = "MessageFeedbackStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutMessageFeedbackOutput = schema.new({
    id = id.from(_N, "PutMessageFeedbackResult"),
    type = "structure",
    members = {
        MessageId = schema.new({
            id = id.from(_N, "PutMessageFeedbackOutput", "MessageId"),
            type = "string",
            name = "MessageId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MessageFeedbackStatus = schema.new({
            id = id.from(_N, "PutMessageFeedbackOutput", "MessageFeedbackStatus"),
            type = "string",
            name = "MessageFeedbackStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutOptedOutNumberInput = schema.new({
    id = id.from(_N, "PutOptedOutNumberRequest"),
    type = "structure",
    members = {
        OptOutListName = schema.new({
            id = id.from(_N, "PutOptedOutNumberInput", "OptOutListName"),
            type = "string",
            name = "OptOutListName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OptedOutNumber = schema.new({
            id = id.from(_N, "PutOptedOutNumberInput", "OptedOutNumber"),
            type = "string",
            name = "OptedOutNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutOptedOutNumberOutput = schema.new({
    id = id.from(_N, "PutOptedOutNumberResult"),
    type = "structure",
    members = {
        OptOutListArn = schema.new({
            id = id.from(_N, "PutOptedOutNumberOutput", "OptOutListArn"),
            type = "string",
            name = "OptOutListArn",
            target_id = prelude.String.id,
        }),
        OptOutListName = schema.new({
            id = id.from(_N, "PutOptedOutNumberOutput", "OptOutListName"),
            type = "string",
            name = "OptOutListName",
            target_id = prelude.String.id,
        }),
        OptedOutNumber = schema.new({
            id = id.from(_N, "PutOptedOutNumberOutput", "OptedOutNumber"),
            type = "string",
            name = "OptedOutNumber",
            target_id = prelude.String.id,
        }),
        OptedOutTimestamp = schema.new({
            id = id.from(_N, "PutOptedOutNumberOutput", "OptedOutTimestamp"),
            type = "timestamp",
            name = "OptedOutTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        EndUserOptedOut = schema.new({
            id = id.from(_N, "PutOptedOutNumberOutput", "EndUserOptedOut"),
            type = "boolean",
            name = "EndUserOptedOut",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.PutProtectConfigurationRuleSetNumberOverrideInput = schema.new({
    id = id.from(_N, "PutProtectConfigurationRuleSetNumberOverrideRequest"),
    type = "structure",
    members = {
        ClientToken = schema.new({
            id = id.from(_N, "PutProtectConfigurationRuleSetNumberOverrideInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        ProtectConfigurationId = schema.new({
            id = id.from(_N, "PutProtectConfigurationRuleSetNumberOverrideInput", "ProtectConfigurationId"),
            type = "string",
            name = "ProtectConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DestinationPhoneNumber = schema.new({
            id = id.from(_N, "PutProtectConfigurationRuleSetNumberOverrideInput", "DestinationPhoneNumber"),
            type = "string",
            name = "DestinationPhoneNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Action = schema.new({
            id = id.from(_N, "PutProtectConfigurationRuleSetNumberOverrideInput", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExpirationTimestamp = schema.new({
            id = id.from(_N, "PutProtectConfigurationRuleSetNumberOverrideInput", "ExpirationTimestamp"),
            type = "timestamp",
            name = "ExpirationTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.PutProtectConfigurationRuleSetNumberOverrideOutput = schema.new({
    id = id.from(_N, "PutProtectConfigurationRuleSetNumberOverrideResult"),
    type = "structure",
    members = {
        ProtectConfigurationArn = schema.new({
            id = id.from(_N, "PutProtectConfigurationRuleSetNumberOverrideOutput", "ProtectConfigurationArn"),
            type = "string",
            name = "ProtectConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProtectConfigurationId = schema.new({
            id = id.from(_N, "PutProtectConfigurationRuleSetNumberOverrideOutput", "ProtectConfigurationId"),
            type = "string",
            name = "ProtectConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DestinationPhoneNumber = schema.new({
            id = id.from(_N, "PutProtectConfigurationRuleSetNumberOverrideOutput", "DestinationPhoneNumber"),
            type = "string",
            name = "DestinationPhoneNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "PutProtectConfigurationRuleSetNumberOverrideOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Action = schema.new({
            id = id.from(_N, "PutProtectConfigurationRuleSetNumberOverrideOutput", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsoCountryCode = schema.new({
            id = id.from(_N, "PutProtectConfigurationRuleSetNumberOverrideOutput", "IsoCountryCode"),
            type = "string",
            name = "IsoCountryCode",
            target_id = prelude.String.id,
        }),
        ExpirationTimestamp = schema.new({
            id = id.from(_N, "PutProtectConfigurationRuleSetNumberOverrideOutput", "ExpirationTimestamp"),
            type = "timestamp",
            name = "ExpirationTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.PutRegistrationFieldValueInput = schema.new({
    id = id.from(_N, "PutRegistrationFieldValueRequest"),
    type = "structure",
    members = {
        RegistrationId = schema.new({
            id = id.from(_N, "PutRegistrationFieldValueInput", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FieldPath = schema.new({
            id = id.from(_N, "PutRegistrationFieldValueInput", "FieldPath"),
            type = "string",
            name = "FieldPath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SelectChoices = schema.new({
            id = id.from(_N, "PutRegistrationFieldValueInput", "SelectChoices"),
            type = "list",
            name = "SelectChoices",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        TextValue = schema.new({
            id = id.from(_N, "PutRegistrationFieldValueInput", "TextValue"),
            type = "string",
            name = "TextValue",
            target_id = prelude.String.id,
        }),
        RegistrationAttachmentId = schema.new({
            id = id.from(_N, "PutRegistrationFieldValueInput", "RegistrationAttachmentId"),
            type = "string",
            name = "RegistrationAttachmentId",
            target_id = prelude.String.id,
        }),
    },
})

M.PutRegistrationFieldValueOutput = schema.new({
    id = id.from(_N, "PutRegistrationFieldValueResult"),
    type = "structure",
    members = {
        RegistrationArn = schema.new({
            id = id.from(_N, "PutRegistrationFieldValueOutput", "RegistrationArn"),
            type = "string",
            name = "RegistrationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationId = schema.new({
            id = id.from(_N, "PutRegistrationFieldValueOutput", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VersionNumber = schema.new({
            id = id.from(_N, "PutRegistrationFieldValueOutput", "VersionNumber"),
            type = "long",
            name = "VersionNumber",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FieldPath = schema.new({
            id = id.from(_N, "PutRegistrationFieldValueOutput", "FieldPath"),
            type = "string",
            name = "FieldPath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SelectChoices = schema.new({
            id = id.from(_N, "PutRegistrationFieldValueOutput", "SelectChoices"),
            type = "list",
            name = "SelectChoices",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        TextValue = schema.new({
            id = id.from(_N, "PutRegistrationFieldValueOutput", "TextValue"),
            type = "string",
            name = "TextValue",
            target_id = prelude.String.id,
        }),
        RegistrationAttachmentId = schema.new({
            id = id.from(_N, "PutRegistrationFieldValueOutput", "RegistrationAttachmentId"),
            type = "string",
            name = "RegistrationAttachmentId",
            target_id = prelude.String.id,
        }),
    },
})

M.PutResourcePolicyInput = schema.new({
    id = id.from(_N, "PutResourcePolicyRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Policy = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutResourcePolicyOutput = schema.new({
    id = id.from(_N, "PutResourcePolicyResult"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "PutResourcePolicyOutput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        Policy = schema.new({
            id = id.from(_N, "PutResourcePolicyOutput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "PutResourcePolicyOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ReleasePhoneNumberInput = schema.new({
    id = id.from(_N, "ReleasePhoneNumberRequest"),
    type = "structure",
    members = {
        PhoneNumberId = schema.new({
            id = id.from(_N, "ReleasePhoneNumberInput", "PhoneNumberId"),
            type = "string",
            name = "PhoneNumberId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ReleasePhoneNumberOutput = schema.new({
    id = id.from(_N, "ReleasePhoneNumberResult"),
    type = "structure",
    members = {
        PhoneNumberArn = schema.new({
            id = id.from(_N, "ReleasePhoneNumberOutput", "PhoneNumberArn"),
            type = "string",
            name = "PhoneNumberArn",
            target_id = prelude.String.id,
        }),
        PhoneNumberId = schema.new({
            id = id.from(_N, "ReleasePhoneNumberOutput", "PhoneNumberId"),
            type = "string",
            name = "PhoneNumberId",
            target_id = prelude.String.id,
        }),
        PhoneNumber = schema.new({
            id = id.from(_N, "ReleasePhoneNumberOutput", "PhoneNumber"),
            type = "string",
            name = "PhoneNumber",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ReleasePhoneNumberOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        IsoCountryCode = schema.new({
            id = id.from(_N, "ReleasePhoneNumberOutput", "IsoCountryCode"),
            type = "string",
            name = "IsoCountryCode",
            target_id = prelude.String.id,
        }),
        MessageType = schema.new({
            id = id.from(_N, "ReleasePhoneNumberOutput", "MessageType"),
            type = "string",
            name = "MessageType",
            target_id = prelude.String.id,
        }),
        NumberCapabilities = schema.new({
            id = id.from(_N, "ReleasePhoneNumberOutput", "NumberCapabilities"),
            type = "list",
            name = "NumberCapabilities",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NumberType = schema.new({
            id = id.from(_N, "ReleasePhoneNumberOutput", "NumberType"),
            type = "string",
            name = "NumberType",
            target_id = prelude.String.id,
        }),
        MonthlyLeasingPrice = schema.new({
            id = id.from(_N, "ReleasePhoneNumberOutput", "MonthlyLeasingPrice"),
            type = "string",
            name = "MonthlyLeasingPrice",
            target_id = prelude.String.id,
        }),
        TwoWayEnabled = schema.new({
            id = id.from(_N, "ReleasePhoneNumberOutput", "TwoWayEnabled"),
            type = "boolean",
            name = "TwoWayEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        TwoWayChannelArn = schema.new({
            id = id.from(_N, "ReleasePhoneNumberOutput", "TwoWayChannelArn"),
            type = "string",
            name = "TwoWayChannelArn",
            target_id = prelude.String.id,
        }),
        TwoWayChannelRole = schema.new({
            id = id.from(_N, "ReleasePhoneNumberOutput", "TwoWayChannelRole"),
            type = "string",
            name = "TwoWayChannelRole",
            target_id = prelude.String.id,
        }),
        SelfManagedOptOutsEnabled = schema.new({
            id = id.from(_N, "ReleasePhoneNumberOutput", "SelfManagedOptOutsEnabled"),
            type = "boolean",
            name = "SelfManagedOptOutsEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        OptOutListName = schema.new({
            id = id.from(_N, "ReleasePhoneNumberOutput", "OptOutListName"),
            type = "string",
            name = "OptOutListName",
            target_id = prelude.String.id,
        }),
        RegistrationId = schema.new({
            id = id.from(_N, "ReleasePhoneNumberOutput", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "ReleasePhoneNumberOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ReleaseSenderIdInput = schema.new({
    id = id.from(_N, "ReleaseSenderIdRequest"),
    type = "structure",
    members = {
        SenderId = schema.new({
            id = id.from(_N, "ReleaseSenderIdInput", "SenderId"),
            type = "string",
            name = "SenderId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsoCountryCode = schema.new({
            id = id.from(_N, "ReleaseSenderIdInput", "IsoCountryCode"),
            type = "string",
            name = "IsoCountryCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ReleaseSenderIdOutput = schema.new({
    id = id.from(_N, "ReleaseSenderIdResult"),
    type = "structure",
    members = {
        SenderIdArn = schema.new({
            id = id.from(_N, "ReleaseSenderIdOutput", "SenderIdArn"),
            type = "string",
            name = "SenderIdArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SenderId = schema.new({
            id = id.from(_N, "ReleaseSenderIdOutput", "SenderId"),
            type = "string",
            name = "SenderId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsoCountryCode = schema.new({
            id = id.from(_N, "ReleaseSenderIdOutput", "IsoCountryCode"),
            type = "string",
            name = "IsoCountryCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MessageTypes = schema.new({
            id = id.from(_N, "ReleaseSenderIdOutput", "MessageTypes"),
            type = "list",
            name = "MessageTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MonthlyLeasingPrice = schema.new({
            id = id.from(_N, "ReleaseSenderIdOutput", "MonthlyLeasingPrice"),
            type = "string",
            name = "MonthlyLeasingPrice",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Registered = schema.new({
            id = id.from(_N, "ReleaseSenderIdOutput", "Registered"),
            type = "boolean",
            name = "Registered",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        RegistrationId = schema.new({
            id = id.from(_N, "ReleaseSenderIdOutput", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
        }),
    },
})

M.RequestPhoneNumberInput = schema.new({
    id = id.from(_N, "RequestPhoneNumberRequest"),
    type = "structure",
    members = {
        IsoCountryCode = schema.new({
            id = id.from(_N, "RequestPhoneNumberInput", "IsoCountryCode"),
            type = "string",
            name = "IsoCountryCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MessageType = schema.new({
            id = id.from(_N, "RequestPhoneNumberInput", "MessageType"),
            type = "string",
            name = "MessageType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NumberCapabilities = schema.new({
            id = id.from(_N, "RequestPhoneNumberInput", "NumberCapabilities"),
            type = "list",
            name = "NumberCapabilities",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NumberType = schema.new({
            id = id.from(_N, "RequestPhoneNumberInput", "NumberType"),
            type = "string",
            name = "NumberType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OptOutListName = schema.new({
            id = id.from(_N, "RequestPhoneNumberInput", "OptOutListName"),
            type = "string",
            name = "OptOutListName",
            target_id = prelude.String.id,
        }),
        PoolId = schema.new({
            id = id.from(_N, "RequestPhoneNumberInput", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
        }),
        RegistrationId = schema.new({
            id = id.from(_N, "RequestPhoneNumberInput", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
        }),
        InternationalSendingEnabled = schema.new({
            id = id.from(_N, "RequestPhoneNumberInput", "InternationalSendingEnabled"),
            type = "boolean",
            name = "InternationalSendingEnabled",
            target_id = prelude.Boolean.id,
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "RequestPhoneNumberInput", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "RequestPhoneNumberInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "RequestPhoneNumberInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.RequestPhoneNumberOutput = schema.new({
    id = id.from(_N, "RequestPhoneNumberResult"),
    type = "structure",
    members = {
        PhoneNumberArn = schema.new({
            id = id.from(_N, "RequestPhoneNumberOutput", "PhoneNumberArn"),
            type = "string",
            name = "PhoneNumberArn",
            target_id = prelude.String.id,
        }),
        PhoneNumberId = schema.new({
            id = id.from(_N, "RequestPhoneNumberOutput", "PhoneNumberId"),
            type = "string",
            name = "PhoneNumberId",
            target_id = prelude.String.id,
        }),
        PhoneNumber = schema.new({
            id = id.from(_N, "RequestPhoneNumberOutput", "PhoneNumber"),
            type = "string",
            name = "PhoneNumber",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "RequestPhoneNumberOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        IsoCountryCode = schema.new({
            id = id.from(_N, "RequestPhoneNumberOutput", "IsoCountryCode"),
            type = "string",
            name = "IsoCountryCode",
            target_id = prelude.String.id,
        }),
        MessageType = schema.new({
            id = id.from(_N, "RequestPhoneNumberOutput", "MessageType"),
            type = "string",
            name = "MessageType",
            target_id = prelude.String.id,
        }),
        NumberCapabilities = schema.new({
            id = id.from(_N, "RequestPhoneNumberOutput", "NumberCapabilities"),
            type = "list",
            name = "NumberCapabilities",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NumberType = schema.new({
            id = id.from(_N, "RequestPhoneNumberOutput", "NumberType"),
            type = "string",
            name = "NumberType",
            target_id = prelude.String.id,
        }),
        MonthlyLeasingPrice = schema.new({
            id = id.from(_N, "RequestPhoneNumberOutput", "MonthlyLeasingPrice"),
            type = "string",
            name = "MonthlyLeasingPrice",
            target_id = prelude.String.id,
        }),
        TwoWayEnabled = schema.new({
            id = id.from(_N, "RequestPhoneNumberOutput", "TwoWayEnabled"),
            type = "boolean",
            name = "TwoWayEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        TwoWayChannelArn = schema.new({
            id = id.from(_N, "RequestPhoneNumberOutput", "TwoWayChannelArn"),
            type = "string",
            name = "TwoWayChannelArn",
            target_id = prelude.String.id,
        }),
        TwoWayChannelRole = schema.new({
            id = id.from(_N, "RequestPhoneNumberOutput", "TwoWayChannelRole"),
            type = "string",
            name = "TwoWayChannelRole",
            target_id = prelude.String.id,
        }),
        SelfManagedOptOutsEnabled = schema.new({
            id = id.from(_N, "RequestPhoneNumberOutput", "SelfManagedOptOutsEnabled"),
            type = "boolean",
            name = "SelfManagedOptOutsEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        OptOutListName = schema.new({
            id = id.from(_N, "RequestPhoneNumberOutput", "OptOutListName"),
            type = "string",
            name = "OptOutListName",
            target_id = prelude.String.id,
        }),
        InternationalSendingEnabled = schema.new({
            id = id.from(_N, "RequestPhoneNumberOutput", "InternationalSendingEnabled"),
            type = "boolean",
            name = "InternationalSendingEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "RequestPhoneNumberOutput", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        PoolId = schema.new({
            id = id.from(_N, "RequestPhoneNumberOutput", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
        }),
        RegistrationId = schema.new({
            id = id.from(_N, "RequestPhoneNumberOutput", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "RequestPhoneNumberOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "RequestPhoneNumberOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.RequestSenderIdInput = schema.new({
    id = id.from(_N, "RequestSenderIdRequest"),
    type = "structure",
    members = {
        SenderId = schema.new({
            id = id.from(_N, "RequestSenderIdInput", "SenderId"),
            type = "string",
            name = "SenderId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsoCountryCode = schema.new({
            id = id.from(_N, "RequestSenderIdInput", "IsoCountryCode"),
            type = "string",
            name = "IsoCountryCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MessageTypes = schema.new({
            id = id.from(_N, "RequestSenderIdInput", "MessageTypes"),
            type = "list",
            name = "MessageTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "RequestSenderIdInput", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "RequestSenderIdInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "RequestSenderIdInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.RequestSenderIdOutput = schema.new({
    id = id.from(_N, "RequestSenderIdResult"),
    type = "structure",
    members = {
        SenderIdArn = schema.new({
            id = id.from(_N, "RequestSenderIdOutput", "SenderIdArn"),
            type = "string",
            name = "SenderIdArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SenderId = schema.new({
            id = id.from(_N, "RequestSenderIdOutput", "SenderId"),
            type = "string",
            name = "SenderId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsoCountryCode = schema.new({
            id = id.from(_N, "RequestSenderIdOutput", "IsoCountryCode"),
            type = "string",
            name = "IsoCountryCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MessageTypes = schema.new({
            id = id.from(_N, "RequestSenderIdOutput", "MessageTypes"),
            type = "list",
            name = "MessageTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MonthlyLeasingPrice = schema.new({
            id = id.from(_N, "RequestSenderIdOutput", "MonthlyLeasingPrice"),
            type = "string",
            name = "MonthlyLeasingPrice",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "RequestSenderIdOutput", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        Registered = schema.new({
            id = id.from(_N, "RequestSenderIdOutput", "Registered"),
            type = "boolean",
            name = "Registered",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "RequestSenderIdOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.SendDestinationNumberVerificationCodeInput = schema.new({
    id = id.from(_N, "SendDestinationNumberVerificationCodeRequest"),
    type = "structure",
    members = {
        VerifiedDestinationNumberId = schema.new({
            id = id.from(_N, "SendDestinationNumberVerificationCodeInput", "VerifiedDestinationNumberId"),
            type = "string",
            name = "VerifiedDestinationNumberId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VerificationChannel = schema.new({
            id = id.from(_N, "SendDestinationNumberVerificationCodeInput", "VerificationChannel"),
            type = "string",
            name = "VerificationChannel",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "SendDestinationNumberVerificationCodeInput", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
        }),
        OriginationIdentity = schema.new({
            id = id.from(_N, "SendDestinationNumberVerificationCodeInput", "OriginationIdentity"),
            type = "string",
            name = "OriginationIdentity",
            target_id = prelude.String.id,
        }),
        ConfigurationSetName = schema.new({
            id = id.from(_N, "SendDestinationNumberVerificationCodeInput", "ConfigurationSetName"),
            type = "string",
            name = "ConfigurationSetName",
            target_id = prelude.String.id,
        }),
        Context = schema.new({
            id = id.from(_N, "SendDestinationNumberVerificationCodeInput", "Context"),
            type = "map",
            name = "Context",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        DestinationCountryParameters = schema.new({
            id = id.from(_N, "SendDestinationNumberVerificationCodeInput", "DestinationCountryParameters"),
            type = "map",
            name = "DestinationCountryParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.SendDestinationNumberVerificationCodeOutput = schema.new({
    id = id.from(_N, "SendDestinationNumberVerificationCodeResult"),
    type = "structure",
    members = {
        MessageId = schema.new({
            id = id.from(_N, "SendDestinationNumberVerificationCodeOutput", "MessageId"),
            type = "string",
            name = "MessageId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SendMediaMessageInput = schema.new({
    id = id.from(_N, "SendMediaMessageRequest"),
    type = "structure",
    members = {
        DestinationPhoneNumber = schema.new({
            id = id.from(_N, "SendMediaMessageInput", "DestinationPhoneNumber"),
            type = "string",
            name = "DestinationPhoneNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OriginationIdentity = schema.new({
            id = id.from(_N, "SendMediaMessageInput", "OriginationIdentity"),
            type = "string",
            name = "OriginationIdentity",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MessageBody = schema.new({
            id = id.from(_N, "SendMediaMessageInput", "MessageBody"),
            type = "string",
            name = "MessageBody",
            target_id = prelude.String.id,
        }),
        MediaUrls = schema.new({
            id = id.from(_N, "SendMediaMessageInput", "MediaUrls"),
            type = "list",
            name = "MediaUrls",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ConfigurationSetName = schema.new({
            id = id.from(_N, "SendMediaMessageInput", "ConfigurationSetName"),
            type = "string",
            name = "ConfigurationSetName",
            target_id = prelude.String.id,
        }),
        MaxPrice = schema.new({
            id = id.from(_N, "SendMediaMessageInput", "MaxPrice"),
            type = "string",
            name = "MaxPrice",
            target_id = prelude.String.id,
        }),
        TimeToLive = schema.new({
            id = id.from(_N, "SendMediaMessageInput", "TimeToLive"),
            type = "integer",
            name = "TimeToLive",
            target_id = prelude.Integer.id,
        }),
        Context = schema.new({
            id = id.from(_N, "SendMediaMessageInput", "Context"),
            type = "map",
            name = "Context",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        DryRun = schema.new({
            id = id.from(_N, "SendMediaMessageInput", "DryRun"),
            type = "boolean",
            name = "DryRun",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        ProtectConfigurationId = schema.new({
            id = id.from(_N, "SendMediaMessageInput", "ProtectConfigurationId"),
            type = "string",
            name = "ProtectConfigurationId",
            target_id = prelude.String.id,
        }),
        MessageFeedbackEnabled = schema.new({
            id = id.from(_N, "SendMediaMessageInput", "MessageFeedbackEnabled"),
            type = "boolean",
            name = "MessageFeedbackEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.SendMediaMessageOutput = schema.new({
    id = id.from(_N, "SendMediaMessageResult"),
    type = "structure",
    members = {
        MessageId = schema.new({
            id = id.from(_N, "SendMediaMessageOutput", "MessageId"),
            type = "string",
            name = "MessageId",
            target_id = prelude.String.id,
        }),
    },
})

M.SendNotifyTextMessageInput = schema.new({
    id = id.from(_N, "SendNotifyTextMessageRequest"),
    type = "structure",
    members = {
        NotifyConfigurationId = schema.new({
            id = id.from(_N, "SendNotifyTextMessageInput", "NotifyConfigurationId"),
            type = "string",
            name = "NotifyConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DestinationPhoneNumber = schema.new({
            id = id.from(_N, "SendNotifyTextMessageInput", "DestinationPhoneNumber"),
            type = "string",
            name = "DestinationPhoneNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TemplateId = schema.new({
            id = id.from(_N, "SendNotifyTextMessageInput", "TemplateId"),
            type = "string",
            name = "TemplateId",
            target_id = prelude.String.id,
        }),
        TemplateVariables = schema.new({
            id = id.from(_N, "SendNotifyTextMessageInput", "TemplateVariables"),
            type = "map",
            name = "TemplateVariables",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TimeToLive = schema.new({
            id = id.from(_N, "SendNotifyTextMessageInput", "TimeToLive"),
            type = "integer",
            name = "TimeToLive",
            target_id = prelude.Integer.id,
        }),
        Context = schema.new({
            id = id.from(_N, "SendNotifyTextMessageInput", "Context"),
            type = "map",
            name = "Context",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ConfigurationSetName = schema.new({
            id = id.from(_N, "SendNotifyTextMessageInput", "ConfigurationSetName"),
            type = "string",
            name = "ConfigurationSetName",
            target_id = prelude.String.id,
        }),
        DryRun = schema.new({
            id = id.from(_N, "SendNotifyTextMessageInput", "DryRun"),
            type = "boolean",
            name = "DryRun",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        MessageFeedbackEnabled = schema.new({
            id = id.from(_N, "SendNotifyTextMessageInput", "MessageFeedbackEnabled"),
            type = "boolean",
            name = "MessageFeedbackEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.SendNotifyTextMessageOutput = schema.new({
    id = id.from(_N, "SendNotifyTextMessageResult"),
    type = "structure",
    members = {
        MessageId = schema.new({
            id = id.from(_N, "SendNotifyTextMessageOutput", "MessageId"),
            type = "string",
            name = "MessageId",
            target_id = prelude.String.id,
        }),
        TemplateId = schema.new({
            id = id.from(_N, "SendNotifyTextMessageOutput", "TemplateId"),
            type = "string",
            name = "TemplateId",
            target_id = prelude.String.id,
        }),
        ResolvedMessageBody = schema.new({
            id = id.from(_N, "SendNotifyTextMessageOutput", "ResolvedMessageBody"),
            type = "string",
            name = "ResolvedMessageBody",
            target_id = prelude.String.id,
        }),
    },
})

M.SendNotifyVoiceMessageInput = schema.new({
    id = id.from(_N, "SendNotifyVoiceMessageRequest"),
    type = "structure",
    members = {
        NotifyConfigurationId = schema.new({
            id = id.from(_N, "SendNotifyVoiceMessageInput", "NotifyConfigurationId"),
            type = "string",
            name = "NotifyConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DestinationPhoneNumber = schema.new({
            id = id.from(_N, "SendNotifyVoiceMessageInput", "DestinationPhoneNumber"),
            type = "string",
            name = "DestinationPhoneNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TemplateId = schema.new({
            id = id.from(_N, "SendNotifyVoiceMessageInput", "TemplateId"),
            type = "string",
            name = "TemplateId",
            target_id = prelude.String.id,
        }),
        TemplateVariables = schema.new({
            id = id.from(_N, "SendNotifyVoiceMessageInput", "TemplateVariables"),
            type = "map",
            name = "TemplateVariables",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VoiceId = schema.new({
            id = id.from(_N, "SendNotifyVoiceMessageInput", "VoiceId"),
            type = "string",
            name = "VoiceId",
            target_id = prelude.String.id,
        }),
        TimeToLive = schema.new({
            id = id.from(_N, "SendNotifyVoiceMessageInput", "TimeToLive"),
            type = "integer",
            name = "TimeToLive",
            target_id = prelude.Integer.id,
        }),
        Context = schema.new({
            id = id.from(_N, "SendNotifyVoiceMessageInput", "Context"),
            type = "map",
            name = "Context",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ConfigurationSetName = schema.new({
            id = id.from(_N, "SendNotifyVoiceMessageInput", "ConfigurationSetName"),
            type = "string",
            name = "ConfigurationSetName",
            target_id = prelude.String.id,
        }),
        DryRun = schema.new({
            id = id.from(_N, "SendNotifyVoiceMessageInput", "DryRun"),
            type = "boolean",
            name = "DryRun",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        MessageFeedbackEnabled = schema.new({
            id = id.from(_N, "SendNotifyVoiceMessageInput", "MessageFeedbackEnabled"),
            type = "boolean",
            name = "MessageFeedbackEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.SendNotifyVoiceMessageOutput = schema.new({
    id = id.from(_N, "SendNotifyVoiceMessageResult"),
    type = "structure",
    members = {
        MessageId = schema.new({
            id = id.from(_N, "SendNotifyVoiceMessageOutput", "MessageId"),
            type = "string",
            name = "MessageId",
            target_id = prelude.String.id,
        }),
        TemplateId = schema.new({
            id = id.from(_N, "SendNotifyVoiceMessageOutput", "TemplateId"),
            type = "string",
            name = "TemplateId",
            target_id = prelude.String.id,
        }),
        ResolvedMessageBody = schema.new({
            id = id.from(_N, "SendNotifyVoiceMessageOutput", "ResolvedMessageBody"),
            type = "string",
            name = "ResolvedMessageBody",
            target_id = prelude.String.id,
        }),
    },
})

M.SendTextMessageInput = schema.new({
    id = id.from(_N, "SendTextMessageRequest"),
    type = "structure",
    members = {
        DestinationPhoneNumber = schema.new({
            id = id.from(_N, "SendTextMessageInput", "DestinationPhoneNumber"),
            type = "string",
            name = "DestinationPhoneNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OriginationIdentity = schema.new({
            id = id.from(_N, "SendTextMessageInput", "OriginationIdentity"),
            type = "string",
            name = "OriginationIdentity",
            target_id = prelude.String.id,
        }),
        MessageBody = schema.new({
            id = id.from(_N, "SendTextMessageInput", "MessageBody"),
            type = "string",
            name = "MessageBody",
            target_id = prelude.String.id,
        }),
        MessageType = schema.new({
            id = id.from(_N, "SendTextMessageInput", "MessageType"),
            type = "string",
            name = "MessageType",
            target_id = prelude.String.id,
        }),
        Keyword = schema.new({
            id = id.from(_N, "SendTextMessageInput", "Keyword"),
            type = "string",
            name = "Keyword",
            target_id = prelude.String.id,
        }),
        ConfigurationSetName = schema.new({
            id = id.from(_N, "SendTextMessageInput", "ConfigurationSetName"),
            type = "string",
            name = "ConfigurationSetName",
            target_id = prelude.String.id,
        }),
        MaxPrice = schema.new({
            id = id.from(_N, "SendTextMessageInput", "MaxPrice"),
            type = "string",
            name = "MaxPrice",
            target_id = prelude.String.id,
        }),
        TimeToLive = schema.new({
            id = id.from(_N, "SendTextMessageInput", "TimeToLive"),
            type = "integer",
            name = "TimeToLive",
            target_id = prelude.Integer.id,
        }),
        Context = schema.new({
            id = id.from(_N, "SendTextMessageInput", "Context"),
            type = "map",
            name = "Context",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        DestinationCountryParameters = schema.new({
            id = id.from(_N, "SendTextMessageInput", "DestinationCountryParameters"),
            type = "map",
            name = "DestinationCountryParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        DryRun = schema.new({
            id = id.from(_N, "SendTextMessageInput", "DryRun"),
            type = "boolean",
            name = "DryRun",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        ProtectConfigurationId = schema.new({
            id = id.from(_N, "SendTextMessageInput", "ProtectConfigurationId"),
            type = "string",
            name = "ProtectConfigurationId",
            target_id = prelude.String.id,
        }),
        MessageFeedbackEnabled = schema.new({
            id = id.from(_N, "SendTextMessageInput", "MessageFeedbackEnabled"),
            type = "boolean",
            name = "MessageFeedbackEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.SendTextMessageOutput = schema.new({
    id = id.from(_N, "SendTextMessageResult"),
    type = "structure",
    members = {
        MessageId = schema.new({
            id = id.from(_N, "SendTextMessageOutput", "MessageId"),
            type = "string",
            name = "MessageId",
            target_id = prelude.String.id,
        }),
    },
})

M.SendVoiceMessageInput = schema.new({
    id = id.from(_N, "SendVoiceMessageRequest"),
    type = "structure",
    members = {
        DestinationPhoneNumber = schema.new({
            id = id.from(_N, "SendVoiceMessageInput", "DestinationPhoneNumber"),
            type = "string",
            name = "DestinationPhoneNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OriginationIdentity = schema.new({
            id = id.from(_N, "SendVoiceMessageInput", "OriginationIdentity"),
            type = "string",
            name = "OriginationIdentity",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MessageBody = schema.new({
            id = id.from(_N, "SendVoiceMessageInput", "MessageBody"),
            type = "string",
            name = "MessageBody",
            target_id = prelude.String.id,
        }),
        MessageBodyTextType = schema.new({
            id = id.from(_N, "SendVoiceMessageInput", "MessageBodyTextType"),
            type = "string",
            name = "MessageBodyTextType",
            target_id = prelude.String.id,
        }),
        VoiceId = schema.new({
            id = id.from(_N, "SendVoiceMessageInput", "VoiceId"),
            type = "string",
            name = "VoiceId",
            target_id = prelude.String.id,
        }),
        ConfigurationSetName = schema.new({
            id = id.from(_N, "SendVoiceMessageInput", "ConfigurationSetName"),
            type = "string",
            name = "ConfigurationSetName",
            target_id = prelude.String.id,
        }),
        MaxPricePerMinute = schema.new({
            id = id.from(_N, "SendVoiceMessageInput", "MaxPricePerMinute"),
            type = "string",
            name = "MaxPricePerMinute",
            target_id = prelude.String.id,
        }),
        TimeToLive = schema.new({
            id = id.from(_N, "SendVoiceMessageInput", "TimeToLive"),
            type = "integer",
            name = "TimeToLive",
            target_id = prelude.Integer.id,
        }),
        Context = schema.new({
            id = id.from(_N, "SendVoiceMessageInput", "Context"),
            type = "map",
            name = "Context",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        DryRun = schema.new({
            id = id.from(_N, "SendVoiceMessageInput", "DryRun"),
            type = "boolean",
            name = "DryRun",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        ProtectConfigurationId = schema.new({
            id = id.from(_N, "SendVoiceMessageInput", "ProtectConfigurationId"),
            type = "string",
            name = "ProtectConfigurationId",
            target_id = prelude.String.id,
        }),
        MessageFeedbackEnabled = schema.new({
            id = id.from(_N, "SendVoiceMessageInput", "MessageFeedbackEnabled"),
            type = "boolean",
            name = "MessageFeedbackEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.SendVoiceMessageOutput = schema.new({
    id = id.from(_N, "SendVoiceMessageResult"),
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

M.SetAccountDefaultProtectConfigurationInput = schema.new({
    id = id.from(_N, "SetAccountDefaultProtectConfigurationRequest"),
    type = "structure",
    members = {
        ProtectConfigurationId = schema.new({
            id = id.from(_N, "SetAccountDefaultProtectConfigurationInput", "ProtectConfigurationId"),
            type = "string",
            name = "ProtectConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SetAccountDefaultProtectConfigurationOutput = schema.new({
    id = id.from(_N, "SetAccountDefaultProtectConfigurationResult"),
    type = "structure",
    members = {
        DefaultProtectConfigurationArn = schema.new({
            id = id.from(_N, "SetAccountDefaultProtectConfigurationOutput", "DefaultProtectConfigurationArn"),
            type = "string",
            name = "DefaultProtectConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DefaultProtectConfigurationId = schema.new({
            id = id.from(_N, "SetAccountDefaultProtectConfigurationOutput", "DefaultProtectConfigurationId"),
            type = "string",
            name = "DefaultProtectConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SetDefaultMessageFeedbackEnabledInput = schema.new({
    id = id.from(_N, "SetDefaultMessageFeedbackEnabledRequest"),
    type = "structure",
    members = {
        ConfigurationSetName = schema.new({
            id = id.from(_N, "SetDefaultMessageFeedbackEnabledInput", "ConfigurationSetName"),
            type = "string",
            name = "ConfigurationSetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MessageFeedbackEnabled = schema.new({
            id = id.from(_N, "SetDefaultMessageFeedbackEnabledInput", "MessageFeedbackEnabled"),
            type = "boolean",
            name = "MessageFeedbackEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SetDefaultMessageFeedbackEnabledOutput = schema.new({
    id = id.from(_N, "SetDefaultMessageFeedbackEnabledResult"),
    type = "structure",
    members = {
        ConfigurationSetArn = schema.new({
            id = id.from(_N, "SetDefaultMessageFeedbackEnabledOutput", "ConfigurationSetArn"),
            type = "string",
            name = "ConfigurationSetArn",
            target_id = prelude.String.id,
        }),
        ConfigurationSetName = schema.new({
            id = id.from(_N, "SetDefaultMessageFeedbackEnabledOutput", "ConfigurationSetName"),
            type = "string",
            name = "ConfigurationSetName",
            target_id = prelude.String.id,
        }),
        MessageFeedbackEnabled = schema.new({
            id = id.from(_N, "SetDefaultMessageFeedbackEnabledOutput", "MessageFeedbackEnabled"),
            type = "boolean",
            name = "MessageFeedbackEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.SetDefaultMessageTypeInput = schema.new({
    id = id.from(_N, "SetDefaultMessageTypeRequest"),
    type = "structure",
    members = {
        ConfigurationSetName = schema.new({
            id = id.from(_N, "SetDefaultMessageTypeInput", "ConfigurationSetName"),
            type = "string",
            name = "ConfigurationSetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MessageType = schema.new({
            id = id.from(_N, "SetDefaultMessageTypeInput", "MessageType"),
            type = "string",
            name = "MessageType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SetDefaultMessageTypeOutput = schema.new({
    id = id.from(_N, "SetDefaultMessageTypeResult"),
    type = "structure",
    members = {
        ConfigurationSetArn = schema.new({
            id = id.from(_N, "SetDefaultMessageTypeOutput", "ConfigurationSetArn"),
            type = "string",
            name = "ConfigurationSetArn",
            target_id = prelude.String.id,
        }),
        ConfigurationSetName = schema.new({
            id = id.from(_N, "SetDefaultMessageTypeOutput", "ConfigurationSetName"),
            type = "string",
            name = "ConfigurationSetName",
            target_id = prelude.String.id,
        }),
        MessageType = schema.new({
            id = id.from(_N, "SetDefaultMessageTypeOutput", "MessageType"),
            type = "string",
            name = "MessageType",
            target_id = prelude.String.id,
        }),
    },
})

M.SetDefaultSenderIdInput = schema.new({
    id = id.from(_N, "SetDefaultSenderIdRequest"),
    type = "structure",
    members = {
        ConfigurationSetName = schema.new({
            id = id.from(_N, "SetDefaultSenderIdInput", "ConfigurationSetName"),
            type = "string",
            name = "ConfigurationSetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SenderId = schema.new({
            id = id.from(_N, "SetDefaultSenderIdInput", "SenderId"),
            type = "string",
            name = "SenderId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SetDefaultSenderIdOutput = schema.new({
    id = id.from(_N, "SetDefaultSenderIdResult"),
    type = "structure",
    members = {
        ConfigurationSetArn = schema.new({
            id = id.from(_N, "SetDefaultSenderIdOutput", "ConfigurationSetArn"),
            type = "string",
            name = "ConfigurationSetArn",
            target_id = prelude.String.id,
        }),
        ConfigurationSetName = schema.new({
            id = id.from(_N, "SetDefaultSenderIdOutput", "ConfigurationSetName"),
            type = "string",
            name = "ConfigurationSetName",
            target_id = prelude.String.id,
        }),
        SenderId = schema.new({
            id = id.from(_N, "SetDefaultSenderIdOutput", "SenderId"),
            type = "string",
            name = "SenderId",
            target_id = prelude.String.id,
        }),
    },
})

M.SetMediaMessageSpendLimitOverrideInput = schema.new({
    id = id.from(_N, "SetMediaMessageSpendLimitOverrideRequest"),
    type = "structure",
    members = {
        MonthlyLimit = schema.new({
            id = id.from(_N, "SetMediaMessageSpendLimitOverrideInput", "MonthlyLimit"),
            type = "long",
            name = "MonthlyLimit",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SetMediaMessageSpendLimitOverrideOutput = schema.new({
    id = id.from(_N, "SetMediaMessageSpendLimitOverrideResult"),
    type = "structure",
    members = {
        MonthlyLimit = schema.new({
            id = id.from(_N, "SetMediaMessageSpendLimitOverrideOutput", "MonthlyLimit"),
            type = "long",
            name = "MonthlyLimit",
            target_id = prelude.Long.id,
        }),
    },
})

M.SetNotifyMessageSpendLimitOverrideInput = schema.new({
    id = id.from(_N, "SetNotifyMessageSpendLimitOverrideRequest"),
    type = "structure",
    members = {
        MonthlyLimit = schema.new({
            id = id.from(_N, "SetNotifyMessageSpendLimitOverrideInput", "MonthlyLimit"),
            type = "long",
            name = "MonthlyLimit",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SetNotifyMessageSpendLimitOverrideOutput = schema.new({
    id = id.from(_N, "SetNotifyMessageSpendLimitOverrideResult"),
    type = "structure",
    members = {
        MonthlyLimit = schema.new({
            id = id.from(_N, "SetNotifyMessageSpendLimitOverrideOutput", "MonthlyLimit"),
            type = "long",
            name = "MonthlyLimit",
            target_id = prelude.Long.id,
        }),
    },
})

M.SetTextMessageSpendLimitOverrideInput = schema.new({
    id = id.from(_N, "SetTextMessageSpendLimitOverrideRequest"),
    type = "structure",
    members = {
        MonthlyLimit = schema.new({
            id = id.from(_N, "SetTextMessageSpendLimitOverrideInput", "MonthlyLimit"),
            type = "long",
            name = "MonthlyLimit",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SetTextMessageSpendLimitOverrideOutput = schema.new({
    id = id.from(_N, "SetTextMessageSpendLimitOverrideResult"),
    type = "structure",
    members = {
        MonthlyLimit = schema.new({
            id = id.from(_N, "SetTextMessageSpendLimitOverrideOutput", "MonthlyLimit"),
            type = "long",
            name = "MonthlyLimit",
            target_id = prelude.Long.id,
        }),
    },
})

M.SetVoiceMessageSpendLimitOverrideInput = schema.new({
    id = id.from(_N, "SetVoiceMessageSpendLimitOverrideRequest"),
    type = "structure",
    members = {
        MonthlyLimit = schema.new({
            id = id.from(_N, "SetVoiceMessageSpendLimitOverrideInput", "MonthlyLimit"),
            type = "long",
            name = "MonthlyLimit",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SetVoiceMessageSpendLimitOverrideOutput = schema.new({
    id = id.from(_N, "SetVoiceMessageSpendLimitOverrideResult"),
    type = "structure",
    members = {
        MonthlyLimit = schema.new({
            id = id.from(_N, "SetVoiceMessageSpendLimitOverrideOutput", "MonthlyLimit"),
            type = "long",
            name = "MonthlyLimit",
            target_id = prelude.Long.id,
        }),
    },
})

M.SubmitRegistrationVersionInput = schema.new({
    id = id.from(_N, "SubmitRegistrationVersionRequest"),
    type = "structure",
    members = {
        RegistrationId = schema.new({
            id = id.from(_N, "SubmitRegistrationVersionInput", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AwsReview = schema.new({
            id = id.from(_N, "SubmitRegistrationVersionInput", "AwsReview"),
            type = "boolean",
            name = "AwsReview",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.SubmitRegistrationVersionOutput = schema.new({
    id = id.from(_N, "SubmitRegistrationVersionResult"),
    type = "structure",
    members = {
        RegistrationArn = schema.new({
            id = id.from(_N, "SubmitRegistrationVersionOutput", "RegistrationArn"),
            type = "string",
            name = "RegistrationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationId = schema.new({
            id = id.from(_N, "SubmitRegistrationVersionOutput", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VersionNumber = schema.new({
            id = id.from(_N, "SubmitRegistrationVersionOutput", "VersionNumber"),
            type = "long",
            name = "VersionNumber",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationVersionStatus = schema.new({
            id = id.from(_N, "SubmitRegistrationVersionOutput", "RegistrationVersionStatus"),
            type = "string",
            name = "RegistrationVersionStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationVersionStatusHistory = schema.new({
            id = id.from(_N, "SubmitRegistrationVersionOutput", "RegistrationVersionStatusHistory"),
            type = "structure",
            name = "RegistrationVersionStatusHistory",
            target_id = id.from(_N, "RegistrationVersionStatusHistory"),
            target = M.RegistrationVersionStatusHistory,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AwsReview = schema.new({
            id = id.from(_N, "SubmitRegistrationVersionOutput", "AwsReview"),
            type = "boolean",
            name = "AwsReview",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
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
    id = id.from(_N, "TagResourceResult"),
    type = "structure",
})

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
    id = id.from(_N, "UntagResourceResult"),
    type = "structure",
})

M.UpdateEventDestinationInput = schema.new({
    id = id.from(_N, "UpdateEventDestinationRequest"),
    type = "structure",
    members = {
        ConfigurationSetName = schema.new({
            id = id.from(_N, "UpdateEventDestinationInput", "ConfigurationSetName"),
            type = "string",
            name = "ConfigurationSetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EventDestinationName = schema.new({
            id = id.from(_N, "UpdateEventDestinationInput", "EventDestinationName"),
            type = "string",
            name = "EventDestinationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Enabled = schema.new({
            id = id.from(_N, "UpdateEventDestinationInput", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
        }),
        MatchingEventTypes = schema.new({
            id = id.from(_N, "UpdateEventDestinationInput", "MatchingEventTypes"),
            type = "list",
            name = "MatchingEventTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CloudWatchLogsDestination = schema.new({
            id = id.from(_N, "UpdateEventDestinationInput", "CloudWatchLogsDestination"),
            type = "structure",
            name = "CloudWatchLogsDestination",
            target_id = id.from(_N, "CloudWatchLogsDestination"),
            target = M.CloudWatchLogsDestination,
        }),
        KinesisFirehoseDestination = schema.new({
            id = id.from(_N, "UpdateEventDestinationInput", "KinesisFirehoseDestination"),
            type = "structure",
            name = "KinesisFirehoseDestination",
            target_id = id.from(_N, "KinesisFirehoseDestination"),
            target = M.KinesisFirehoseDestination,
        }),
        SnsDestination = schema.new({
            id = id.from(_N, "UpdateEventDestinationInput", "SnsDestination"),
            type = "structure",
            name = "SnsDestination",
            target_id = id.from(_N, "SnsDestination"),
            target = M.SnsDestination,
        }),
    },
})

M.UpdateEventDestinationOutput = schema.new({
    id = id.from(_N, "UpdateEventDestinationResult"),
    type = "structure",
    members = {
        ConfigurationSetArn = schema.new({
            id = id.from(_N, "UpdateEventDestinationOutput", "ConfigurationSetArn"),
            type = "string",
            name = "ConfigurationSetArn",
            target_id = prelude.String.id,
        }),
        ConfigurationSetName = schema.new({
            id = id.from(_N, "UpdateEventDestinationOutput", "ConfigurationSetName"),
            type = "string",
            name = "ConfigurationSetName",
            target_id = prelude.String.id,
        }),
        EventDestination = schema.new({
            id = id.from(_N, "UpdateEventDestinationOutput", "EventDestination"),
            type = "structure",
            name = "EventDestination",
            target_id = id.from(_N, "EventDestination"),
            target = M.EventDestination,
        }),
    },
})

M.UpdateNotifyConfigurationInput = schema.new({
    id = id.from(_N, "UpdateNotifyConfigurationRequest"),
    type = "structure",
    members = {
        NotifyConfigurationId = schema.new({
            id = id.from(_N, "UpdateNotifyConfigurationInput", "NotifyConfigurationId"),
            type = "string",
            name = "NotifyConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DefaultTemplateId = schema.new({
            id = id.from(_N, "UpdateNotifyConfigurationInput", "DefaultTemplateId"),
            type = "string",
            name = "DefaultTemplateId",
            target_id = prelude.String.id,
        }),
        PoolId = schema.new({
            id = id.from(_N, "UpdateNotifyConfigurationInput", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
        }),
        EnabledCountries = schema.new({
            id = id.from(_N, "UpdateNotifyConfigurationInput", "EnabledCountries"),
            type = "list",
            name = "EnabledCountries",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        EnabledChannels = schema.new({
            id = id.from(_N, "UpdateNotifyConfigurationInput", "EnabledChannels"),
            type = "list",
            name = "EnabledChannels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "UpdateNotifyConfigurationInput", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateNotifyConfigurationOutput = schema.new({
    id = id.from(_N, "UpdateNotifyConfigurationResult"),
    type = "structure",
    members = {
        NotifyConfigurationArn = schema.new({
            id = id.from(_N, "UpdateNotifyConfigurationOutput", "NotifyConfigurationArn"),
            type = "string",
            name = "NotifyConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NotifyConfigurationId = schema.new({
            id = id.from(_N, "UpdateNotifyConfigurationOutput", "NotifyConfigurationId"),
            type = "string",
            name = "NotifyConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DisplayName = schema.new({
            id = id.from(_N, "UpdateNotifyConfigurationOutput", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UseCase = schema.new({
            id = id.from(_N, "UpdateNotifyConfigurationOutput", "UseCase"),
            type = "string",
            name = "UseCase",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DefaultTemplateId = schema.new({
            id = id.from(_N, "UpdateNotifyConfigurationOutput", "DefaultTemplateId"),
            type = "string",
            name = "DefaultTemplateId",
            target_id = prelude.String.id,
        }),
        PoolId = schema.new({
            id = id.from(_N, "UpdateNotifyConfigurationOutput", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
        }),
        EnabledCountries = schema.new({
            id = id.from(_N, "UpdateNotifyConfigurationOutput", "EnabledCountries"),
            type = "list",
            name = "EnabledCountries",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        EnabledChannels = schema.new({
            id = id.from(_N, "UpdateNotifyConfigurationOutput", "EnabledChannels"),
            type = "list",
            name = "EnabledChannels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tier = schema.new({
            id = id.from(_N, "UpdateNotifyConfigurationOutput", "Tier"),
            type = "string",
            name = "Tier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TierUpgradeStatus = schema.new({
            id = id.from(_N, "UpdateNotifyConfigurationOutput", "TierUpgradeStatus"),
            type = "string",
            name = "TierUpgradeStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "UpdateNotifyConfigurationOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RejectionReason = schema.new({
            id = id.from(_N, "UpdateNotifyConfigurationOutput", "RejectionReason"),
            type = "string",
            name = "RejectionReason",
            target_id = prelude.String.id,
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "UpdateNotifyConfigurationOutput", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "UpdateNotifyConfigurationOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdatePhoneNumberInput = schema.new({
    id = id.from(_N, "UpdatePhoneNumberRequest"),
    type = "structure",
    members = {
        PhoneNumberId = schema.new({
            id = id.from(_N, "UpdatePhoneNumberInput", "PhoneNumberId"),
            type = "string",
            name = "PhoneNumberId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TwoWayEnabled = schema.new({
            id = id.from(_N, "UpdatePhoneNumberInput", "TwoWayEnabled"),
            type = "boolean",
            name = "TwoWayEnabled",
            target_id = prelude.Boolean.id,
        }),
        TwoWayChannelArn = schema.new({
            id = id.from(_N, "UpdatePhoneNumberInput", "TwoWayChannelArn"),
            type = "string",
            name = "TwoWayChannelArn",
            target_id = prelude.String.id,
        }),
        TwoWayChannelRole = schema.new({
            id = id.from(_N, "UpdatePhoneNumberInput", "TwoWayChannelRole"),
            type = "string",
            name = "TwoWayChannelRole",
            target_id = prelude.String.id,
        }),
        SelfManagedOptOutsEnabled = schema.new({
            id = id.from(_N, "UpdatePhoneNumberInput", "SelfManagedOptOutsEnabled"),
            type = "boolean",
            name = "SelfManagedOptOutsEnabled",
            target_id = prelude.Boolean.id,
        }),
        OptOutListName = schema.new({
            id = id.from(_N, "UpdatePhoneNumberInput", "OptOutListName"),
            type = "string",
            name = "OptOutListName",
            target_id = prelude.String.id,
        }),
        InternationalSendingEnabled = schema.new({
            id = id.from(_N, "UpdatePhoneNumberInput", "InternationalSendingEnabled"),
            type = "boolean",
            name = "InternationalSendingEnabled",
            target_id = prelude.Boolean.id,
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "UpdatePhoneNumberInput", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdatePhoneNumberOutput = schema.new({
    id = id.from(_N, "UpdatePhoneNumberResult"),
    type = "structure",
    members = {
        PhoneNumberArn = schema.new({
            id = id.from(_N, "UpdatePhoneNumberOutput", "PhoneNumberArn"),
            type = "string",
            name = "PhoneNumberArn",
            target_id = prelude.String.id,
        }),
        PhoneNumberId = schema.new({
            id = id.from(_N, "UpdatePhoneNumberOutput", "PhoneNumberId"),
            type = "string",
            name = "PhoneNumberId",
            target_id = prelude.String.id,
        }),
        PhoneNumber = schema.new({
            id = id.from(_N, "UpdatePhoneNumberOutput", "PhoneNumber"),
            type = "string",
            name = "PhoneNumber",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "UpdatePhoneNumberOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        IsoCountryCode = schema.new({
            id = id.from(_N, "UpdatePhoneNumberOutput", "IsoCountryCode"),
            type = "string",
            name = "IsoCountryCode",
            target_id = prelude.String.id,
        }),
        MessageType = schema.new({
            id = id.from(_N, "UpdatePhoneNumberOutput", "MessageType"),
            type = "string",
            name = "MessageType",
            target_id = prelude.String.id,
        }),
        NumberCapabilities = schema.new({
            id = id.from(_N, "UpdatePhoneNumberOutput", "NumberCapabilities"),
            type = "list",
            name = "NumberCapabilities",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NumberType = schema.new({
            id = id.from(_N, "UpdatePhoneNumberOutput", "NumberType"),
            type = "string",
            name = "NumberType",
            target_id = prelude.String.id,
        }),
        MonthlyLeasingPrice = schema.new({
            id = id.from(_N, "UpdatePhoneNumberOutput", "MonthlyLeasingPrice"),
            type = "string",
            name = "MonthlyLeasingPrice",
            target_id = prelude.String.id,
        }),
        TwoWayEnabled = schema.new({
            id = id.from(_N, "UpdatePhoneNumberOutput", "TwoWayEnabled"),
            type = "boolean",
            name = "TwoWayEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        TwoWayChannelArn = schema.new({
            id = id.from(_N, "UpdatePhoneNumberOutput", "TwoWayChannelArn"),
            type = "string",
            name = "TwoWayChannelArn",
            target_id = prelude.String.id,
        }),
        TwoWayChannelRole = schema.new({
            id = id.from(_N, "UpdatePhoneNumberOutput", "TwoWayChannelRole"),
            type = "string",
            name = "TwoWayChannelRole",
            target_id = prelude.String.id,
        }),
        SelfManagedOptOutsEnabled = schema.new({
            id = id.from(_N, "UpdatePhoneNumberOutput", "SelfManagedOptOutsEnabled"),
            type = "boolean",
            name = "SelfManagedOptOutsEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        OptOutListName = schema.new({
            id = id.from(_N, "UpdatePhoneNumberOutput", "OptOutListName"),
            type = "string",
            name = "OptOutListName",
            target_id = prelude.String.id,
        }),
        InternationalSendingEnabled = schema.new({
            id = id.from(_N, "UpdatePhoneNumberOutput", "InternationalSendingEnabled"),
            type = "boolean",
            name = "InternationalSendingEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "UpdatePhoneNumberOutput", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        RegistrationId = schema.new({
            id = id.from(_N, "UpdatePhoneNumberOutput", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "UpdatePhoneNumberOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.UpdatePoolInput = schema.new({
    id = id.from(_N, "UpdatePoolRequest"),
    type = "structure",
    members = {
        PoolId = schema.new({
            id = id.from(_N, "UpdatePoolInput", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TwoWayEnabled = schema.new({
            id = id.from(_N, "UpdatePoolInput", "TwoWayEnabled"),
            type = "boolean",
            name = "TwoWayEnabled",
            target_id = prelude.Boolean.id,
        }),
        TwoWayChannelArn = schema.new({
            id = id.from(_N, "UpdatePoolInput", "TwoWayChannelArn"),
            type = "string",
            name = "TwoWayChannelArn",
            target_id = prelude.String.id,
        }),
        TwoWayChannelRole = schema.new({
            id = id.from(_N, "UpdatePoolInput", "TwoWayChannelRole"),
            type = "string",
            name = "TwoWayChannelRole",
            target_id = prelude.String.id,
        }),
        SelfManagedOptOutsEnabled = schema.new({
            id = id.from(_N, "UpdatePoolInput", "SelfManagedOptOutsEnabled"),
            type = "boolean",
            name = "SelfManagedOptOutsEnabled",
            target_id = prelude.Boolean.id,
        }),
        OptOutListName = schema.new({
            id = id.from(_N, "UpdatePoolInput", "OptOutListName"),
            type = "string",
            name = "OptOutListName",
            target_id = prelude.String.id,
        }),
        SharedRoutesEnabled = schema.new({
            id = id.from(_N, "UpdatePoolInput", "SharedRoutesEnabled"),
            type = "boolean",
            name = "SharedRoutesEnabled",
            target_id = prelude.Boolean.id,
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "UpdatePoolInput", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdatePoolOutput = schema.new({
    id = id.from(_N, "UpdatePoolResult"),
    type = "structure",
    members = {
        PoolArn = schema.new({
            id = id.from(_N, "UpdatePoolOutput", "PoolArn"),
            type = "string",
            name = "PoolArn",
            target_id = prelude.String.id,
        }),
        PoolId = schema.new({
            id = id.from(_N, "UpdatePoolOutput", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "UpdatePoolOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        MessageType = schema.new({
            id = id.from(_N, "UpdatePoolOutput", "MessageType"),
            type = "string",
            name = "MessageType",
            target_id = prelude.String.id,
        }),
        TwoWayEnabled = schema.new({
            id = id.from(_N, "UpdatePoolOutput", "TwoWayEnabled"),
            type = "boolean",
            name = "TwoWayEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        TwoWayChannelArn = schema.new({
            id = id.from(_N, "UpdatePoolOutput", "TwoWayChannelArn"),
            type = "string",
            name = "TwoWayChannelArn",
            target_id = prelude.String.id,
        }),
        TwoWayChannelRole = schema.new({
            id = id.from(_N, "UpdatePoolOutput", "TwoWayChannelRole"),
            type = "string",
            name = "TwoWayChannelRole",
            target_id = prelude.String.id,
        }),
        SelfManagedOptOutsEnabled = schema.new({
            id = id.from(_N, "UpdatePoolOutput", "SelfManagedOptOutsEnabled"),
            type = "boolean",
            name = "SelfManagedOptOutsEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        OptOutListName = schema.new({
            id = id.from(_N, "UpdatePoolOutput", "OptOutListName"),
            type = "string",
            name = "OptOutListName",
            target_id = prelude.String.id,
        }),
        SharedRoutesEnabled = schema.new({
            id = id.from(_N, "UpdatePoolOutput", "SharedRoutesEnabled"),
            type = "boolean",
            name = "SharedRoutesEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "UpdatePoolOutput", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "UpdatePoolOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.UpdateProtectConfigurationInput = schema.new({
    id = id.from(_N, "UpdateProtectConfigurationRequest"),
    type = "structure",
    members = {
        ProtectConfigurationId = schema.new({
            id = id.from(_N, "UpdateProtectConfigurationInput", "ProtectConfigurationId"),
            type = "string",
            name = "ProtectConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "UpdateProtectConfigurationInput", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateProtectConfigurationOutput = schema.new({
    id = id.from(_N, "UpdateProtectConfigurationResult"),
    type = "structure",
    members = {
        ProtectConfigurationArn = schema.new({
            id = id.from(_N, "UpdateProtectConfigurationOutput", "ProtectConfigurationArn"),
            type = "string",
            name = "ProtectConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProtectConfigurationId = schema.new({
            id = id.from(_N, "UpdateProtectConfigurationOutput", "ProtectConfigurationId"),
            type = "string",
            name = "ProtectConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "UpdateProtectConfigurationOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccountDefault = schema.new({
            id = id.from(_N, "UpdateProtectConfigurationOutput", "AccountDefault"),
            type = "boolean",
            name = "AccountDefault",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "UpdateProtectConfigurationOutput", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.UpdateProtectConfigurationCountryRuleSetInput = schema.new({
    id = id.from(_N, "UpdateProtectConfigurationCountryRuleSetRequest"),
    type = "structure",
    members = {
        ProtectConfigurationId = schema.new({
            id = id.from(_N, "UpdateProtectConfigurationCountryRuleSetInput", "ProtectConfigurationId"),
            type = "string",
            name = "ProtectConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NumberCapability = schema.new({
            id = id.from(_N, "UpdateProtectConfigurationCountryRuleSetInput", "NumberCapability"),
            type = "string",
            name = "NumberCapability",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CountryRuleSetUpdates = schema.new({
            id = id.from(_N, "UpdateProtectConfigurationCountryRuleSetInput", "CountryRuleSetUpdates"),
            type = "map",
            name = "CountryRuleSetUpdates",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ProtectConfigurationCountryRuleSetInformation,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateProtectConfigurationCountryRuleSetOutput = schema.new({
    id = id.from(_N, "UpdateProtectConfigurationCountryRuleSetResult"),
    type = "structure",
    members = {
        ProtectConfigurationArn = schema.new({
            id = id.from(_N, "UpdateProtectConfigurationCountryRuleSetOutput", "ProtectConfigurationArn"),
            type = "string",
            name = "ProtectConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProtectConfigurationId = schema.new({
            id = id.from(_N, "UpdateProtectConfigurationCountryRuleSetOutput", "ProtectConfigurationId"),
            type = "string",
            name = "ProtectConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NumberCapability = schema.new({
            id = id.from(_N, "UpdateProtectConfigurationCountryRuleSetOutput", "NumberCapability"),
            type = "string",
            name = "NumberCapability",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CountryRuleSet = schema.new({
            id = id.from(_N, "UpdateProtectConfigurationCountryRuleSetOutput", "CountryRuleSet"),
            type = "map",
            name = "CountryRuleSet",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ProtectConfigurationCountryRuleSetInformation,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateRcsAgentInput = schema.new({
    id = id.from(_N, "UpdateRcsAgentRequest"),
    type = "structure",
    members = {
        RcsAgentId = schema.new({
            id = id.from(_N, "UpdateRcsAgentInput", "RcsAgentId"),
            type = "string",
            name = "RcsAgentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "UpdateRcsAgentInput", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
        }),
        OptOutListName = schema.new({
            id = id.from(_N, "UpdateRcsAgentInput", "OptOutListName"),
            type = "string",
            name = "OptOutListName",
            target_id = prelude.String.id,
        }),
        SelfManagedOptOutsEnabled = schema.new({
            id = id.from(_N, "UpdateRcsAgentInput", "SelfManagedOptOutsEnabled"),
            type = "boolean",
            name = "SelfManagedOptOutsEnabled",
            target_id = prelude.Boolean.id,
        }),
        TwoWayChannelArn = schema.new({
            id = id.from(_N, "UpdateRcsAgentInput", "TwoWayChannelArn"),
            type = "string",
            name = "TwoWayChannelArn",
            target_id = prelude.String.id,
        }),
        TwoWayChannelRole = schema.new({
            id = id.from(_N, "UpdateRcsAgentInput", "TwoWayChannelRole"),
            type = "string",
            name = "TwoWayChannelRole",
            target_id = prelude.String.id,
        }),
        TwoWayEnabled = schema.new({
            id = id.from(_N, "UpdateRcsAgentInput", "TwoWayEnabled"),
            type = "boolean",
            name = "TwoWayEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateRcsAgentOutput = schema.new({
    id = id.from(_N, "UpdateRcsAgentResult"),
    type = "structure",
    members = {
        RcsAgentArn = schema.new({
            id = id.from(_N, "UpdateRcsAgentOutput", "RcsAgentArn"),
            type = "string",
            name = "RcsAgentArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RcsAgentId = schema.new({
            id = id.from(_N, "UpdateRcsAgentOutput", "RcsAgentId"),
            type = "string",
            name = "RcsAgentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "UpdateRcsAgentOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "UpdateRcsAgentOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "UpdateRcsAgentOutput", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        OptOutListName = schema.new({
            id = id.from(_N, "UpdateRcsAgentOutput", "OptOutListName"),
            type = "string",
            name = "OptOutListName",
            target_id = prelude.String.id,
        }),
        SelfManagedOptOutsEnabled = schema.new({
            id = id.from(_N, "UpdateRcsAgentOutput", "SelfManagedOptOutsEnabled"),
            type = "boolean",
            name = "SelfManagedOptOutsEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        TwoWayChannelArn = schema.new({
            id = id.from(_N, "UpdateRcsAgentOutput", "TwoWayChannelArn"),
            type = "string",
            name = "TwoWayChannelArn",
            target_id = prelude.String.id,
        }),
        TwoWayChannelRole = schema.new({
            id = id.from(_N, "UpdateRcsAgentOutput", "TwoWayChannelRole"),
            type = "string",
            name = "TwoWayChannelRole",
            target_id = prelude.String.id,
        }),
        TwoWayEnabled = schema.new({
            id = id.from(_N, "UpdateRcsAgentOutput", "TwoWayEnabled"),
            type = "boolean",
            name = "TwoWayEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.UpdateSenderIdInput = schema.new({
    id = id.from(_N, "UpdateSenderIdRequest"),
    type = "structure",
    members = {
        SenderId = schema.new({
            id = id.from(_N, "UpdateSenderIdInput", "SenderId"),
            type = "string",
            name = "SenderId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsoCountryCode = schema.new({
            id = id.from(_N, "UpdateSenderIdInput", "IsoCountryCode"),
            type = "string",
            name = "IsoCountryCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "UpdateSenderIdInput", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateSenderIdOutput = schema.new({
    id = id.from(_N, "UpdateSenderIdResult"),
    type = "structure",
    members = {
        SenderIdArn = schema.new({
            id = id.from(_N, "UpdateSenderIdOutput", "SenderIdArn"),
            type = "string",
            name = "SenderIdArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SenderId = schema.new({
            id = id.from(_N, "UpdateSenderIdOutput", "SenderId"),
            type = "string",
            name = "SenderId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsoCountryCode = schema.new({
            id = id.from(_N, "UpdateSenderIdOutput", "IsoCountryCode"),
            type = "string",
            name = "IsoCountryCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MessageTypes = schema.new({
            id = id.from(_N, "UpdateSenderIdOutput", "MessageTypes"),
            type = "list",
            name = "MessageTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MonthlyLeasingPrice = schema.new({
            id = id.from(_N, "UpdateSenderIdOutput", "MonthlyLeasingPrice"),
            type = "string",
            name = "MonthlyLeasingPrice",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "UpdateSenderIdOutput", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        Registered = schema.new({
            id = id.from(_N, "UpdateSenderIdOutput", "Registered"),
            type = "boolean",
            name = "Registered",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        RegistrationId = schema.new({
            id = id.from(_N, "UpdateSenderIdOutput", "RegistrationId"),
            type = "string",
            name = "RegistrationId",
            target_id = prelude.String.id,
        }),
    },
})

M.VerifyDestinationNumberInput = schema.new({
    id = id.from(_N, "VerifyDestinationNumberRequest"),
    type = "structure",
    members = {
        VerifiedDestinationNumberId = schema.new({
            id = id.from(_N, "VerifyDestinationNumberInput", "VerifiedDestinationNumberId"),
            type = "string",
            name = "VerifiedDestinationNumberId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VerificationCode = schema.new({
            id = id.from(_N, "VerifyDestinationNumberInput", "VerificationCode"),
            type = "string",
            name = "VerificationCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.VerifyDestinationNumberOutput = schema.new({
    id = id.from(_N, "VerifyDestinationNumberResult"),
    type = "structure",
    members = {
        VerifiedDestinationNumberArn = schema.new({
            id = id.from(_N, "VerifyDestinationNumberOutput", "VerifiedDestinationNumberArn"),
            type = "string",
            name = "VerifiedDestinationNumberArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VerifiedDestinationNumberId = schema.new({
            id = id.from(_N, "VerifyDestinationNumberOutput", "VerifiedDestinationNumberId"),
            type = "string",
            name = "VerifiedDestinationNumberId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DestinationPhoneNumber = schema.new({
            id = id.from(_N, "VerifyDestinationNumberOutput", "DestinationPhoneNumber"),
            type = "string",
            name = "DestinationPhoneNumber",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "VerifyDestinationNumberOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "VerifyDestinationNumberOutput", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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
