local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.chimesdkmessaging"

local M = {}

M.AppInstanceUserMembershipSummary = schema.new({
    id = id.from(_N, "AppInstanceUserMembershipSummary"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "AppInstanceUserMembershipSummary", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        ReadMarkerTimestamp = schema.new({
            id = id.from(_N, "AppInstanceUserMembershipSummary", "ReadMarkerTimestamp"),
            type = "timestamp",
            name = "ReadMarkerTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        SubChannelId = schema.new({
            id = id.from(_N, "AppInstanceUserMembershipSummary", "SubChannelId"),
            type = "string",
            name = "SubChannelId",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateChannelFlowInput = schema.new({
    id = id.from(_N, "AssociateChannelFlowInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "AssociateChannelFlowInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ChannelFlowArn = schema.new({
            id = id.from(_N, "AssociateChannelFlowInput", "ChannelFlowArn"),
            type = "string",
            name = "ChannelFlowArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "AssociateChannelFlowInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
    },
})

M.AssociateChannelFlowOutput = schema.new({
    id = id.from(_N, "AssociateChannelFlowOutput"),
    type = "structure",
})

M.BadRequestException = schema.new({
    id = id.from(_N, "BadRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "BadRequestException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "BadRequestException", "Message"),
            type = "string",
            name = "Message",
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
        Code = schema.new({
            id = id.from(_N, "ConflictException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ConflictException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ForbiddenException = schema.new({
    id = id.from(_N, "ForbiddenException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "ForbiddenException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ForbiddenException", "Message"),
            type = "string",
            name = "Message",
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
        Code = schema.new({
            id = id.from(_N, "NotFoundException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "NotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceFailureException = schema.new({
    id = id.from(_N, "ServiceFailureException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "ServiceFailureException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ServiceFailureException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceUnavailableException = schema.new({
    id = id.from(_N, "ServiceUnavailableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "ServiceUnavailableException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ServiceUnavailableException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ThrottledClientException = schema.new({
    id = id.from(_N, "ThrottledClientException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "ThrottledClientException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ThrottledClientException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.UnauthorizedClientException = schema.new({
    id = id.from(_N, "UnauthorizedClientException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "UnauthorizedClientException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "UnauthorizedClientException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.Identity = schema.new({
    id = id.from(_N, "Identity"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "Identity", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "Identity", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchChannelMemberships = schema.new({
    id = id.from(_N, "BatchChannelMemberships"),
    type = "structure",
    members = {
        InvitedBy = schema.new({
            id = id.from(_N, "BatchChannelMemberships", "InvitedBy"),
            type = "structure",
            name = "InvitedBy",
            target_id = id.from(_N, "Identity"),
            target = M.Identity,
        }),
        Type = schema.new({
            id = id.from(_N, "BatchChannelMemberships", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Members = schema.new({
            id = id.from(_N, "BatchChannelMemberships", "Members"),
            type = "list",
            name = "Members",
            target_id = prelude.Document.id,
            list_member = M.Identity,
        }),
        ChannelArn = schema.new({
            id = id.from(_N, "BatchChannelMemberships", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
        }),
        SubChannelId = schema.new({
            id = id.from(_N, "BatchChannelMemberships", "SubChannelId"),
            type = "string",
            name = "SubChannelId",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchCreateChannelMembershipInput = schema.new({
    id = id.from(_N, "BatchCreateChannelMembershipInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "BatchCreateChannelMembershipInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "BatchCreateChannelMembershipInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        MemberArns = schema.new({
            id = id.from(_N, "BatchCreateChannelMembershipInput", "MemberArns"),
            type = "list",
            name = "MemberArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "BatchCreateChannelMembershipInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
        SubChannelId = schema.new({
            id = id.from(_N, "BatchCreateChannelMembershipInput", "SubChannelId"),
            type = "string",
            name = "SubChannelId",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchCreateChannelMembershipError = schema.new({
    id = id.from(_N, "BatchCreateChannelMembershipError"),
    type = "structure",
    members = {
        MemberArn = schema.new({
            id = id.from(_N, "BatchCreateChannelMembershipError", "MemberArn"),
            type = "string",
            name = "MemberArn",
            target_id = prelude.String.id,
        }),
        ErrorCode = schema.new({
            id = id.from(_N, "BatchCreateChannelMembershipError", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "BatchCreateChannelMembershipError", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchCreateChannelMembershipOutput = schema.new({
    id = id.from(_N, "BatchCreateChannelMembershipOutput"),
    type = "structure",
    members = {
        BatchChannelMemberships = schema.new({
            id = id.from(_N, "BatchCreateChannelMembershipOutput", "BatchChannelMemberships"),
            type = "structure",
            name = "BatchChannelMemberships",
            target_id = id.from(_N, "BatchChannelMemberships"),
            target = M.BatchChannelMemberships,
        }),
        Errors = schema.new({
            id = id.from(_N, "BatchCreateChannelMembershipOutput", "Errors"),
            type = "list",
            name = "Errors",
            target_id = prelude.Document.id,
            list_member = M.BatchCreateChannelMembershipError,
        }),
    },
})

M.ResourceLimitExceededException = schema.new({
    id = id.from(_N, "ResourceLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "ResourceLimitExceededException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ResourceLimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ElasticChannelConfiguration = schema.new({
    id = id.from(_N, "ElasticChannelConfiguration"),
    type = "structure",
    members = {
        MaximumSubChannels = schema.new({
            id = id.from(_N, "ElasticChannelConfiguration", "MaximumSubChannels"),
            type = "integer",
            name = "MaximumSubChannels",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetMembershipsPerSubChannel = schema.new({
            id = id.from(_N, "ElasticChannelConfiguration", "TargetMembershipsPerSubChannel"),
            type = "integer",
            name = "TargetMembershipsPerSubChannel",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MinimumMembershipPercentage = schema.new({
            id = id.from(_N, "ElasticChannelConfiguration", "MinimumMembershipPercentage"),
            type = "integer",
            name = "MinimumMembershipPercentage",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ExpirationSettings = schema.new({
    id = id.from(_N, "ExpirationSettings"),
    type = "structure",
    members = {
        ExpirationDays = schema.new({
            id = id.from(_N, "ExpirationSettings", "ExpirationDays"),
            type = "integer",
            name = "ExpirationDays",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExpirationCriterion = schema.new({
            id = id.from(_N, "ExpirationSettings", "ExpirationCriterion"),
            type = "string",
            name = "ExpirationCriterion",
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
        Name = schema.new({
            id = id.from(_N, "Channel", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ChannelArn = schema.new({
            id = id.from(_N, "Channel", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
        }),
        Mode = schema.new({
            id = id.from(_N, "Channel", "Mode"),
            type = "string",
            name = "Mode",
            target_id = prelude.String.id,
        }),
        Privacy = schema.new({
            id = id.from(_N, "Channel", "Privacy"),
            type = "string",
            name = "Privacy",
            target_id = prelude.String.id,
        }),
        Metadata = schema.new({
            id = id.from(_N, "Channel", "Metadata"),
            type = "string",
            name = "Metadata",
            target_id = prelude.String.id,
        }),
        CreatedBy = schema.new({
            id = id.from(_N, "Channel", "CreatedBy"),
            type = "structure",
            name = "CreatedBy",
            target_id = id.from(_N, "Identity"),
            target = M.Identity,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "Channel", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        LastMessageTimestamp = schema.new({
            id = id.from(_N, "Channel", "LastMessageTimestamp"),
            type = "timestamp",
            name = "LastMessageTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        LastUpdatedTimestamp = schema.new({
            id = id.from(_N, "Channel", "LastUpdatedTimestamp"),
            type = "timestamp",
            name = "LastUpdatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        ChannelFlowArn = schema.new({
            id = id.from(_N, "Channel", "ChannelFlowArn"),
            type = "string",
            name = "ChannelFlowArn",
            target_id = prelude.String.id,
        }),
        ElasticChannelConfiguration = schema.new({
            id = id.from(_N, "Channel", "ElasticChannelConfiguration"),
            type = "structure",
            name = "ElasticChannelConfiguration",
            target_id = id.from(_N, "ElasticChannelConfiguration"),
            target = M.ElasticChannelConfiguration,
        }),
        ExpirationSettings = schema.new({
            id = id.from(_N, "Channel", "ExpirationSettings"),
            type = "structure",
            name = "ExpirationSettings",
            target_id = id.from(_N, "ExpirationSettings"),
            target = M.ExpirationSettings,
        }),
    },
})

M.ChannelAssociatedWithFlowSummary = schema.new({
    id = id.from(_N, "ChannelAssociatedWithFlowSummary"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ChannelAssociatedWithFlowSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ChannelArn = schema.new({
            id = id.from(_N, "ChannelAssociatedWithFlowSummary", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
        }),
        Mode = schema.new({
            id = id.from(_N, "ChannelAssociatedWithFlowSummary", "Mode"),
            type = "string",
            name = "Mode",
            target_id = prelude.String.id,
        }),
        Privacy = schema.new({
            id = id.from(_N, "ChannelAssociatedWithFlowSummary", "Privacy"),
            type = "string",
            name = "Privacy",
            target_id = prelude.String.id,
        }),
        Metadata = schema.new({
            id = id.from(_N, "ChannelAssociatedWithFlowSummary", "Metadata"),
            type = "string",
            name = "Metadata",
            target_id = prelude.String.id,
        }),
    },
})

M.ChannelBan = schema.new({
    id = id.from(_N, "ChannelBan"),
    type = "structure",
    members = {
        Member = schema.new({
            id = id.from(_N, "ChannelBan", "Member"),
            type = "structure",
            name = "Member",
            target_id = id.from(_N, "Identity"),
            target = M.Identity,
        }),
        ChannelArn = schema.new({
            id = id.from(_N, "ChannelBan", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "ChannelBan", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        CreatedBy = schema.new({
            id = id.from(_N, "ChannelBan", "CreatedBy"),
            type = "structure",
            name = "CreatedBy",
            target_id = id.from(_N, "Identity"),
            target = M.Identity,
        }),
    },
})

M.ChannelBanSummary = schema.new({
    id = id.from(_N, "ChannelBanSummary"),
    type = "structure",
    members = {
        Member = schema.new({
            id = id.from(_N, "ChannelBanSummary", "Member"),
            type = "structure",
            name = "Member",
            target_id = id.from(_N, "Identity"),
            target = M.Identity,
        }),
    },
})

M.LambdaConfiguration = schema.new({
    id = id.from(_N, "LambdaConfiguration"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "LambdaConfiguration", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InvocationType = schema.new({
            id = id.from(_N, "LambdaConfiguration", "InvocationType"),
            type = "string",
            name = "InvocationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ProcessorConfiguration = schema.new({
    id = id.from(_N, "ProcessorConfiguration"),
    type = "structure",
    members = {
        Lambda = schema.new({
            id = id.from(_N, "ProcessorConfiguration", "Lambda"),
            type = "structure",
            name = "Lambda",
            target_id = id.from(_N, "LambdaConfiguration"),
            target = M.LambdaConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Processor = schema.new({
    id = id.from(_N, "Processor"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Processor", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Configuration = schema.new({
            id = id.from(_N, "Processor", "Configuration"),
            type = "structure",
            name = "Configuration",
            target_id = id.from(_N, "ProcessorConfiguration"),
            target = M.ProcessorConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExecutionOrder = schema.new({
            id = id.from(_N, "Processor", "ExecutionOrder"),
            type = "integer",
            name = "ExecutionOrder",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FallbackAction = schema.new({
            id = id.from(_N, "Processor", "FallbackAction"),
            type = "string",
            name = "FallbackAction",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ChannelFlow = schema.new({
    id = id.from(_N, "ChannelFlow"),
    type = "structure",
    members = {
        ChannelFlowArn = schema.new({
            id = id.from(_N, "ChannelFlow", "ChannelFlowArn"),
            type = "string",
            name = "ChannelFlowArn",
            target_id = prelude.String.id,
        }),
        Processors = schema.new({
            id = id.from(_N, "ChannelFlow", "Processors"),
            type = "list",
            name = "Processors",
            target_id = prelude.Document.id,
            list_member = M.Processor,
        }),
        Name = schema.new({
            id = id.from(_N, "ChannelFlow", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "ChannelFlow", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        LastUpdatedTimestamp = schema.new({
            id = id.from(_N, "ChannelFlow", "LastUpdatedTimestamp"),
            type = "timestamp",
            name = "LastUpdatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.MessageAttributeValue = schema.new({
    id = id.from(_N, "MessageAttributeValue"),
    type = "structure",
    members = {
        StringValues = schema.new({
            id = id.from(_N, "MessageAttributeValue", "StringValues"),
            type = "list",
            name = "StringValues",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.PushNotificationConfiguration = schema.new({
    id = id.from(_N, "PushNotificationConfiguration"),
    type = "structure",
    members = {
        Title = schema.new({
            id = id.from(_N, "PushNotificationConfiguration", "Title"),
            type = "string",
            name = "Title",
            target_id = prelude.String.id,
        }),
        Body = schema.new({
            id = id.from(_N, "PushNotificationConfiguration", "Body"),
            type = "string",
            name = "Body",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "PushNotificationConfiguration", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.ChannelMessageCallback = schema.new({
    id = id.from(_N, "ChannelMessageCallback"),
    type = "structure",
    members = {
        MessageId = schema.new({
            id = id.from(_N, "ChannelMessageCallback", "MessageId"),
            type = "string",
            name = "MessageId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Content = schema.new({
            id = id.from(_N, "ChannelMessageCallback", "Content"),
            type = "string",
            name = "Content",
            target_id = prelude.String.id,
        }),
        Metadata = schema.new({
            id = id.from(_N, "ChannelMessageCallback", "Metadata"),
            type = "string",
            name = "Metadata",
            target_id = prelude.String.id,
        }),
        PushNotification = schema.new({
            id = id.from(_N, "ChannelMessageCallback", "PushNotification"),
            type = "structure",
            name = "PushNotification",
            target_id = id.from(_N, "PushNotificationConfiguration"),
            target = M.PushNotificationConfiguration,
        }),
        MessageAttributes = schema.new({
            id = id.from(_N, "ChannelMessageCallback", "MessageAttributes"),
            type = "map",
            name = "MessageAttributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.MessageAttributeValue,
        }),
        SubChannelId = schema.new({
            id = id.from(_N, "ChannelMessageCallback", "SubChannelId"),
            type = "string",
            name = "SubChannelId",
            target_id = prelude.String.id,
        }),
        ContentType = schema.new({
            id = id.from(_N, "ChannelMessageCallback", "ContentType"),
            type = "string",
            name = "ContentType",
            target_id = prelude.String.id,
        }),
    },
})

M.ChannelFlowCallbackInput = schema.new({
    id = id.from(_N, "ChannelFlowCallbackInput"),
    type = "structure",
    members = {
        CallbackId = schema.new({
            id = id.from(_N, "ChannelFlowCallbackInput", "CallbackId"),
            type = "string",
            name = "CallbackId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        ChannelArn = schema.new({
            id = id.from(_N, "ChannelFlowCallbackInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        DeleteResource = schema.new({
            id = id.from(_N, "ChannelFlowCallbackInput", "DeleteResource"),
            type = "boolean",
            name = "DeleteResource",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        ChannelMessage = schema.new({
            id = id.from(_N, "ChannelFlowCallbackInput", "ChannelMessage"),
            type = "structure",
            name = "ChannelMessage",
            target_id = id.from(_N, "ChannelMessageCallback"),
            target = M.ChannelMessageCallback,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ChannelFlowCallbackOutput = schema.new({
    id = id.from(_N, "ChannelFlowCallbackOutput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "ChannelFlowCallbackOutput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
        }),
        CallbackId = schema.new({
            id = id.from(_N, "ChannelFlowCallbackOutput", "CallbackId"),
            type = "string",
            name = "CallbackId",
            target_id = prelude.String.id,
        }),
    },
})

M.ChannelFlowSummary = schema.new({
    id = id.from(_N, "ChannelFlowSummary"),
    type = "structure",
    members = {
        ChannelFlowArn = schema.new({
            id = id.from(_N, "ChannelFlowSummary", "ChannelFlowArn"),
            type = "string",
            name = "ChannelFlowArn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ChannelFlowSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Processors = schema.new({
            id = id.from(_N, "ChannelFlowSummary", "Processors"),
            type = "list",
            name = "Processors",
            target_id = prelude.Document.id,
            list_member = M.Processor,
        }),
    },
})

M.ChannelMembership = schema.new({
    id = id.from(_N, "ChannelMembership"),
    type = "structure",
    members = {
        InvitedBy = schema.new({
            id = id.from(_N, "ChannelMembership", "InvitedBy"),
            type = "structure",
            name = "InvitedBy",
            target_id = id.from(_N, "Identity"),
            target = M.Identity,
        }),
        Type = schema.new({
            id = id.from(_N, "ChannelMembership", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Member = schema.new({
            id = id.from(_N, "ChannelMembership", "Member"),
            type = "structure",
            name = "Member",
            target_id = id.from(_N, "Identity"),
            target = M.Identity,
        }),
        ChannelArn = schema.new({
            id = id.from(_N, "ChannelMembership", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "ChannelMembership", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        LastUpdatedTimestamp = schema.new({
            id = id.from(_N, "ChannelMembership", "LastUpdatedTimestamp"),
            type = "timestamp",
            name = "LastUpdatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        SubChannelId = schema.new({
            id = id.from(_N, "ChannelMembership", "SubChannelId"),
            type = "string",
            name = "SubChannelId",
            target_id = prelude.String.id,
        }),
    },
})

M.ChannelSummary = schema.new({
    id = id.from(_N, "ChannelSummary"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ChannelSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ChannelArn = schema.new({
            id = id.from(_N, "ChannelSummary", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
        }),
        Mode = schema.new({
            id = id.from(_N, "ChannelSummary", "Mode"),
            type = "string",
            name = "Mode",
            target_id = prelude.String.id,
        }),
        Privacy = schema.new({
            id = id.from(_N, "ChannelSummary", "Privacy"),
            type = "string",
            name = "Privacy",
            target_id = prelude.String.id,
        }),
        Metadata = schema.new({
            id = id.from(_N, "ChannelSummary", "Metadata"),
            type = "string",
            name = "Metadata",
            target_id = prelude.String.id,
        }),
        LastMessageTimestamp = schema.new({
            id = id.from(_N, "ChannelSummary", "LastMessageTimestamp"),
            type = "timestamp",
            name = "LastMessageTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ChannelMembershipForAppInstanceUserSummary = schema.new({
    id = id.from(_N, "ChannelMembershipForAppInstanceUserSummary"),
    type = "structure",
    members = {
        ChannelSummary = schema.new({
            id = id.from(_N, "ChannelMembershipForAppInstanceUserSummary", "ChannelSummary"),
            type = "structure",
            name = "ChannelSummary",
            target_id = id.from(_N, "ChannelSummary"),
            target = M.ChannelSummary,
        }),
        AppInstanceUserMembershipSummary = schema.new({
            id = id.from(_N, "ChannelMembershipForAppInstanceUserSummary", "AppInstanceUserMembershipSummary"),
            type = "structure",
            name = "AppInstanceUserMembershipSummary",
            target_id = id.from(_N, "AppInstanceUserMembershipSummary"),
            target = M.AppInstanceUserMembershipSummary,
        }),
    },
})

M.PushNotificationPreferences = schema.new({
    id = id.from(_N, "PushNotificationPreferences"),
    type = "structure",
    members = {
        AllowNotifications = schema.new({
            id = id.from(_N, "PushNotificationPreferences", "AllowNotifications"),
            type = "string",
            name = "AllowNotifications",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FilterRule = schema.new({
            id = id.from(_N, "PushNotificationPreferences", "FilterRule"),
            type = "string",
            name = "FilterRule",
            target_id = prelude.String.id,
        }),
    },
})

M.ChannelMembershipPreferences = schema.new({
    id = id.from(_N, "ChannelMembershipPreferences"),
    type = "structure",
    members = {
        PushNotifications = schema.new({
            id = id.from(_N, "ChannelMembershipPreferences", "PushNotifications"),
            type = "structure",
            name = "PushNotifications",
            target_id = id.from(_N, "PushNotificationPreferences"),
            target = M.PushNotificationPreferences,
        }),
    },
})

M.ChannelMembershipSummary = schema.new({
    id = id.from(_N, "ChannelMembershipSummary"),
    type = "structure",
    members = {
        Member = schema.new({
            id = id.from(_N, "ChannelMembershipSummary", "Member"),
            type = "structure",
            name = "Member",
            target_id = id.from(_N, "Identity"),
            target = M.Identity,
        }),
    },
})

M.ChannelMessageStatusStructure = schema.new({
    id = id.from(_N, "ChannelMessageStatusStructure"),
    type = "structure",
    members = {
        Value = schema.new({
            id = id.from(_N, "ChannelMessageStatusStructure", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
        Detail = schema.new({
            id = id.from(_N, "ChannelMessageStatusStructure", "Detail"),
            type = "string",
            name = "Detail",
            target_id = prelude.String.id,
        }),
    },
})

M.Target = schema.new({
    id = id.from(_N, "Target"),
    type = "structure",
    members = {
        MemberArn = schema.new({
            id = id.from(_N, "Target", "MemberArn"),
            type = "string",
            name = "MemberArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ChannelMessage = schema.new({
    id = id.from(_N, "ChannelMessage"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "ChannelMessage", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
        }),
        MessageId = schema.new({
            id = id.from(_N, "ChannelMessage", "MessageId"),
            type = "string",
            name = "MessageId",
            target_id = prelude.String.id,
        }),
        Content = schema.new({
            id = id.from(_N, "ChannelMessage", "Content"),
            type = "string",
            name = "Content",
            target_id = prelude.String.id,
        }),
        Metadata = schema.new({
            id = id.from(_N, "ChannelMessage", "Metadata"),
            type = "string",
            name = "Metadata",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "ChannelMessage", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "ChannelMessage", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        LastEditedTimestamp = schema.new({
            id = id.from(_N, "ChannelMessage", "LastEditedTimestamp"),
            type = "timestamp",
            name = "LastEditedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        LastUpdatedTimestamp = schema.new({
            id = id.from(_N, "ChannelMessage", "LastUpdatedTimestamp"),
            type = "timestamp",
            name = "LastUpdatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        Sender = schema.new({
            id = id.from(_N, "ChannelMessage", "Sender"),
            type = "structure",
            name = "Sender",
            target_id = id.from(_N, "Identity"),
            target = M.Identity,
        }),
        Redacted = schema.new({
            id = id.from(_N, "ChannelMessage", "Redacted"),
            type = "boolean",
            name = "Redacted",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Persistence = schema.new({
            id = id.from(_N, "ChannelMessage", "Persistence"),
            type = "string",
            name = "Persistence",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ChannelMessage", "Status"),
            type = "structure",
            name = "Status",
            target_id = id.from(_N, "ChannelMessageStatusStructure"),
            target = M.ChannelMessageStatusStructure,
        }),
        MessageAttributes = schema.new({
            id = id.from(_N, "ChannelMessage", "MessageAttributes"),
            type = "map",
            name = "MessageAttributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.MessageAttributeValue,
        }),
        SubChannelId = schema.new({
            id = id.from(_N, "ChannelMessage", "SubChannelId"),
            type = "string",
            name = "SubChannelId",
            target_id = prelude.String.id,
        }),
        ContentType = schema.new({
            id = id.from(_N, "ChannelMessage", "ContentType"),
            type = "string",
            name = "ContentType",
            target_id = prelude.String.id,
        }),
        Target = schema.new({
            id = id.from(_N, "ChannelMessage", "Target"),
            type = "list",
            name = "Target",
            target_id = prelude.Document.id,
            list_member = M.Target,
        }),
    },
})

M.ChannelMessageSummary = schema.new({
    id = id.from(_N, "ChannelMessageSummary"),
    type = "structure",
    members = {
        MessageId = schema.new({
            id = id.from(_N, "ChannelMessageSummary", "MessageId"),
            type = "string",
            name = "MessageId",
            target_id = prelude.String.id,
        }),
        Content = schema.new({
            id = id.from(_N, "ChannelMessageSummary", "Content"),
            type = "string",
            name = "Content",
            target_id = prelude.String.id,
        }),
        Metadata = schema.new({
            id = id.from(_N, "ChannelMessageSummary", "Metadata"),
            type = "string",
            name = "Metadata",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "ChannelMessageSummary", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "ChannelMessageSummary", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        LastUpdatedTimestamp = schema.new({
            id = id.from(_N, "ChannelMessageSummary", "LastUpdatedTimestamp"),
            type = "timestamp",
            name = "LastUpdatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        LastEditedTimestamp = schema.new({
            id = id.from(_N, "ChannelMessageSummary", "LastEditedTimestamp"),
            type = "timestamp",
            name = "LastEditedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        Sender = schema.new({
            id = id.from(_N, "ChannelMessageSummary", "Sender"),
            type = "structure",
            name = "Sender",
            target_id = id.from(_N, "Identity"),
            target = M.Identity,
        }),
        Redacted = schema.new({
            id = id.from(_N, "ChannelMessageSummary", "Redacted"),
            type = "boolean",
            name = "Redacted",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Status = schema.new({
            id = id.from(_N, "ChannelMessageSummary", "Status"),
            type = "structure",
            name = "Status",
            target_id = id.from(_N, "ChannelMessageStatusStructure"),
            target = M.ChannelMessageStatusStructure,
        }),
        MessageAttributes = schema.new({
            id = id.from(_N, "ChannelMessageSummary", "MessageAttributes"),
            type = "map",
            name = "MessageAttributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.MessageAttributeValue,
        }),
        ContentType = schema.new({
            id = id.from(_N, "ChannelMessageSummary", "ContentType"),
            type = "string",
            name = "ContentType",
            target_id = prelude.String.id,
        }),
        Target = schema.new({
            id = id.from(_N, "ChannelMessageSummary", "Target"),
            type = "list",
            name = "Target",
            target_id = prelude.Document.id,
            list_member = M.Target,
        }),
    },
})

M.ChannelModeratedByAppInstanceUserSummary = schema.new({
    id = id.from(_N, "ChannelModeratedByAppInstanceUserSummary"),
    type = "structure",
    members = {
        ChannelSummary = schema.new({
            id = id.from(_N, "ChannelModeratedByAppInstanceUserSummary", "ChannelSummary"),
            type = "structure",
            name = "ChannelSummary",
            target_id = id.from(_N, "ChannelSummary"),
            target = M.ChannelSummary,
        }),
    },
})

M.ChannelModerator = schema.new({
    id = id.from(_N, "ChannelModerator"),
    type = "structure",
    members = {
        Moderator = schema.new({
            id = id.from(_N, "ChannelModerator", "Moderator"),
            type = "structure",
            name = "Moderator",
            target_id = id.from(_N, "Identity"),
            target = M.Identity,
        }),
        ChannelArn = schema.new({
            id = id.from(_N, "ChannelModerator", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "ChannelModerator", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        CreatedBy = schema.new({
            id = id.from(_N, "ChannelModerator", "CreatedBy"),
            type = "structure",
            name = "CreatedBy",
            target_id = id.from(_N, "Identity"),
            target = M.Identity,
        }),
    },
})

M.ChannelModeratorSummary = schema.new({
    id = id.from(_N, "ChannelModeratorSummary"),
    type = "structure",
    members = {
        Moderator = schema.new({
            id = id.from(_N, "ChannelModeratorSummary", "Moderator"),
            type = "structure",
            name = "Moderator",
            target_id = id.from(_N, "Identity"),
            target = M.Identity,
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

M.CreateChannelInput = schema.new({
    id = id.from(_N, "CreateChannelInput"),
    type = "structure",
    members = {
        AppInstanceArn = schema.new({
            id = id.from(_N, "CreateChannelInput", "AppInstanceArn"),
            type = "string",
            name = "AppInstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateChannelInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Mode = schema.new({
            id = id.from(_N, "CreateChannelInput", "Mode"),
            type = "string",
            name = "Mode",
            target_id = prelude.String.id,
        }),
        Privacy = schema.new({
            id = id.from(_N, "CreateChannelInput", "Privacy"),
            type = "string",
            name = "Privacy",
            target_id = prelude.String.id,
        }),
        Metadata = schema.new({
            id = id.from(_N, "CreateChannelInput", "Metadata"),
            type = "string",
            name = "Metadata",
            target_id = prelude.String.id,
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "CreateChannelInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateChannelInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "CreateChannelInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
        ChannelId = schema.new({
            id = id.from(_N, "CreateChannelInput", "ChannelId"),
            type = "string",
            name = "ChannelId",
            target_id = prelude.String.id,
        }),
        MemberArns = schema.new({
            id = id.from(_N, "CreateChannelInput", "MemberArns"),
            type = "list",
            name = "MemberArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ModeratorArns = schema.new({
            id = id.from(_N, "CreateChannelInput", "ModeratorArns"),
            type = "list",
            name = "ModeratorArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ElasticChannelConfiguration = schema.new({
            id = id.from(_N, "CreateChannelInput", "ElasticChannelConfiguration"),
            type = "structure",
            name = "ElasticChannelConfiguration",
            target_id = id.from(_N, "ElasticChannelConfiguration"),
            target = M.ElasticChannelConfiguration,
        }),
        ExpirationSettings = schema.new({
            id = id.from(_N, "CreateChannelInput", "ExpirationSettings"),
            type = "structure",
            name = "ExpirationSettings",
            target_id = id.from(_N, "ExpirationSettings"),
            target = M.ExpirationSettings,
        }),
    },
})

M.CreateChannelOutput = schema.new({
    id = id.from(_N, "CreateChannelOutput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "CreateChannelOutput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateChannelBanInput = schema.new({
    id = id.from(_N, "CreateChannelBanInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "CreateChannelBanInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MemberArn = schema.new({
            id = id.from(_N, "CreateChannelBanInput", "MemberArn"),
            type = "string",
            name = "MemberArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "CreateChannelBanInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
    },
})

M.CreateChannelBanOutput = schema.new({
    id = id.from(_N, "CreateChannelBanOutput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "CreateChannelBanOutput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
        }),
        Member = schema.new({
            id = id.from(_N, "CreateChannelBanOutput", "Member"),
            type = "structure",
            name = "Member",
            target_id = id.from(_N, "Identity"),
            target = M.Identity,
        }),
    },
})

M.CreateChannelFlowInput = schema.new({
    id = id.from(_N, "CreateChannelFlowInput"),
    type = "structure",
    members = {
        AppInstanceArn = schema.new({
            id = id.from(_N, "CreateChannelFlowInput", "AppInstanceArn"),
            type = "string",
            name = "AppInstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Processors = schema.new({
            id = id.from(_N, "CreateChannelFlowInput", "Processors"),
            type = "list",
            name = "Processors",
            target_id = prelude.Document.id,
            list_member = M.Processor,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateChannelFlowInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateChannelFlowInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "CreateChannelFlowInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateChannelFlowOutput = schema.new({
    id = id.from(_N, "CreateChannelFlowOutput"),
    type = "structure",
    members = {
        ChannelFlowArn = schema.new({
            id = id.from(_N, "CreateChannelFlowOutput", "ChannelFlowArn"),
            type = "string",
            name = "ChannelFlowArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateChannelMembershipInput = schema.new({
    id = id.from(_N, "CreateChannelMembershipInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "CreateChannelMembershipInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MemberArn = schema.new({
            id = id.from(_N, "CreateChannelMembershipInput", "MemberArn"),
            type = "string",
            name = "MemberArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "CreateChannelMembershipInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "CreateChannelMembershipInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
        SubChannelId = schema.new({
            id = id.from(_N, "CreateChannelMembershipInput", "SubChannelId"),
            type = "string",
            name = "SubChannelId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateChannelMembershipOutput = schema.new({
    id = id.from(_N, "CreateChannelMembershipOutput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "CreateChannelMembershipOutput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
        }),
        Member = schema.new({
            id = id.from(_N, "CreateChannelMembershipOutput", "Member"),
            type = "structure",
            name = "Member",
            target_id = id.from(_N, "Identity"),
            target = M.Identity,
        }),
        SubChannelId = schema.new({
            id = id.from(_N, "CreateChannelMembershipOutput", "SubChannelId"),
            type = "string",
            name = "SubChannelId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateChannelModeratorInput = schema.new({
    id = id.from(_N, "CreateChannelModeratorInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "CreateChannelModeratorInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ChannelModeratorArn = schema.new({
            id = id.from(_N, "CreateChannelModeratorInput", "ChannelModeratorArn"),
            type = "string",
            name = "ChannelModeratorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "CreateChannelModeratorInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
    },
})

M.CreateChannelModeratorOutput = schema.new({
    id = id.from(_N, "CreateChannelModeratorOutput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "CreateChannelModeratorOutput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
        }),
        ChannelModerator = schema.new({
            id = id.from(_N, "CreateChannelModeratorOutput", "ChannelModerator"),
            type = "structure",
            name = "ChannelModerator",
            target_id = id.from(_N, "Identity"),
            target = M.Identity,
        }),
    },
})

M.DeleteChannelInput = schema.new({
    id = id.from(_N, "DeleteChannelInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "DeleteChannelInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "DeleteChannelInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
    },
})

M.DeleteChannelOutput = schema.new({
    id = id.from(_N, "DeleteChannelOutput"),
    type = "structure",
})

M.DeleteChannelBanInput = schema.new({
    id = id.from(_N, "DeleteChannelBanInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "DeleteChannelBanInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MemberArn = schema.new({
            id = id.from(_N, "DeleteChannelBanInput", "MemberArn"),
            type = "string",
            name = "MemberArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "DeleteChannelBanInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
    },
})

M.DeleteChannelBanOutput = schema.new({
    id = id.from(_N, "DeleteChannelBanOutput"),
    type = "structure",
})

M.DeleteChannelFlowInput = schema.new({
    id = id.from(_N, "DeleteChannelFlowInput"),
    type = "structure",
    members = {
        ChannelFlowArn = schema.new({
            id = id.from(_N, "DeleteChannelFlowInput", "ChannelFlowArn"),
            type = "string",
            name = "ChannelFlowArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteChannelFlowOutput = schema.new({
    id = id.from(_N, "DeleteChannelFlowOutput"),
    type = "structure",
})

M.DeleteChannelMembershipInput = schema.new({
    id = id.from(_N, "DeleteChannelMembershipInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "DeleteChannelMembershipInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MemberArn = schema.new({
            id = id.from(_N, "DeleteChannelMembershipInput", "MemberArn"),
            type = "string",
            name = "MemberArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "DeleteChannelMembershipInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
        SubChannelId = schema.new({
            id = id.from(_N, "DeleteChannelMembershipInput", "SubChannelId"),
            type = "string",
            name = "SubChannelId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "sub-channel-id" },
            },
        }),
    },
})

M.DeleteChannelMembershipOutput = schema.new({
    id = id.from(_N, "DeleteChannelMembershipOutput"),
    type = "structure",
})

M.DeleteChannelMessageInput = schema.new({
    id = id.from(_N, "DeleteChannelMessageInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "DeleteChannelMessageInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MessageId = schema.new({
            id = id.from(_N, "DeleteChannelMessageInput", "MessageId"),
            type = "string",
            name = "MessageId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "DeleteChannelMessageInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
        SubChannelId = schema.new({
            id = id.from(_N, "DeleteChannelMessageInput", "SubChannelId"),
            type = "string",
            name = "SubChannelId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "sub-channel-id" },
            },
        }),
    },
})

M.DeleteChannelMessageOutput = schema.new({
    id = id.from(_N, "DeleteChannelMessageOutput"),
    type = "structure",
})

M.DeleteChannelModeratorInput = schema.new({
    id = id.from(_N, "DeleteChannelModeratorInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "DeleteChannelModeratorInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ChannelModeratorArn = schema.new({
            id = id.from(_N, "DeleteChannelModeratorInput", "ChannelModeratorArn"),
            type = "string",
            name = "ChannelModeratorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "DeleteChannelModeratorInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
    },
})

M.DeleteChannelModeratorOutput = schema.new({
    id = id.from(_N, "DeleteChannelModeratorOutput"),
    type = "structure",
})

M.DeleteMessagingStreamingConfigurationsInput = schema.new({
    id = id.from(_N, "DeleteMessagingStreamingConfigurationsInput"),
    type = "structure",
    members = {
        AppInstanceArn = schema.new({
            id = id.from(_N, "DeleteMessagingStreamingConfigurationsInput", "AppInstanceArn"),
            type = "string",
            name = "AppInstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteMessagingStreamingConfigurationsOutput = schema.new({
    id = id.from(_N, "DeleteMessagingStreamingConfigurationsOutput"),
    type = "structure",
})

M.DescribeChannelInput = schema.new({
    id = id.from(_N, "DescribeChannelInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "DescribeChannelInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "DescribeChannelInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
    },
})

M.DescribeChannelOutput = schema.new({
    id = id.from(_N, "DescribeChannelOutput"),
    type = "structure",
    members = {
        Channel = schema.new({
            id = id.from(_N, "DescribeChannelOutput", "Channel"),
            type = "structure",
            name = "Channel",
            target_id = id.from(_N, "Channel"),
            target = M.Channel,
        }),
    },
})

M.DescribeChannelBanInput = schema.new({
    id = id.from(_N, "DescribeChannelBanInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "DescribeChannelBanInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MemberArn = schema.new({
            id = id.from(_N, "DescribeChannelBanInput", "MemberArn"),
            type = "string",
            name = "MemberArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "DescribeChannelBanInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
    },
})

M.DescribeChannelBanOutput = schema.new({
    id = id.from(_N, "DescribeChannelBanOutput"),
    type = "structure",
    members = {
        ChannelBan = schema.new({
            id = id.from(_N, "DescribeChannelBanOutput", "ChannelBan"),
            type = "structure",
            name = "ChannelBan",
            target_id = id.from(_N, "ChannelBan"),
            target = M.ChannelBan,
        }),
    },
})

M.DescribeChannelFlowInput = schema.new({
    id = id.from(_N, "DescribeChannelFlowInput"),
    type = "structure",
    members = {
        ChannelFlowArn = schema.new({
            id = id.from(_N, "DescribeChannelFlowInput", "ChannelFlowArn"),
            type = "string",
            name = "ChannelFlowArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeChannelFlowOutput = schema.new({
    id = id.from(_N, "DescribeChannelFlowOutput"),
    type = "structure",
    members = {
        ChannelFlow = schema.new({
            id = id.from(_N, "DescribeChannelFlowOutput", "ChannelFlow"),
            type = "structure",
            name = "ChannelFlow",
            target_id = id.from(_N, "ChannelFlow"),
            target = M.ChannelFlow,
        }),
    },
})

M.DescribeChannelMembershipInput = schema.new({
    id = id.from(_N, "DescribeChannelMembershipInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "DescribeChannelMembershipInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MemberArn = schema.new({
            id = id.from(_N, "DescribeChannelMembershipInput", "MemberArn"),
            type = "string",
            name = "MemberArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "DescribeChannelMembershipInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
        SubChannelId = schema.new({
            id = id.from(_N, "DescribeChannelMembershipInput", "SubChannelId"),
            type = "string",
            name = "SubChannelId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "sub-channel-id" },
            },
        }),
    },
})

M.DescribeChannelMembershipOutput = schema.new({
    id = id.from(_N, "DescribeChannelMembershipOutput"),
    type = "structure",
    members = {
        ChannelMembership = schema.new({
            id = id.from(_N, "DescribeChannelMembershipOutput", "ChannelMembership"),
            type = "structure",
            name = "ChannelMembership",
            target_id = id.from(_N, "ChannelMembership"),
            target = M.ChannelMembership,
        }),
    },
})

M.DescribeChannelMembershipForAppInstanceUserInput = schema.new({
    id = id.from(_N, "DescribeChannelMembershipForAppInstanceUserInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "DescribeChannelMembershipForAppInstanceUserInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        AppInstanceUserArn = schema.new({
            id = id.from(_N, "DescribeChannelMembershipForAppInstanceUserInput", "AppInstanceUserArn"),
            type = "string",
            name = "AppInstanceUserArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "app-instance-user-arn" },
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "DescribeChannelMembershipForAppInstanceUserInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
    },
})

M.DescribeChannelMembershipForAppInstanceUserOutput = schema.new({
    id = id.from(_N, "DescribeChannelMembershipForAppInstanceUserOutput"),
    type = "structure",
    members = {
        ChannelMembership = schema.new({
            id = id.from(_N, "DescribeChannelMembershipForAppInstanceUserOutput", "ChannelMembership"),
            type = "structure",
            name = "ChannelMembership",
            target_id = id.from(_N, "ChannelMembershipForAppInstanceUserSummary"),
            target = M.ChannelMembershipForAppInstanceUserSummary,
        }),
    },
})

M.DescribeChannelModeratedByAppInstanceUserInput = schema.new({
    id = id.from(_N, "DescribeChannelModeratedByAppInstanceUserInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "DescribeChannelModeratedByAppInstanceUserInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        AppInstanceUserArn = schema.new({
            id = id.from(_N, "DescribeChannelModeratedByAppInstanceUserInput", "AppInstanceUserArn"),
            type = "string",
            name = "AppInstanceUserArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "app-instance-user-arn" },
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "DescribeChannelModeratedByAppInstanceUserInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
    },
})

M.DescribeChannelModeratedByAppInstanceUserOutput = schema.new({
    id = id.from(_N, "DescribeChannelModeratedByAppInstanceUserOutput"),
    type = "structure",
    members = {
        Channel = schema.new({
            id = id.from(_N, "DescribeChannelModeratedByAppInstanceUserOutput", "Channel"),
            type = "structure",
            name = "Channel",
            target_id = id.from(_N, "ChannelModeratedByAppInstanceUserSummary"),
            target = M.ChannelModeratedByAppInstanceUserSummary,
        }),
    },
})

M.DescribeChannelModeratorInput = schema.new({
    id = id.from(_N, "DescribeChannelModeratorInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "DescribeChannelModeratorInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ChannelModeratorArn = schema.new({
            id = id.from(_N, "DescribeChannelModeratorInput", "ChannelModeratorArn"),
            type = "string",
            name = "ChannelModeratorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "DescribeChannelModeratorInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
    },
})

M.DescribeChannelModeratorOutput = schema.new({
    id = id.from(_N, "DescribeChannelModeratorOutput"),
    type = "structure",
    members = {
        ChannelModerator = schema.new({
            id = id.from(_N, "DescribeChannelModeratorOutput", "ChannelModerator"),
            type = "structure",
            name = "ChannelModerator",
            target_id = id.from(_N, "ChannelModerator"),
            target = M.ChannelModerator,
        }),
    },
})

M.DisassociateChannelFlowInput = schema.new({
    id = id.from(_N, "DisassociateChannelFlowInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "DisassociateChannelFlowInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ChannelFlowArn = schema.new({
            id = id.from(_N, "DisassociateChannelFlowInput", "ChannelFlowArn"),
            type = "string",
            name = "ChannelFlowArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "DisassociateChannelFlowInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
    },
})

M.DisassociateChannelFlowOutput = schema.new({
    id = id.from(_N, "DisassociateChannelFlowOutput"),
    type = "structure",
})

M.GetChannelMembershipPreferencesInput = schema.new({
    id = id.from(_N, "GetChannelMembershipPreferencesInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "GetChannelMembershipPreferencesInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MemberArn = schema.new({
            id = id.from(_N, "GetChannelMembershipPreferencesInput", "MemberArn"),
            type = "string",
            name = "MemberArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "GetChannelMembershipPreferencesInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
    },
})

M.GetChannelMembershipPreferencesOutput = schema.new({
    id = id.from(_N, "GetChannelMembershipPreferencesOutput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "GetChannelMembershipPreferencesOutput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
        }),
        Member = schema.new({
            id = id.from(_N, "GetChannelMembershipPreferencesOutput", "Member"),
            type = "structure",
            name = "Member",
            target_id = id.from(_N, "Identity"),
            target = M.Identity,
        }),
        Preferences = schema.new({
            id = id.from(_N, "GetChannelMembershipPreferencesOutput", "Preferences"),
            type = "structure",
            name = "Preferences",
            target_id = id.from(_N, "ChannelMembershipPreferences"),
            target = M.ChannelMembershipPreferences,
        }),
    },
})

M.GetChannelMessageInput = schema.new({
    id = id.from(_N, "GetChannelMessageInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "GetChannelMessageInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MessageId = schema.new({
            id = id.from(_N, "GetChannelMessageInput", "MessageId"),
            type = "string",
            name = "MessageId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "GetChannelMessageInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
        SubChannelId = schema.new({
            id = id.from(_N, "GetChannelMessageInput", "SubChannelId"),
            type = "string",
            name = "SubChannelId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "sub-channel-id" },
            },
        }),
    },
})

M.GetChannelMessageOutput = schema.new({
    id = id.from(_N, "GetChannelMessageOutput"),
    type = "structure",
    members = {
        ChannelMessage = schema.new({
            id = id.from(_N, "GetChannelMessageOutput", "ChannelMessage"),
            type = "structure",
            name = "ChannelMessage",
            target_id = id.from(_N, "ChannelMessage"),
            target = M.ChannelMessage,
        }),
    },
})

M.GetChannelMessageStatusInput = schema.new({
    id = id.from(_N, "GetChannelMessageStatusInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "GetChannelMessageStatusInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MessageId = schema.new({
            id = id.from(_N, "GetChannelMessageStatusInput", "MessageId"),
            type = "string",
            name = "MessageId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "GetChannelMessageStatusInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
        SubChannelId = schema.new({
            id = id.from(_N, "GetChannelMessageStatusInput", "SubChannelId"),
            type = "string",
            name = "SubChannelId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "sub-channel-id" },
            },
        }),
    },
})

M.GetChannelMessageStatusOutput = schema.new({
    id = id.from(_N, "GetChannelMessageStatusOutput"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "GetChannelMessageStatusOutput", "Status"),
            type = "structure",
            name = "Status",
            target_id = id.from(_N, "ChannelMessageStatusStructure"),
            target = M.ChannelMessageStatusStructure,
        }),
    },
})

M.GetMessagingSessionEndpointInput = schema.new({
    id = id.from(_N, "GetMessagingSessionEndpointInput"),
    type = "structure",
    members = {
        NetworkType = schema.new({
            id = id.from(_N, "GetMessagingSessionEndpointInput", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "network-type" },
            },
        }),
    },
})

M.MessagingSessionEndpoint = schema.new({
    id = id.from(_N, "MessagingSessionEndpoint"),
    type = "structure",
    members = {
        Url = schema.new({
            id = id.from(_N, "MessagingSessionEndpoint", "Url"),
            type = "string",
            name = "Url",
            target_id = prelude.String.id,
        }),
    },
})

M.GetMessagingSessionEndpointOutput = schema.new({
    id = id.from(_N, "GetMessagingSessionEndpointOutput"),
    type = "structure",
    members = {
        Endpoint = schema.new({
            id = id.from(_N, "GetMessagingSessionEndpointOutput", "Endpoint"),
            type = "structure",
            name = "Endpoint",
            target_id = id.from(_N, "MessagingSessionEndpoint"),
            target = M.MessagingSessionEndpoint,
        }),
    },
})

M.GetMessagingStreamingConfigurationsInput = schema.new({
    id = id.from(_N, "GetMessagingStreamingConfigurationsInput"),
    type = "structure",
    members = {
        AppInstanceArn = schema.new({
            id = id.from(_N, "GetMessagingStreamingConfigurationsInput", "AppInstanceArn"),
            type = "string",
            name = "AppInstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.StreamingConfiguration = schema.new({
    id = id.from(_N, "StreamingConfiguration"),
    type = "structure",
    members = {
        DataType = schema.new({
            id = id.from(_N, "StreamingConfiguration", "DataType"),
            type = "string",
            name = "DataType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "StreamingConfiguration", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetMessagingStreamingConfigurationsOutput = schema.new({
    id = id.from(_N, "GetMessagingStreamingConfigurationsOutput"),
    type = "structure",
    members = {
        StreamingConfigurations = schema.new({
            id = id.from(_N, "GetMessagingStreamingConfigurationsOutput", "StreamingConfigurations"),
            type = "list",
            name = "StreamingConfigurations",
            target_id = prelude.Document.id,
            list_member = M.StreamingConfiguration,
        }),
    },
})

M.ListChannelBansInput = schema.new({
    id = id.from(_N, "ListChannelBansInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "ListChannelBansInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListChannelBansInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max-results" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListChannelBansInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next-token" },
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "ListChannelBansInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
    },
})

M.ListChannelBansOutput = schema.new({
    id = id.from(_N, "ListChannelBansOutput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "ListChannelBansOutput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListChannelBansOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        ChannelBans = schema.new({
            id = id.from(_N, "ListChannelBansOutput", "ChannelBans"),
            type = "list",
            name = "ChannelBans",
            target_id = prelude.Document.id,
            list_member = M.ChannelBanSummary,
        }),
    },
})

M.ListChannelFlowsInput = schema.new({
    id = id.from(_N, "ListChannelFlowsInput"),
    type = "structure",
    members = {
        AppInstanceArn = schema.new({
            id = id.from(_N, "ListChannelFlowsInput", "AppInstanceArn"),
            type = "string",
            name = "AppInstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "app-instance-arn" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListChannelFlowsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max-results" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListChannelFlowsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next-token" },
            },
        }),
    },
})

M.ListChannelFlowsOutput = schema.new({
    id = id.from(_N, "ListChannelFlowsOutput"),
    type = "structure",
    members = {
        ChannelFlows = schema.new({
            id = id.from(_N, "ListChannelFlowsOutput", "ChannelFlows"),
            type = "list",
            name = "ChannelFlows",
            target_id = prelude.Document.id,
            list_member = M.ChannelFlowSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListChannelFlowsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListChannelMembershipsInput = schema.new({
    id = id.from(_N, "ListChannelMembershipsInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "ListChannelMembershipsInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "ListChannelMembershipsInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "type" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListChannelMembershipsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max-results" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListChannelMembershipsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next-token" },
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "ListChannelMembershipsInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
        SubChannelId = schema.new({
            id = id.from(_N, "ListChannelMembershipsInput", "SubChannelId"),
            type = "string",
            name = "SubChannelId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "sub-channel-id" },
            },
        }),
    },
})

M.ListChannelMembershipsOutput = schema.new({
    id = id.from(_N, "ListChannelMembershipsOutput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "ListChannelMembershipsOutput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
        }),
        ChannelMemberships = schema.new({
            id = id.from(_N, "ListChannelMembershipsOutput", "ChannelMemberships"),
            type = "list",
            name = "ChannelMemberships",
            target_id = prelude.Document.id,
            list_member = M.ChannelMembershipSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListChannelMembershipsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListChannelMembershipsForAppInstanceUserInput = schema.new({
    id = id.from(_N, "ListChannelMembershipsForAppInstanceUserInput"),
    type = "structure",
    members = {
        AppInstanceUserArn = schema.new({
            id = id.from(_N, "ListChannelMembershipsForAppInstanceUserInput", "AppInstanceUserArn"),
            type = "string",
            name = "AppInstanceUserArn",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "app-instance-user-arn" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListChannelMembershipsForAppInstanceUserInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max-results" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListChannelMembershipsForAppInstanceUserInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next-token" },
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "ListChannelMembershipsForAppInstanceUserInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
    },
})

M.ListChannelMembershipsForAppInstanceUserOutput = schema.new({
    id = id.from(_N, "ListChannelMembershipsForAppInstanceUserOutput"),
    type = "structure",
    members = {
        ChannelMemberships = schema.new({
            id = id.from(_N, "ListChannelMembershipsForAppInstanceUserOutput", "ChannelMemberships"),
            type = "list",
            name = "ChannelMemberships",
            target_id = prelude.Document.id,
            list_member = M.ChannelMembershipForAppInstanceUserSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListChannelMembershipsForAppInstanceUserOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListChannelMessagesInput = schema.new({
    id = id.from(_N, "ListChannelMessagesInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "ListChannelMessagesInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SortOrder = schema.new({
            id = id.from(_N, "ListChannelMessagesInput", "SortOrder"),
            type = "string",
            name = "SortOrder",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "sort-order" },
            },
        }),
        NotBefore = schema.new({
            id = id.from(_N, "ListChannelMessagesInput", "NotBefore"),
            type = "timestamp",
            name = "NotBefore",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "not-before" },
            },
        }),
        NotAfter = schema.new({
            id = id.from(_N, "ListChannelMessagesInput", "NotAfter"),
            type = "timestamp",
            name = "NotAfter",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "not-after" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListChannelMessagesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max-results" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListChannelMessagesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next-token" },
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "ListChannelMessagesInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
        SubChannelId = schema.new({
            id = id.from(_N, "ListChannelMessagesInput", "SubChannelId"),
            type = "string",
            name = "SubChannelId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "sub-channel-id" },
            },
        }),
    },
})

M.ListChannelMessagesOutput = schema.new({
    id = id.from(_N, "ListChannelMessagesOutput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "ListChannelMessagesOutput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListChannelMessagesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        ChannelMessages = schema.new({
            id = id.from(_N, "ListChannelMessagesOutput", "ChannelMessages"),
            type = "list",
            name = "ChannelMessages",
            target_id = prelude.Document.id,
            list_member = M.ChannelMessageSummary,
        }),
        SubChannelId = schema.new({
            id = id.from(_N, "ListChannelMessagesOutput", "SubChannelId"),
            type = "string",
            name = "SubChannelId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListChannelModeratorsInput = schema.new({
    id = id.from(_N, "ListChannelModeratorsInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "ListChannelModeratorsInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListChannelModeratorsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max-results" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListChannelModeratorsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next-token" },
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "ListChannelModeratorsInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
    },
})

M.ListChannelModeratorsOutput = schema.new({
    id = id.from(_N, "ListChannelModeratorsOutput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "ListChannelModeratorsOutput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListChannelModeratorsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        ChannelModerators = schema.new({
            id = id.from(_N, "ListChannelModeratorsOutput", "ChannelModerators"),
            type = "list",
            name = "ChannelModerators",
            target_id = prelude.Document.id,
            list_member = M.ChannelModeratorSummary,
        }),
    },
})

M.ListChannelsInput = schema.new({
    id = id.from(_N, "ListChannelsInput"),
    type = "structure",
    members = {
        AppInstanceArn = schema.new({
            id = id.from(_N, "ListChannelsInput", "AppInstanceArn"),
            type = "string",
            name = "AppInstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "app-instance-arn" },
            },
        }),
        Privacy = schema.new({
            id = id.from(_N, "ListChannelsInput", "Privacy"),
            type = "string",
            name = "Privacy",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "privacy" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListChannelsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max-results" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListChannelsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next-token" },
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "ListChannelsInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
    },
})

M.ListChannelsOutput = schema.new({
    id = id.from(_N, "ListChannelsOutput"),
    type = "structure",
    members = {
        Channels = schema.new({
            id = id.from(_N, "ListChannelsOutput", "Channels"),
            type = "list",
            name = "Channels",
            target_id = prelude.Document.id,
            list_member = M.ChannelSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListChannelsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListChannelsAssociatedWithChannelFlowInput = schema.new({
    id = id.from(_N, "ListChannelsAssociatedWithChannelFlowInput"),
    type = "structure",
    members = {
        ChannelFlowArn = schema.new({
            id = id.from(_N, "ListChannelsAssociatedWithChannelFlowInput", "ChannelFlowArn"),
            type = "string",
            name = "ChannelFlowArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "channel-flow-arn" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListChannelsAssociatedWithChannelFlowInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max-results" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListChannelsAssociatedWithChannelFlowInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next-token" },
            },
        }),
    },
})

M.ListChannelsAssociatedWithChannelFlowOutput = schema.new({
    id = id.from(_N, "ListChannelsAssociatedWithChannelFlowOutput"),
    type = "structure",
    members = {
        Channels = schema.new({
            id = id.from(_N, "ListChannelsAssociatedWithChannelFlowOutput", "Channels"),
            type = "list",
            name = "Channels",
            target_id = prelude.Document.id,
            list_member = M.ChannelAssociatedWithFlowSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListChannelsAssociatedWithChannelFlowOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListChannelsModeratedByAppInstanceUserInput = schema.new({
    id = id.from(_N, "ListChannelsModeratedByAppInstanceUserInput"),
    type = "structure",
    members = {
        AppInstanceUserArn = schema.new({
            id = id.from(_N, "ListChannelsModeratedByAppInstanceUserInput", "AppInstanceUserArn"),
            type = "string",
            name = "AppInstanceUserArn",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "app-instance-user-arn" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListChannelsModeratedByAppInstanceUserInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max-results" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListChannelsModeratedByAppInstanceUserInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next-token" },
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "ListChannelsModeratedByAppInstanceUserInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
    },
})

M.ListChannelsModeratedByAppInstanceUserOutput = schema.new({
    id = id.from(_N, "ListChannelsModeratedByAppInstanceUserOutput"),
    type = "structure",
    members = {
        Channels = schema.new({
            id = id.from(_N, "ListChannelsModeratedByAppInstanceUserOutput", "Channels"),
            type = "list",
            name = "Channels",
            target_id = prelude.Document.id,
            list_member = M.ChannelModeratedByAppInstanceUserSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListChannelsModeratedByAppInstanceUserOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSubChannelsInput = schema.new({
    id = id.from(_N, "ListSubChannelsInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "ListSubChannelsInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "ListSubChannelsInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListSubChannelsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max-results" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSubChannelsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next-token" },
            },
        }),
    },
})

M.SubChannelSummary = schema.new({
    id = id.from(_N, "SubChannelSummary"),
    type = "structure",
    members = {
        SubChannelId = schema.new({
            id = id.from(_N, "SubChannelSummary", "SubChannelId"),
            type = "string",
            name = "SubChannelId",
            target_id = prelude.String.id,
        }),
        MembershipCount = schema.new({
            id = id.from(_N, "SubChannelSummary", "MembershipCount"),
            type = "integer",
            name = "MembershipCount",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListSubChannelsOutput = schema.new({
    id = id.from(_N, "ListSubChannelsOutput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "ListSubChannelsOutput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
        }),
        SubChannels = schema.new({
            id = id.from(_N, "ListSubChannelsOutput", "SubChannels"),
            type = "list",
            name = "SubChannels",
            target_id = prelude.Document.id,
            list_member = M.SubChannelSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSubChannelsOutput", "NextToken"),
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
                [traits.HTTP_QUERY] = { name = "arn" },
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

M.PutChannelExpirationSettingsInput = schema.new({
    id = id.from(_N, "PutChannelExpirationSettingsInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "PutChannelExpirationSettingsInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "PutChannelExpirationSettingsInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
        ExpirationSettings = schema.new({
            id = id.from(_N, "PutChannelExpirationSettingsInput", "ExpirationSettings"),
            type = "structure",
            name = "ExpirationSettings",
            target_id = id.from(_N, "ExpirationSettings"),
            target = M.ExpirationSettings,
        }),
    },
})

M.PutChannelExpirationSettingsOutput = schema.new({
    id = id.from(_N, "PutChannelExpirationSettingsOutput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "PutChannelExpirationSettingsOutput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
        }),
        ExpirationSettings = schema.new({
            id = id.from(_N, "PutChannelExpirationSettingsOutput", "ExpirationSettings"),
            type = "structure",
            name = "ExpirationSettings",
            target_id = id.from(_N, "ExpirationSettings"),
            target = M.ExpirationSettings,
        }),
    },
})

M.PutChannelMembershipPreferencesInput = schema.new({
    id = id.from(_N, "PutChannelMembershipPreferencesInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "PutChannelMembershipPreferencesInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MemberArn = schema.new({
            id = id.from(_N, "PutChannelMembershipPreferencesInput", "MemberArn"),
            type = "string",
            name = "MemberArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "PutChannelMembershipPreferencesInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
        Preferences = schema.new({
            id = id.from(_N, "PutChannelMembershipPreferencesInput", "Preferences"),
            type = "structure",
            name = "Preferences",
            target_id = id.from(_N, "ChannelMembershipPreferences"),
            target = M.ChannelMembershipPreferences,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutChannelMembershipPreferencesOutput = schema.new({
    id = id.from(_N, "PutChannelMembershipPreferencesOutput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "PutChannelMembershipPreferencesOutput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
        }),
        Member = schema.new({
            id = id.from(_N, "PutChannelMembershipPreferencesOutput", "Member"),
            type = "structure",
            name = "Member",
            target_id = id.from(_N, "Identity"),
            target = M.Identity,
        }),
        Preferences = schema.new({
            id = id.from(_N, "PutChannelMembershipPreferencesOutput", "Preferences"),
            type = "structure",
            name = "Preferences",
            target_id = id.from(_N, "ChannelMembershipPreferences"),
            target = M.ChannelMembershipPreferences,
        }),
    },
})

M.PutMessagingStreamingConfigurationsInput = schema.new({
    id = id.from(_N, "PutMessagingStreamingConfigurationsInput"),
    type = "structure",
    members = {
        AppInstanceArn = schema.new({
            id = id.from(_N, "PutMessagingStreamingConfigurationsInput", "AppInstanceArn"),
            type = "string",
            name = "AppInstanceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        StreamingConfigurations = schema.new({
            id = id.from(_N, "PutMessagingStreamingConfigurationsInput", "StreamingConfigurations"),
            type = "list",
            name = "StreamingConfigurations",
            target_id = prelude.Document.id,
            list_member = M.StreamingConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutMessagingStreamingConfigurationsOutput = schema.new({
    id = id.from(_N, "PutMessagingStreamingConfigurationsOutput"),
    type = "structure",
    members = {
        StreamingConfigurations = schema.new({
            id = id.from(_N, "PutMessagingStreamingConfigurationsOutput", "StreamingConfigurations"),
            type = "list",
            name = "StreamingConfigurations",
            target_id = prelude.Document.id,
            list_member = M.StreamingConfiguration,
        }),
    },
})

M.RedactChannelMessageInput = schema.new({
    id = id.from(_N, "RedactChannelMessageInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "RedactChannelMessageInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MessageId = schema.new({
            id = id.from(_N, "RedactChannelMessageInput", "MessageId"),
            type = "string",
            name = "MessageId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "RedactChannelMessageInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
        SubChannelId = schema.new({
            id = id.from(_N, "RedactChannelMessageInput", "SubChannelId"),
            type = "string",
            name = "SubChannelId",
            target_id = prelude.String.id,
        }),
    },
})

M.RedactChannelMessageOutput = schema.new({
    id = id.from(_N, "RedactChannelMessageOutput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "RedactChannelMessageOutput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
        }),
        MessageId = schema.new({
            id = id.from(_N, "RedactChannelMessageOutput", "MessageId"),
            type = "string",
            name = "MessageId",
            target_id = prelude.String.id,
        }),
        SubChannelId = schema.new({
            id = id.from(_N, "RedactChannelMessageOutput", "SubChannelId"),
            type = "string",
            name = "SubChannelId",
            target_id = prelude.String.id,
        }),
    },
})

M.SearchField = schema.new({
    id = id.from(_N, "SearchField"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "SearchField", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "SearchField", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Operator = schema.new({
            id = id.from(_N, "SearchField", "Operator"),
            type = "string",
            name = "Operator",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SearchChannelsInput = schema.new({
    id = id.from(_N, "SearchChannelsInput"),
    type = "structure",
    members = {
        ChimeBearer = schema.new({
            id = id.from(_N, "SearchChannelsInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
        Fields = schema.new({
            id = id.from(_N, "SearchChannelsInput", "Fields"),
            type = "list",
            name = "Fields",
            target_id = prelude.Document.id,
            list_member = M.SearchField,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "SearchChannelsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max-results" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "SearchChannelsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next-token" },
            },
        }),
    },
})

M.SearchChannelsOutput = schema.new({
    id = id.from(_N, "SearchChannelsOutput"),
    type = "structure",
    members = {
        Channels = schema.new({
            id = id.from(_N, "SearchChannelsOutput", "Channels"),
            type = "list",
            name = "Channels",
            target_id = prelude.Document.id,
            list_member = M.ChannelSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "SearchChannelsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SendChannelMessageInput = schema.new({
    id = id.from(_N, "SendChannelMessageInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "SendChannelMessageInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Content = schema.new({
            id = id.from(_N, "SendChannelMessageInput", "Content"),
            type = "string",
            name = "Content",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "SendChannelMessageInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Persistence = schema.new({
            id = id.from(_N, "SendChannelMessageInput", "Persistence"),
            type = "string",
            name = "Persistence",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Metadata = schema.new({
            id = id.from(_N, "SendChannelMessageInput", "Metadata"),
            type = "string",
            name = "Metadata",
            target_id = prelude.String.id,
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "SendChannelMessageInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "SendChannelMessageInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
        PushNotification = schema.new({
            id = id.from(_N, "SendChannelMessageInput", "PushNotification"),
            type = "structure",
            name = "PushNotification",
            target_id = id.from(_N, "PushNotificationConfiguration"),
            target = M.PushNotificationConfiguration,
        }),
        MessageAttributes = schema.new({
            id = id.from(_N, "SendChannelMessageInput", "MessageAttributes"),
            type = "map",
            name = "MessageAttributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.MessageAttributeValue,
        }),
        SubChannelId = schema.new({
            id = id.from(_N, "SendChannelMessageInput", "SubChannelId"),
            type = "string",
            name = "SubChannelId",
            target_id = prelude.String.id,
        }),
        ContentType = schema.new({
            id = id.from(_N, "SendChannelMessageInput", "ContentType"),
            type = "string",
            name = "ContentType",
            target_id = prelude.String.id,
        }),
        Target = schema.new({
            id = id.from(_N, "SendChannelMessageInput", "Target"),
            type = "list",
            name = "Target",
            target_id = prelude.Document.id,
            list_member = M.Target,
        }),
    },
})

M.SendChannelMessageOutput = schema.new({
    id = id.from(_N, "SendChannelMessageOutput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "SendChannelMessageOutput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
        }),
        MessageId = schema.new({
            id = id.from(_N, "SendChannelMessageOutput", "MessageId"),
            type = "string",
            name = "MessageId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "SendChannelMessageOutput", "Status"),
            type = "structure",
            name = "Status",
            target_id = id.from(_N, "ChannelMessageStatusStructure"),
            target = M.ChannelMessageStatusStructure,
        }),
        SubChannelId = schema.new({
            id = id.from(_N, "SendChannelMessageOutput", "SubChannelId"),
            type = "string",
            name = "SubChannelId",
            target_id = prelude.String.id,
        }),
    },
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

M.UpdateChannelInput = schema.new({
    id = id.from(_N, "UpdateChannelInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "UpdateChannelInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateChannelInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Mode = schema.new({
            id = id.from(_N, "UpdateChannelInput", "Mode"),
            type = "string",
            name = "Mode",
            target_id = prelude.String.id,
        }),
        Metadata = schema.new({
            id = id.from(_N, "UpdateChannelInput", "Metadata"),
            type = "string",
            name = "Metadata",
            target_id = prelude.String.id,
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "UpdateChannelInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
    },
})

M.UpdateChannelOutput = schema.new({
    id = id.from(_N, "UpdateChannelOutput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "UpdateChannelOutput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateChannelFlowInput = schema.new({
    id = id.from(_N, "UpdateChannelFlowInput"),
    type = "structure",
    members = {
        ChannelFlowArn = schema.new({
            id = id.from(_N, "UpdateChannelFlowInput", "ChannelFlowArn"),
            type = "string",
            name = "ChannelFlowArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Processors = schema.new({
            id = id.from(_N, "UpdateChannelFlowInput", "Processors"),
            type = "list",
            name = "Processors",
            target_id = prelude.Document.id,
            list_member = M.Processor,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateChannelFlowInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateChannelFlowOutput = schema.new({
    id = id.from(_N, "UpdateChannelFlowOutput"),
    type = "structure",
    members = {
        ChannelFlowArn = schema.new({
            id = id.from(_N, "UpdateChannelFlowOutput", "ChannelFlowArn"),
            type = "string",
            name = "ChannelFlowArn",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateChannelMessageInput = schema.new({
    id = id.from(_N, "UpdateChannelMessageInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "UpdateChannelMessageInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MessageId = schema.new({
            id = id.from(_N, "UpdateChannelMessageInput", "MessageId"),
            type = "string",
            name = "MessageId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Content = schema.new({
            id = id.from(_N, "UpdateChannelMessageInput", "Content"),
            type = "string",
            name = "Content",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Metadata = schema.new({
            id = id.from(_N, "UpdateChannelMessageInput", "Metadata"),
            type = "string",
            name = "Metadata",
            target_id = prelude.String.id,
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "UpdateChannelMessageInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
        SubChannelId = schema.new({
            id = id.from(_N, "UpdateChannelMessageInput", "SubChannelId"),
            type = "string",
            name = "SubChannelId",
            target_id = prelude.String.id,
        }),
        ContentType = schema.new({
            id = id.from(_N, "UpdateChannelMessageInput", "ContentType"),
            type = "string",
            name = "ContentType",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateChannelMessageOutput = schema.new({
    id = id.from(_N, "UpdateChannelMessageOutput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "UpdateChannelMessageOutput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
        }),
        MessageId = schema.new({
            id = id.from(_N, "UpdateChannelMessageOutput", "MessageId"),
            type = "string",
            name = "MessageId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "UpdateChannelMessageOutput", "Status"),
            type = "structure",
            name = "Status",
            target_id = id.from(_N, "ChannelMessageStatusStructure"),
            target = M.ChannelMessageStatusStructure,
        }),
        SubChannelId = schema.new({
            id = id.from(_N, "UpdateChannelMessageOutput", "SubChannelId"),
            type = "string",
            name = "SubChannelId",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateChannelReadMarkerInput = schema.new({
    id = id.from(_N, "UpdateChannelReadMarkerInput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "UpdateChannelReadMarkerInput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ChimeBearer = schema.new({
            id = id.from(_N, "UpdateChannelReadMarkerInput", "ChimeBearer"),
            type = "string",
            name = "ChimeBearer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-chime-bearer" },
            },
        }),
    },
})

M.UpdateChannelReadMarkerOutput = schema.new({
    id = id.from(_N, "UpdateChannelReadMarkerOutput"),
    type = "structure",
    members = {
        ChannelArn = schema.new({
            id = id.from(_N, "UpdateChannelReadMarkerOutput", "ChannelArn"),
            type = "string",
            name = "ChannelArn",
            target_id = prelude.String.id,
        }),
    },
})

return M
