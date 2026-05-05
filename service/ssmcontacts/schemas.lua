local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.ssmcontacts"

local M = {}

M.AcceptPageInput = schema.new({
    id = id.from(_N, "AcceptPageInput"),
    type = "structure",
    members = {
        PageId = schema.new({
            id = id.from(_N, "AcceptPageInput", "PageId"),
            type = "string",
            name = "PageId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ContactChannelId = schema.new({
            id = id.from(_N, "AcceptPageInput", "ContactChannelId"),
            type = "string",
            name = "ContactChannelId",
            target_id = prelude.String.id,
        }),
        AcceptType = schema.new({
            id = id.from(_N, "AcceptPageInput", "AcceptType"),
            type = "string",
            name = "AcceptType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Note = schema.new({
            id = id.from(_N, "AcceptPageInput", "Note"),
            type = "string",
            name = "Note",
            target_id = prelude.String.id,
        }),
        AcceptCode = schema.new({
            id = id.from(_N, "AcceptPageInput", "AcceptCode"),
            type = "string",
            name = "AcceptCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AcceptCodeValidation = schema.new({
            id = id.from(_N, "AcceptPageInput", "AcceptCodeValidation"),
            type = "string",
            name = "AcceptCodeValidation",
            target_id = prelude.String.id,
        }),
    },
})

M.AcceptPageOutput = schema.new({
    id = id.from(_N, "AcceptPageOutput"),
    type = "structure",
})

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
        Message = schema.new({
            id = id.from(_N, "InternalServerException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RetryAfterSeconds = schema.new({
            id = id.from(_N, "InternalServerException", "RetryAfterSeconds"),
            type = "integer",
            name = "RetryAfterSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_HEADER] = { name = "Retry-After" },
            },
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        QuotaCode = schema.new({
            id = id.from(_N, "ThrottlingException", "QuotaCode"),
            type = "string",
            name = "QuotaCode",
            target_id = prelude.String.id,
        }),
        ServiceCode = schema.new({
            id = id.from(_N, "ThrottlingException", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
            target_id = prelude.String.id,
        }),
        RetryAfterSeconds = schema.new({
            id = id.from(_N, "ThrottlingException", "RetryAfterSeconds"),
            type = "integer",
            name = "RetryAfterSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_HEADER] = { name = "Retry-After" },
            },
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
            traits = {
                [traits.REQUIRED] = {},
            },
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

M.ActivateContactChannelInput = schema.new({
    id = id.from(_N, "ActivateContactChannelInput"),
    type = "structure",
    members = {
        ContactChannelId = schema.new({
            id = id.from(_N, "ActivateContactChannelInput", "ContactChannelId"),
            type = "string",
            name = "ContactChannelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ActivationCode = schema.new({
            id = id.from(_N, "ActivateContactChannelInput", "ActivationCode"),
            type = "string",
            name = "ActivationCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ActivateContactChannelOutput = schema.new({
    id = id.from(_N, "ActivateContactChannelOutput"),
    type = "structure",
})

M.ChannelTargetInfo = schema.new({
    id = id.from(_N, "ChannelTargetInfo"),
    type = "structure",
    members = {
        ContactChannelId = schema.new({
            id = id.from(_N, "ChannelTargetInfo", "ContactChannelId"),
            type = "string",
            name = "ContactChannelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RetryIntervalInMinutes = schema.new({
            id = id.from(_N, "ChannelTargetInfo", "RetryIntervalInMinutes"),
            type = "integer",
            name = "RetryIntervalInMinutes",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DependentEntity = schema.new({
    id = id.from(_N, "DependentEntity"),
    type = "structure",
    members = {
        RelationType = schema.new({
            id = id.from(_N, "DependentEntity", "RelationType"),
            type = "string",
            name = "RelationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DependentResourceIds = schema.new({
            id = id.from(_N, "DependentEntity", "DependentResourceIds"),
            type = "list",
            name = "DependentResourceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ConflictException", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ConflictException", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DependentEntities = schema.new({
            id = id.from(_N, "ConflictException", "DependentEntities"),
            type = "list",
            name = "DependentEntities",
            target_id = prelude.Document.id,
            list_member = M.DependentEntity,
        }),
    },
})

M.Contact = schema.new({
    id = id.from(_N, "Contact"),
    type = "structure",
    members = {
        ContactArn = schema.new({
            id = id.from(_N, "Contact", "ContactArn"),
            type = "string",
            name = "ContactArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Alias = schema.new({
            id = id.from(_N, "Contact", "Alias"),
            type = "string",
            name = "Alias",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DisplayName = schema.new({
            id = id.from(_N, "Contact", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "Contact", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ContactChannelAddress = schema.new({
    id = id.from(_N, "ContactChannelAddress"),
    type = "structure",
    members = {
        SimpleAddress = schema.new({
            id = id.from(_N, "ContactChannelAddress", "SimpleAddress"),
            type = "string",
            name = "SimpleAddress",
            target_id = prelude.String.id,
        }),
    },
})

M.ContactChannel = schema.new({
    id = id.from(_N, "ContactChannel"),
    type = "structure",
    members = {
        ContactChannelArn = schema.new({
            id = id.from(_N, "ContactChannel", "ContactChannelArn"),
            type = "string",
            name = "ContactChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ContactArn = schema.new({
            id = id.from(_N, "ContactChannel", "ContactArn"),
            type = "string",
            name = "ContactArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "ContactChannel", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "ContactChannel", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        DeliveryAddress = schema.new({
            id = id.from(_N, "ContactChannel", "DeliveryAddress"),
            type = "structure",
            name = "DeliveryAddress",
            target_id = id.from(_N, "ContactChannelAddress"),
            target = M.ContactChannelAddress,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ActivationStatus = schema.new({
            id = id.from(_N, "ContactChannel", "ActivationStatus"),
            type = "string",
            name = "ActivationStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ContactTargetInfo = schema.new({
    id = id.from(_N, "ContactTargetInfo"),
    type = "structure",
    members = {
        ContactId = schema.new({
            id = id.from(_N, "ContactTargetInfo", "ContactId"),
            type = "string",
            name = "ContactId",
            target_id = prelude.String.id,
        }),
        IsEssential = schema.new({
            id = id.from(_N, "ContactTargetInfo", "IsEssential"),
            type = "boolean",
            name = "IsEssential",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.HandOffTime = schema.new({
    id = id.from(_N, "HandOffTime"),
    type = "structure",
    members = {
        HourOfDay = schema.new({
            id = id.from(_N, "HandOffTime", "HourOfDay"),
            type = "integer",
            name = "HourOfDay",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        MinuteOfHour = schema.new({
            id = id.from(_N, "HandOffTime", "MinuteOfHour"),
            type = "integer",
            name = "MinuteOfHour",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.CoverageTime = schema.new({
    id = id.from(_N, "CoverageTime"),
    type = "structure",
    members = {
        Start = schema.new({
            id = id.from(_N, "CoverageTime", "Start"),
            type = "structure",
            name = "Start",
            target_id = id.from(_N, "HandOffTime"),
            target = M.HandOffTime,
        }),
        End = schema.new({
            id = id.from(_N, "CoverageTime", "End"),
            type = "structure",
            name = "End",
            target_id = id.from(_N, "HandOffTime"),
            target = M.HandOffTime,
        }),
    },
})

M.Target = schema.new({
    id = id.from(_N, "Target"),
    type = "structure",
    members = {
        ChannelTargetInfo = schema.new({
            id = id.from(_N, "Target", "ChannelTargetInfo"),
            type = "structure",
            name = "ChannelTargetInfo",
            target_id = id.from(_N, "ChannelTargetInfo"),
            target = M.ChannelTargetInfo,
        }),
        ContactTargetInfo = schema.new({
            id = id.from(_N, "Target", "ContactTargetInfo"),
            type = "structure",
            name = "ContactTargetInfo",
            target_id = id.from(_N, "ContactTargetInfo"),
            target = M.ContactTargetInfo,
        }),
    },
})

M.Stage = schema.new({
    id = id.from(_N, "Stage"),
    type = "structure",
    members = {
        DurationInMinutes = schema.new({
            id = id.from(_N, "Stage", "DurationInMinutes"),
            type = "integer",
            name = "DurationInMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Targets = schema.new({
            id = id.from(_N, "Stage", "Targets"),
            type = "list",
            name = "Targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Plan = schema.new({
    id = id.from(_N, "Plan"),
    type = "structure",
    members = {
        Stages = schema.new({
            id = id.from(_N, "Plan", "Stages"),
            type = "list",
            name = "Stages",
            target_id = prelude.Document.id,
            list_member = M.Stage,
        }),
        RotationIds = schema.new({
            id = id.from(_N, "Plan", "RotationIds"),
            type = "list",
            name = "RotationIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
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
        }),
        Value = schema.new({
            id = id.from(_N, "Tag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateContactInput = schema.new({
    id = id.from(_N, "CreateContactInput"),
    type = "structure",
    members = {
        Alias = schema.new({
            id = id.from(_N, "CreateContactInput", "Alias"),
            type = "string",
            name = "Alias",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DisplayName = schema.new({
            id = id.from(_N, "CreateContactInput", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "CreateContactInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Plan = schema.new({
            id = id.from(_N, "CreateContactInput", "Plan"),
            type = "structure",
            name = "Plan",
            target_id = id.from(_N, "Plan"),
            target = M.Plan,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateContactInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        IdempotencyToken = schema.new({
            id = id.from(_N, "CreateContactInput", "IdempotencyToken"),
            type = "string",
            name = "IdempotencyToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateContactOutput = schema.new({
    id = id.from(_N, "CreateContactOutput"),
    type = "structure",
    members = {
        ContactArn = schema.new({
            id = id.from(_N, "CreateContactOutput", "ContactArn"),
            type = "string",
            name = "ContactArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DataEncryptionException = schema.new({
    id = id.from(_N, "DataEncryptionException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DataEncryptionException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        QuotaCode = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "QuotaCode"),
            type = "string",
            name = "QuotaCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceCode = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateContactChannelInput = schema.new({
    id = id.from(_N, "CreateContactChannelInput"),
    type = "structure",
    members = {
        ContactId = schema.new({
            id = id.from(_N, "CreateContactChannelInput", "ContactId"),
            type = "string",
            name = "ContactId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateContactChannelInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "CreateContactChannelInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeliveryAddress = schema.new({
            id = id.from(_N, "CreateContactChannelInput", "DeliveryAddress"),
            type = "structure",
            name = "DeliveryAddress",
            target_id = id.from(_N, "ContactChannelAddress"),
            target = M.ContactChannelAddress,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeferActivation = schema.new({
            id = id.from(_N, "CreateContactChannelInput", "DeferActivation"),
            type = "boolean",
            name = "DeferActivation",
            target_id = prelude.Boolean.id,
        }),
        IdempotencyToken = schema.new({
            id = id.from(_N, "CreateContactChannelInput", "IdempotencyToken"),
            type = "string",
            name = "IdempotencyToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateContactChannelOutput = schema.new({
    id = id.from(_N, "CreateContactChannelOutput"),
    type = "structure",
    members = {
        ContactChannelArn = schema.new({
            id = id.from(_N, "CreateContactChannelOutput", "ContactChannelArn"),
            type = "string",
            name = "ContactChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MonthlySetting = schema.new({
    id = id.from(_N, "MonthlySetting"),
    type = "structure",
    members = {
        DayOfMonth = schema.new({
            id = id.from(_N, "MonthlySetting", "DayOfMonth"),
            type = "integer",
            name = "DayOfMonth",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HandOffTime = schema.new({
            id = id.from(_N, "MonthlySetting", "HandOffTime"),
            type = "structure",
            name = "HandOffTime",
            target_id = id.from(_N, "HandOffTime"),
            target = M.HandOffTime,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.WeeklySetting = schema.new({
    id = id.from(_N, "WeeklySetting"),
    type = "structure",
    members = {
        DayOfWeek = schema.new({
            id = id.from(_N, "WeeklySetting", "DayOfWeek"),
            type = "string",
            name = "DayOfWeek",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HandOffTime = schema.new({
            id = id.from(_N, "WeeklySetting", "HandOffTime"),
            type = "structure",
            name = "HandOffTime",
            target_id = id.from(_N, "HandOffTime"),
            target = M.HandOffTime,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RecurrenceSettings = schema.new({
    id = id.from(_N, "RecurrenceSettings"),
    type = "structure",
    members = {
        MonthlySettings = schema.new({
            id = id.from(_N, "RecurrenceSettings", "MonthlySettings"),
            type = "list",
            name = "MonthlySettings",
            target_id = prelude.Document.id,
            list_member = M.MonthlySetting,
        }),
        WeeklySettings = schema.new({
            id = id.from(_N, "RecurrenceSettings", "WeeklySettings"),
            type = "list",
            name = "WeeklySettings",
            target_id = prelude.Document.id,
            list_member = M.WeeklySetting,
        }),
        DailySettings = schema.new({
            id = id.from(_N, "RecurrenceSettings", "DailySettings"),
            type = "list",
            name = "DailySettings",
            target_id = prelude.Document.id,
            list_member = M.HandOffTime,
        }),
        NumberOfOnCalls = schema.new({
            id = id.from(_N, "RecurrenceSettings", "NumberOfOnCalls"),
            type = "integer",
            name = "NumberOfOnCalls",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ShiftCoverages = schema.new({
            id = id.from(_N, "RecurrenceSettings", "ShiftCoverages"),
            type = "map",
            name = "ShiftCoverages",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
        RecurrenceMultiplier = schema.new({
            id = id.from(_N, "RecurrenceSettings", "RecurrenceMultiplier"),
            type = "integer",
            name = "RecurrenceMultiplier",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateRotationInput = schema.new({
    id = id.from(_N, "CreateRotationInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateRotationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ContactIds = schema.new({
            id = id.from(_N, "CreateRotationInput", "ContactIds"),
            type = "list",
            name = "ContactIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartTime = schema.new({
            id = id.from(_N, "CreateRotationInput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        TimeZoneId = schema.new({
            id = id.from(_N, "CreateRotationInput", "TimeZoneId"),
            type = "string",
            name = "TimeZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Recurrence = schema.new({
            id = id.from(_N, "CreateRotationInput", "Recurrence"),
            type = "structure",
            name = "Recurrence",
            target_id = id.from(_N, "RecurrenceSettings"),
            target = M.RecurrenceSettings,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateRotationInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        IdempotencyToken = schema.new({
            id = id.from(_N, "CreateRotationInput", "IdempotencyToken"),
            type = "string",
            name = "IdempotencyToken",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateRotationOutput = schema.new({
    id = id.from(_N, "CreateRotationOutput"),
    type = "structure",
    members = {
        RotationArn = schema.new({
            id = id.from(_N, "CreateRotationOutput", "RotationArn"),
            type = "string",
            name = "RotationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateRotationOverrideInput = schema.new({
    id = id.from(_N, "CreateRotationOverrideInput"),
    type = "structure",
    members = {
        RotationId = schema.new({
            id = id.from(_N, "CreateRotationOverrideInput", "RotationId"),
            type = "string",
            name = "RotationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NewContactIds = schema.new({
            id = id.from(_N, "CreateRotationOverrideInput", "NewContactIds"),
            type = "list",
            name = "NewContactIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartTime = schema.new({
            id = id.from(_N, "CreateRotationOverrideInput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndTime = schema.new({
            id = id.from(_N, "CreateRotationOverrideInput", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IdempotencyToken = schema.new({
            id = id.from(_N, "CreateRotationOverrideInput", "IdempotencyToken"),
            type = "string",
            name = "IdempotencyToken",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateRotationOverrideOutput = schema.new({
    id = id.from(_N, "CreateRotationOverrideOutput"),
    type = "structure",
    members = {
        RotationOverrideId = schema.new({
            id = id.from(_N, "CreateRotationOverrideOutput", "RotationOverrideId"),
            type = "string",
            name = "RotationOverrideId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeactivateContactChannelInput = schema.new({
    id = id.from(_N, "DeactivateContactChannelInput"),
    type = "structure",
    members = {
        ContactChannelId = schema.new({
            id = id.from(_N, "DeactivateContactChannelInput", "ContactChannelId"),
            type = "string",
            name = "ContactChannelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeactivateContactChannelOutput = schema.new({
    id = id.from(_N, "DeactivateContactChannelOutput"),
    type = "structure",
})

M.DeleteContactInput = schema.new({
    id = id.from(_N, "DeleteContactInput"),
    type = "structure",
    members = {
        ContactId = schema.new({
            id = id.from(_N, "DeleteContactInput", "ContactId"),
            type = "string",
            name = "ContactId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteContactOutput = schema.new({
    id = id.from(_N, "DeleteContactOutput"),
    type = "structure",
})

M.DeleteContactChannelInput = schema.new({
    id = id.from(_N, "DeleteContactChannelInput"),
    type = "structure",
    members = {
        ContactChannelId = schema.new({
            id = id.from(_N, "DeleteContactChannelInput", "ContactChannelId"),
            type = "string",
            name = "ContactChannelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteContactChannelOutput = schema.new({
    id = id.from(_N, "DeleteContactChannelOutput"),
    type = "structure",
})

M.DeleteRotationInput = schema.new({
    id = id.from(_N, "DeleteRotationInput"),
    type = "structure",
    members = {
        RotationId = schema.new({
            id = id.from(_N, "DeleteRotationInput", "RotationId"),
            type = "string",
            name = "RotationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRotationOutput = schema.new({
    id = id.from(_N, "DeleteRotationOutput"),
    type = "structure",
})

M.DeleteRotationOverrideInput = schema.new({
    id = id.from(_N, "DeleteRotationOverrideInput"),
    type = "structure",
    members = {
        RotationId = schema.new({
            id = id.from(_N, "DeleteRotationOverrideInput", "RotationId"),
            type = "string",
            name = "RotationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RotationOverrideId = schema.new({
            id = id.from(_N, "DeleteRotationOverrideInput", "RotationOverrideId"),
            type = "string",
            name = "RotationOverrideId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRotationOverrideOutput = schema.new({
    id = id.from(_N, "DeleteRotationOverrideOutput"),
    type = "structure",
})

M.DescribeEngagementInput = schema.new({
    id = id.from(_N, "DescribeEngagementInput"),
    type = "structure",
    members = {
        EngagementId = schema.new({
            id = id.from(_N, "DescribeEngagementInput", "EngagementId"),
            type = "string",
            name = "EngagementId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeEngagementOutput = schema.new({
    id = id.from(_N, "DescribeEngagementOutput"),
    type = "structure",
    members = {
        ContactArn = schema.new({
            id = id.from(_N, "DescribeEngagementOutput", "ContactArn"),
            type = "string",
            name = "ContactArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EngagementArn = schema.new({
            id = id.from(_N, "DescribeEngagementOutput", "EngagementArn"),
            type = "string",
            name = "EngagementArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Sender = schema.new({
            id = id.from(_N, "DescribeEngagementOutput", "Sender"),
            type = "string",
            name = "Sender",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Subject = schema.new({
            id = id.from(_N, "DescribeEngagementOutput", "Subject"),
            type = "string",
            name = "Subject",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Content = schema.new({
            id = id.from(_N, "DescribeEngagementOutput", "Content"),
            type = "string",
            name = "Content",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PublicSubject = schema.new({
            id = id.from(_N, "DescribeEngagementOutput", "PublicSubject"),
            type = "string",
            name = "PublicSubject",
            target_id = prelude.String.id,
        }),
        PublicContent = schema.new({
            id = id.from(_N, "DescribeEngagementOutput", "PublicContent"),
            type = "string",
            name = "PublicContent",
            target_id = prelude.String.id,
        }),
        IncidentId = schema.new({
            id = id.from(_N, "DescribeEngagementOutput", "IncidentId"),
            type = "string",
            name = "IncidentId",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "DescribeEngagementOutput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        StopTime = schema.new({
            id = id.from(_N, "DescribeEngagementOutput", "StopTime"),
            type = "timestamp",
            name = "StopTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribePageInput = schema.new({
    id = id.from(_N, "DescribePageInput"),
    type = "structure",
    members = {
        PageId = schema.new({
            id = id.from(_N, "DescribePageInput", "PageId"),
            type = "string",
            name = "PageId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribePageOutput = schema.new({
    id = id.from(_N, "DescribePageOutput"),
    type = "structure",
    members = {
        PageArn = schema.new({
            id = id.from(_N, "DescribePageOutput", "PageArn"),
            type = "string",
            name = "PageArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EngagementArn = schema.new({
            id = id.from(_N, "DescribePageOutput", "EngagementArn"),
            type = "string",
            name = "EngagementArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ContactArn = schema.new({
            id = id.from(_N, "DescribePageOutput", "ContactArn"),
            type = "string",
            name = "ContactArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Sender = schema.new({
            id = id.from(_N, "DescribePageOutput", "Sender"),
            type = "string",
            name = "Sender",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Subject = schema.new({
            id = id.from(_N, "DescribePageOutput", "Subject"),
            type = "string",
            name = "Subject",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Content = schema.new({
            id = id.from(_N, "DescribePageOutput", "Content"),
            type = "string",
            name = "Content",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PublicSubject = schema.new({
            id = id.from(_N, "DescribePageOutput", "PublicSubject"),
            type = "string",
            name = "PublicSubject",
            target_id = prelude.String.id,
        }),
        PublicContent = schema.new({
            id = id.from(_N, "DescribePageOutput", "PublicContent"),
            type = "string",
            name = "PublicContent",
            target_id = prelude.String.id,
        }),
        IncidentId = schema.new({
            id = id.from(_N, "DescribePageOutput", "IncidentId"),
            type = "string",
            name = "IncidentId",
            target_id = prelude.String.id,
        }),
        SentTime = schema.new({
            id = id.from(_N, "DescribePageOutput", "SentTime"),
            type = "timestamp",
            name = "SentTime",
            target_id = prelude.Timestamp.id,
        }),
        ReadTime = schema.new({
            id = id.from(_N, "DescribePageOutput", "ReadTime"),
            type = "timestamp",
            name = "ReadTime",
            target_id = prelude.Timestamp.id,
        }),
        DeliveryTime = schema.new({
            id = id.from(_N, "DescribePageOutput", "DeliveryTime"),
            type = "timestamp",
            name = "DeliveryTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.Engagement = schema.new({
    id = id.from(_N, "Engagement"),
    type = "structure",
    members = {
        EngagementArn = schema.new({
            id = id.from(_N, "Engagement", "EngagementArn"),
            type = "string",
            name = "EngagementArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ContactArn = schema.new({
            id = id.from(_N, "Engagement", "ContactArn"),
            type = "string",
            name = "ContactArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Sender = schema.new({
            id = id.from(_N, "Engagement", "Sender"),
            type = "string",
            name = "Sender",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IncidentId = schema.new({
            id = id.from(_N, "Engagement", "IncidentId"),
            type = "string",
            name = "IncidentId",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "Engagement", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        StopTime = schema.new({
            id = id.from(_N, "Engagement", "StopTime"),
            type = "timestamp",
            name = "StopTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetContactInput = schema.new({
    id = id.from(_N, "GetContactInput"),
    type = "structure",
    members = {
        ContactId = schema.new({
            id = id.from(_N, "GetContactInput", "ContactId"),
            type = "string",
            name = "ContactId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetContactOutput = schema.new({
    id = id.from(_N, "GetContactOutput"),
    type = "structure",
    members = {
        ContactArn = schema.new({
            id = id.from(_N, "GetContactOutput", "ContactArn"),
            type = "string",
            name = "ContactArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Alias = schema.new({
            id = id.from(_N, "GetContactOutput", "Alias"),
            type = "string",
            name = "Alias",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DisplayName = schema.new({
            id = id.from(_N, "GetContactOutput", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "GetContactOutput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Plan = schema.new({
            id = id.from(_N, "GetContactOutput", "Plan"),
            type = "structure",
            name = "Plan",
            target_id = id.from(_N, "Plan"),
            target = M.Plan,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetContactChannelInput = schema.new({
    id = id.from(_N, "GetContactChannelInput"),
    type = "structure",
    members = {
        ContactChannelId = schema.new({
            id = id.from(_N, "GetContactChannelInput", "ContactChannelId"),
            type = "string",
            name = "ContactChannelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetContactChannelOutput = schema.new({
    id = id.from(_N, "GetContactChannelOutput"),
    type = "structure",
    members = {
        ContactArn = schema.new({
            id = id.from(_N, "GetContactChannelOutput", "ContactArn"),
            type = "string",
            name = "ContactArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ContactChannelArn = schema.new({
            id = id.from(_N, "GetContactChannelOutput", "ContactChannelArn"),
            type = "string",
            name = "ContactChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "GetContactChannelOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "GetContactChannelOutput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeliveryAddress = schema.new({
            id = id.from(_N, "GetContactChannelOutput", "DeliveryAddress"),
            type = "structure",
            name = "DeliveryAddress",
            target_id = id.from(_N, "ContactChannelAddress"),
            target = M.ContactChannelAddress,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ActivationStatus = schema.new({
            id = id.from(_N, "GetContactChannelOutput", "ActivationStatus"),
            type = "string",
            name = "ActivationStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.GetContactPolicyInput = schema.new({
    id = id.from(_N, "GetContactPolicyInput"),
    type = "structure",
    members = {
        ContactArn = schema.new({
            id = id.from(_N, "GetContactPolicyInput", "ContactArn"),
            type = "string",
            name = "ContactArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetContactPolicyOutput = schema.new({
    id = id.from(_N, "GetContactPolicyOutput"),
    type = "structure",
    members = {
        ContactArn = schema.new({
            id = id.from(_N, "GetContactPolicyOutput", "ContactArn"),
            type = "string",
            name = "ContactArn",
            target_id = prelude.String.id,
        }),
        Policy = schema.new({
            id = id.from(_N, "GetContactPolicyOutput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRotationInput = schema.new({
    id = id.from(_N, "GetRotationInput"),
    type = "structure",
    members = {
        RotationId = schema.new({
            id = id.from(_N, "GetRotationInput", "RotationId"),
            type = "string",
            name = "RotationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetRotationOutput = schema.new({
    id = id.from(_N, "GetRotationOutput"),
    type = "structure",
    members = {
        RotationArn = schema.new({
            id = id.from(_N, "GetRotationOutput", "RotationArn"),
            type = "string",
            name = "RotationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "GetRotationOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ContactIds = schema.new({
            id = id.from(_N, "GetRotationOutput", "ContactIds"),
            type = "list",
            name = "ContactIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartTime = schema.new({
            id = id.from(_N, "GetRotationOutput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TimeZoneId = schema.new({
            id = id.from(_N, "GetRotationOutput", "TimeZoneId"),
            type = "string",
            name = "TimeZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Recurrence = schema.new({
            id = id.from(_N, "GetRotationOutput", "Recurrence"),
            type = "structure",
            name = "Recurrence",
            target_id = id.from(_N, "RecurrenceSettings"),
            target = M.RecurrenceSettings,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetRotationOverrideInput = schema.new({
    id = id.from(_N, "GetRotationOverrideInput"),
    type = "structure",
    members = {
        RotationId = schema.new({
            id = id.from(_N, "GetRotationOverrideInput", "RotationId"),
            type = "string",
            name = "RotationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RotationOverrideId = schema.new({
            id = id.from(_N, "GetRotationOverrideInput", "RotationOverrideId"),
            type = "string",
            name = "RotationOverrideId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetRotationOverrideOutput = schema.new({
    id = id.from(_N, "GetRotationOverrideOutput"),
    type = "structure",
    members = {
        RotationOverrideId = schema.new({
            id = id.from(_N, "GetRotationOverrideOutput", "RotationOverrideId"),
            type = "string",
            name = "RotationOverrideId",
            target_id = prelude.String.id,
        }),
        RotationArn = schema.new({
            id = id.from(_N, "GetRotationOverrideOutput", "RotationArn"),
            type = "string",
            name = "RotationArn",
            target_id = prelude.String.id,
        }),
        NewContactIds = schema.new({
            id = id.from(_N, "GetRotationOverrideOutput", "NewContactIds"),
            type = "list",
            name = "NewContactIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        StartTime = schema.new({
            id = id.from(_N, "GetRotationOverrideOutput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "GetRotationOverrideOutput", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        CreateTime = schema.new({
            id = id.from(_N, "GetRotationOverrideOutput", "CreateTime"),
            type = "timestamp",
            name = "CreateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListContactChannelsInput = schema.new({
    id = id.from(_N, "ListContactChannelsInput"),
    type = "structure",
    members = {
        ContactId = schema.new({
            id = id.from(_N, "ListContactChannelsInput", "ContactId"),
            type = "string",
            name = "ContactId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListContactChannelsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListContactChannelsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListContactChannelsOutput = schema.new({
    id = id.from(_N, "ListContactChannelsOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListContactChannelsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        ContactChannels = schema.new({
            id = id.from(_N, "ListContactChannelsOutput", "ContactChannels"),
            type = "list",
            name = "ContactChannels",
            target_id = prelude.Document.id,
            list_member = M.ContactChannel,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListContactsInput = schema.new({
    id = id.from(_N, "ListContactsInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListContactsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListContactsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        AliasPrefix = schema.new({
            id = id.from(_N, "ListContactsInput", "AliasPrefix"),
            type = "string",
            name = "AliasPrefix",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "ListContactsInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.ListContactsOutput = schema.new({
    id = id.from(_N, "ListContactsOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListContactsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Contacts = schema.new({
            id = id.from(_N, "ListContactsOutput", "Contacts"),
            type = "list",
            name = "Contacts",
            target_id = prelude.Document.id,
            list_member = M.Contact,
        }),
    },
})

M.TimeRange = schema.new({
    id = id.from(_N, "TimeRange"),
    type = "structure",
    members = {
        StartTime = schema.new({
            id = id.from(_N, "TimeRange", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "TimeRange", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListEngagementsInput = schema.new({
    id = id.from(_N, "ListEngagementsInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListEngagementsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListEngagementsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        IncidentId = schema.new({
            id = id.from(_N, "ListEngagementsInput", "IncidentId"),
            type = "string",
            name = "IncidentId",
            target_id = prelude.String.id,
        }),
        TimeRangeValue = schema.new({
            id = id.from(_N, "ListEngagementsInput", "TimeRangeValue"),
            type = "structure",
            name = "TimeRangeValue",
            target_id = id.from(_N, "TimeRange"),
            target = M.TimeRange,
        }),
    },
})

M.ListEngagementsOutput = schema.new({
    id = id.from(_N, "ListEngagementsOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListEngagementsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Engagements = schema.new({
            id = id.from(_N, "ListEngagementsOutput", "Engagements"),
            type = "list",
            name = "Engagements",
            target_id = prelude.Document.id,
            list_member = M.Engagement,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListPageReceiptsInput = schema.new({
    id = id.from(_N, "ListPageReceiptsInput"),
    type = "structure",
    members = {
        PageId = schema.new({
            id = id.from(_N, "ListPageReceiptsInput", "PageId"),
            type = "string",
            name = "PageId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListPageReceiptsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListPageReceiptsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.Receipt = schema.new({
    id = id.from(_N, "Receipt"),
    type = "structure",
    members = {
        ContactChannelArn = schema.new({
            id = id.from(_N, "Receipt", "ContactChannelArn"),
            type = "string",
            name = "ContactChannelArn",
            target_id = prelude.String.id,
        }),
        ReceiptType = schema.new({
            id = id.from(_N, "Receipt", "ReceiptType"),
            type = "string",
            name = "ReceiptType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReceiptInfo = schema.new({
            id = id.from(_N, "Receipt", "ReceiptInfo"),
            type = "string",
            name = "ReceiptInfo",
            target_id = prelude.String.id,
        }),
        ReceiptTime = schema.new({
            id = id.from(_N, "Receipt", "ReceiptTime"),
            type = "timestamp",
            name = "ReceiptTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListPageReceiptsOutput = schema.new({
    id = id.from(_N, "ListPageReceiptsOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListPageReceiptsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Receipts = schema.new({
            id = id.from(_N, "ListPageReceiptsOutput", "Receipts"),
            type = "list",
            name = "Receipts",
            target_id = prelude.Document.id,
            list_member = M.Receipt,
        }),
    },
})

M.ListPageResolutionsInput = schema.new({
    id = id.from(_N, "ListPageResolutionsInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListPageResolutionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        PageId = schema.new({
            id = id.from(_N, "ListPageResolutionsInput", "PageId"),
            type = "string",
            name = "PageId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResolutionContact = schema.new({
    id = id.from(_N, "ResolutionContact"),
    type = "structure",
    members = {
        ContactArn = schema.new({
            id = id.from(_N, "ResolutionContact", "ContactArn"),
            type = "string",
            name = "ContactArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "ResolutionContact", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StageIndex = schema.new({
            id = id.from(_N, "ResolutionContact", "StageIndex"),
            type = "integer",
            name = "StageIndex",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.ListPageResolutionsOutput = schema.new({
    id = id.from(_N, "ListPageResolutionsOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListPageResolutionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        PageResolutions = schema.new({
            id = id.from(_N, "ListPageResolutionsOutput", "PageResolutions"),
            type = "list",
            name = "PageResolutions",
            target_id = prelude.Document.id,
            list_member = M.ResolutionContact,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListPagesByContactInput = schema.new({
    id = id.from(_N, "ListPagesByContactInput"),
    type = "structure",
    members = {
        ContactId = schema.new({
            id = id.from(_N, "ListPagesByContactInput", "ContactId"),
            type = "string",
            name = "ContactId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListPagesByContactInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListPagesByContactInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.Page = schema.new({
    id = id.from(_N, "Page"),
    type = "structure",
    members = {
        PageArn = schema.new({
            id = id.from(_N, "Page", "PageArn"),
            type = "string",
            name = "PageArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EngagementArn = schema.new({
            id = id.from(_N, "Page", "EngagementArn"),
            type = "string",
            name = "EngagementArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ContactArn = schema.new({
            id = id.from(_N, "Page", "ContactArn"),
            type = "string",
            name = "ContactArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Sender = schema.new({
            id = id.from(_N, "Page", "Sender"),
            type = "string",
            name = "Sender",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IncidentId = schema.new({
            id = id.from(_N, "Page", "IncidentId"),
            type = "string",
            name = "IncidentId",
            target_id = prelude.String.id,
        }),
        SentTime = schema.new({
            id = id.from(_N, "Page", "SentTime"),
            type = "timestamp",
            name = "SentTime",
            target_id = prelude.Timestamp.id,
        }),
        DeliveryTime = schema.new({
            id = id.from(_N, "Page", "DeliveryTime"),
            type = "timestamp",
            name = "DeliveryTime",
            target_id = prelude.Timestamp.id,
        }),
        ReadTime = schema.new({
            id = id.from(_N, "Page", "ReadTime"),
            type = "timestamp",
            name = "ReadTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListPagesByContactOutput = schema.new({
    id = id.from(_N, "ListPagesByContactOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListPagesByContactOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Pages = schema.new({
            id = id.from(_N, "ListPagesByContactOutput", "Pages"),
            type = "list",
            name = "Pages",
            target_id = prelude.Document.id,
            list_member = M.Page,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListPagesByEngagementInput = schema.new({
    id = id.from(_N, "ListPagesByEngagementInput"),
    type = "structure",
    members = {
        EngagementId = schema.new({
            id = id.from(_N, "ListPagesByEngagementInput", "EngagementId"),
            type = "string",
            name = "EngagementId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListPagesByEngagementInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListPagesByEngagementInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListPagesByEngagementOutput = schema.new({
    id = id.from(_N, "ListPagesByEngagementOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListPagesByEngagementOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Pages = schema.new({
            id = id.from(_N, "ListPagesByEngagementOutput", "Pages"),
            type = "list",
            name = "Pages",
            target_id = prelude.Document.id,
            list_member = M.Page,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PreviewOverride = schema.new({
    id = id.from(_N, "PreviewOverride"),
    type = "structure",
    members = {
        NewMembers = schema.new({
            id = id.from(_N, "PreviewOverride", "NewMembers"),
            type = "list",
            name = "NewMembers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        StartTime = schema.new({
            id = id.from(_N, "PreviewOverride", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "PreviewOverride", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListPreviewRotationShiftsInput = schema.new({
    id = id.from(_N, "ListPreviewRotationShiftsInput"),
    type = "structure",
    members = {
        RotationStartTime = schema.new({
            id = id.from(_N, "ListPreviewRotationShiftsInput", "RotationStartTime"),
            type = "timestamp",
            name = "RotationStartTime",
            target_id = prelude.Timestamp.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "ListPreviewRotationShiftsInput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "ListPreviewRotationShiftsInput", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Members = schema.new({
            id = id.from(_N, "ListPreviewRotationShiftsInput", "Members"),
            type = "list",
            name = "Members",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TimeZoneId = schema.new({
            id = id.from(_N, "ListPreviewRotationShiftsInput", "TimeZoneId"),
            type = "string",
            name = "TimeZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Recurrence = schema.new({
            id = id.from(_N, "ListPreviewRotationShiftsInput", "Recurrence"),
            type = "structure",
            name = "Recurrence",
            target_id = id.from(_N, "RecurrenceSettings"),
            target = M.RecurrenceSettings,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Overrides = schema.new({
            id = id.from(_N, "ListPreviewRotationShiftsInput", "Overrides"),
            type = "list",
            name = "Overrides",
            target_id = prelude.Document.id,
            list_member = M.PreviewOverride,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListPreviewRotationShiftsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListPreviewRotationShiftsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ShiftDetails = schema.new({
    id = id.from(_N, "ShiftDetails"),
    type = "structure",
    members = {
        OverriddenContactIds = schema.new({
            id = id.from(_N, "ShiftDetails", "OverriddenContactIds"),
            type = "list",
            name = "OverriddenContactIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RotationShift = schema.new({
    id = id.from(_N, "RotationShift"),
    type = "structure",
    members = {
        ContactIds = schema.new({
            id = id.from(_N, "RotationShift", "ContactIds"),
            type = "list",
            name = "ContactIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        StartTime = schema.new({
            id = id.from(_N, "RotationShift", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndTime = schema.new({
            id = id.from(_N, "RotationShift", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "RotationShift", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        ShiftDetails = schema.new({
            id = id.from(_N, "RotationShift", "ShiftDetails"),
            type = "structure",
            name = "ShiftDetails",
            target_id = id.from(_N, "ShiftDetails"),
            target = M.ShiftDetails,
        }),
    },
})

M.ListPreviewRotationShiftsOutput = schema.new({
    id = id.from(_N, "ListPreviewRotationShiftsOutput"),
    type = "structure",
    members = {
        RotationShifts = schema.new({
            id = id.from(_N, "ListPreviewRotationShiftsOutput", "RotationShifts"),
            type = "list",
            name = "RotationShifts",
            target_id = prelude.Document.id,
            list_member = M.RotationShift,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListPreviewRotationShiftsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRotationOverridesInput = schema.new({
    id = id.from(_N, "ListRotationOverridesInput"),
    type = "structure",
    members = {
        RotationId = schema.new({
            id = id.from(_N, "ListRotationOverridesInput", "RotationId"),
            type = "string",
            name = "RotationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartTime = schema.new({
            id = id.from(_N, "ListRotationOverridesInput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndTime = schema.new({
            id = id.from(_N, "ListRotationOverridesInput", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListRotationOverridesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListRotationOverridesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.RotationOverride = schema.new({
    id = id.from(_N, "RotationOverride"),
    type = "structure",
    members = {
        RotationOverrideId = schema.new({
            id = id.from(_N, "RotationOverride", "RotationOverrideId"),
            type = "string",
            name = "RotationOverrideId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NewContactIds = schema.new({
            id = id.from(_N, "RotationOverride", "NewContactIds"),
            type = "list",
            name = "NewContactIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartTime = schema.new({
            id = id.from(_N, "RotationOverride", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndTime = schema.new({
            id = id.from(_N, "RotationOverride", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreateTime = schema.new({
            id = id.from(_N, "RotationOverride", "CreateTime"),
            type = "timestamp",
            name = "CreateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListRotationOverridesOutput = schema.new({
    id = id.from(_N, "ListRotationOverridesOutput"),
    type = "structure",
    members = {
        RotationOverrides = schema.new({
            id = id.from(_N, "ListRotationOverridesOutput", "RotationOverrides"),
            type = "list",
            name = "RotationOverrides",
            target_id = prelude.Document.id,
            list_member = M.RotationOverride,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListRotationOverridesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRotationsInput = schema.new({
    id = id.from(_N, "ListRotationsInput"),
    type = "structure",
    members = {
        RotationNamePrefix = schema.new({
            id = id.from(_N, "ListRotationsInput", "RotationNamePrefix"),
            type = "string",
            name = "RotationNamePrefix",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListRotationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListRotationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.Rotation = schema.new({
    id = id.from(_N, "Rotation"),
    type = "structure",
    members = {
        RotationArn = schema.new({
            id = id.from(_N, "Rotation", "RotationArn"),
            type = "string",
            name = "RotationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "Rotation", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ContactIds = schema.new({
            id = id.from(_N, "Rotation", "ContactIds"),
            type = "list",
            name = "ContactIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        StartTime = schema.new({
            id = id.from(_N, "Rotation", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        TimeZoneId = schema.new({
            id = id.from(_N, "Rotation", "TimeZoneId"),
            type = "string",
            name = "TimeZoneId",
            target_id = prelude.String.id,
        }),
        Recurrence = schema.new({
            id = id.from(_N, "Rotation", "Recurrence"),
            type = "structure",
            name = "Recurrence",
            target_id = id.from(_N, "RecurrenceSettings"),
            target = M.RecurrenceSettings,
        }),
    },
})

M.ListRotationsOutput = schema.new({
    id = id.from(_N, "ListRotationsOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListRotationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Rotations = schema.new({
            id = id.from(_N, "ListRotationsOutput", "Rotations"),
            type = "list",
            name = "Rotations",
            target_id = prelude.Document.id,
            list_member = M.Rotation,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListRotationShiftsInput = schema.new({
    id = id.from(_N, "ListRotationShiftsInput"),
    type = "structure",
    members = {
        RotationId = schema.new({
            id = id.from(_N, "ListRotationShiftsInput", "RotationId"),
            type = "string",
            name = "RotationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartTime = schema.new({
            id = id.from(_N, "ListRotationShiftsInput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "ListRotationShiftsInput", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListRotationShiftsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListRotationShiftsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListRotationShiftsOutput = schema.new({
    id = id.from(_N, "ListRotationShiftsOutput"),
    type = "structure",
    members = {
        RotationShifts = schema.new({
            id = id.from(_N, "ListRotationShiftsOutput", "RotationShifts"),
            type = "list",
            name = "RotationShifts",
            target_id = prelude.Document.id,
            list_member = M.RotationShift,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListRotationShiftsOutput", "NextToken"),
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
        ResourceARN = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
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

M.PutContactPolicyInput = schema.new({
    id = id.from(_N, "PutContactPolicyInput"),
    type = "structure",
    members = {
        ContactArn = schema.new({
            id = id.from(_N, "PutContactPolicyInput", "ContactArn"),
            type = "string",
            name = "ContactArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Policy = schema.new({
            id = id.from(_N, "PutContactPolicyInput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutContactPolicyOutput = schema.new({
    id = id.from(_N, "PutContactPolicyOutput"),
    type = "structure",
})

M.SendActivationCodeInput = schema.new({
    id = id.from(_N, "SendActivationCodeInput"),
    type = "structure",
    members = {
        ContactChannelId = schema.new({
            id = id.from(_N, "SendActivationCodeInput", "ContactChannelId"),
            type = "string",
            name = "ContactChannelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SendActivationCodeOutput = schema.new({
    id = id.from(_N, "SendActivationCodeOutput"),
    type = "structure",
})

M.StartEngagementInput = schema.new({
    id = id.from(_N, "StartEngagementInput"),
    type = "structure",
    members = {
        ContactId = schema.new({
            id = id.from(_N, "StartEngagementInput", "ContactId"),
            type = "string",
            name = "ContactId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Sender = schema.new({
            id = id.from(_N, "StartEngagementInput", "Sender"),
            type = "string",
            name = "Sender",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Subject = schema.new({
            id = id.from(_N, "StartEngagementInput", "Subject"),
            type = "string",
            name = "Subject",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Content = schema.new({
            id = id.from(_N, "StartEngagementInput", "Content"),
            type = "string",
            name = "Content",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PublicSubject = schema.new({
            id = id.from(_N, "StartEngagementInput", "PublicSubject"),
            type = "string",
            name = "PublicSubject",
            target_id = prelude.String.id,
        }),
        PublicContent = schema.new({
            id = id.from(_N, "StartEngagementInput", "PublicContent"),
            type = "string",
            name = "PublicContent",
            target_id = prelude.String.id,
        }),
        IncidentId = schema.new({
            id = id.from(_N, "StartEngagementInput", "IncidentId"),
            type = "string",
            name = "IncidentId",
            target_id = prelude.String.id,
        }),
        IdempotencyToken = schema.new({
            id = id.from(_N, "StartEngagementInput", "IdempotencyToken"),
            type = "string",
            name = "IdempotencyToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.StartEngagementOutput = schema.new({
    id = id.from(_N, "StartEngagementOutput"),
    type = "structure",
    members = {
        EngagementArn = schema.new({
            id = id.from(_N, "StartEngagementOutput", "EngagementArn"),
            type = "string",
            name = "EngagementArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopEngagementInput = schema.new({
    id = id.from(_N, "StopEngagementInput"),
    type = "structure",
    members = {
        EngagementId = schema.new({
            id = id.from(_N, "StopEngagementInput", "EngagementId"),
            type = "string",
            name = "EngagementId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Reason = schema.new({
            id = id.from(_N, "StopEngagementInput", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
    },
})

M.StopEngagementOutput = schema.new({
    id = id.from(_N, "StopEngagementOutput"),
    type = "structure",
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
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

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
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

M.UpdateContactInput = schema.new({
    id = id.from(_N, "UpdateContactInput"),
    type = "structure",
    members = {
        ContactId = schema.new({
            id = id.from(_N, "UpdateContactInput", "ContactId"),
            type = "string",
            name = "ContactId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DisplayName = schema.new({
            id = id.from(_N, "UpdateContactInput", "DisplayName"),
            type = "string",
            name = "DisplayName",
            target_id = prelude.String.id,
        }),
        Plan = schema.new({
            id = id.from(_N, "UpdateContactInput", "Plan"),
            type = "structure",
            name = "Plan",
            target_id = id.from(_N, "Plan"),
            target = M.Plan,
        }),
    },
})

M.UpdateContactOutput = schema.new({
    id = id.from(_N, "UpdateContactOutput"),
    type = "structure",
})

M.UpdateContactChannelInput = schema.new({
    id = id.from(_N, "UpdateContactChannelInput"),
    type = "structure",
    members = {
        ContactChannelId = schema.new({
            id = id.from(_N, "UpdateContactChannelInput", "ContactChannelId"),
            type = "string",
            name = "ContactChannelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateContactChannelInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        DeliveryAddress = schema.new({
            id = id.from(_N, "UpdateContactChannelInput", "DeliveryAddress"),
            type = "structure",
            name = "DeliveryAddress",
            target_id = id.from(_N, "ContactChannelAddress"),
            target = M.ContactChannelAddress,
        }),
    },
})

M.UpdateContactChannelOutput = schema.new({
    id = id.from(_N, "UpdateContactChannelOutput"),
    type = "structure",
})

M.UpdateRotationInput = schema.new({
    id = id.from(_N, "UpdateRotationInput"),
    type = "structure",
    members = {
        RotationId = schema.new({
            id = id.from(_N, "UpdateRotationInput", "RotationId"),
            type = "string",
            name = "RotationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ContactIds = schema.new({
            id = id.from(_N, "UpdateRotationInput", "ContactIds"),
            type = "list",
            name = "ContactIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        StartTime = schema.new({
            id = id.from(_N, "UpdateRotationInput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        TimeZoneId = schema.new({
            id = id.from(_N, "UpdateRotationInput", "TimeZoneId"),
            type = "string",
            name = "TimeZoneId",
            target_id = prelude.String.id,
        }),
        Recurrence = schema.new({
            id = id.from(_N, "UpdateRotationInput", "Recurrence"),
            type = "structure",
            name = "Recurrence",
            target_id = id.from(_N, "RecurrenceSettings"),
            target = M.RecurrenceSettings,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateRotationOutput = schema.new({
    id = id.from(_N, "UpdateRotationOutput"),
    type = "structure",
})

return M
