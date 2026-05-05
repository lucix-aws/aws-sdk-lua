local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.chatbot"

local M = {}

M.AccountPreferences = schema.new({
    id = id.from(_N, "AccountPreferences"),
    type = "structure",
    members = {
        UserAuthorizationRequired = schema.new({
            id = id.from(_N, "AccountPreferences", "UserAuthorizationRequired"),
            type = "boolean",
            name = "UserAuthorizationRequired",
            target_id = prelude.Boolean.id,
        }),
        TrainingDataCollectionEnabled = schema.new({
            id = id.from(_N, "AccountPreferences", "TrainingDataCollectionEnabled"),
            type = "boolean",
            name = "TrainingDataCollectionEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.AssociateToConfigurationInput = schema.new({
    id = id.from(_N, "AssociateToConfigurationInput"),
    type = "structure",
    members = {
        Resource = schema.new({
            id = id.from(_N, "AssociateToConfigurationInput", "Resource"),
            type = "string",
            name = "Resource",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChatConfiguration = schema.new({
            id = id.from(_N, "AssociateToConfigurationInput", "ChatConfiguration"),
            type = "string",
            name = "ChatConfiguration",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateToConfigurationOutput = schema.new({
    id = id.from(_N, "AssociateToConfigurationOutput"),
    type = "structure",
})

M.InternalServiceError = schema.new({
    id = id.from(_N, "InternalServiceError"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InternalServiceError", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidRequestException = schema.new({
    id = id.from(_N, "InvalidRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidRequestException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UnauthorizedException = schema.new({
    id = id.from(_N, "UnauthorizedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "UnauthorizedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociationListing = schema.new({
    id = id.from(_N, "AssociationListing"),
    type = "structure",
    members = {
        Resource = schema.new({
            id = id.from(_N, "AssociationListing", "Resource"),
            type = "string",
            name = "Resource",
            target_id = prelude.String.id,
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
        TagKey = schema.new({
            id = id.from(_N, "Tag", "TagKey"),
            type = "string",
            name = "TagKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagValue = schema.new({
            id = id.from(_N, "Tag", "TagValue"),
            type = "string",
            name = "TagValue",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ChimeWebhookConfiguration = schema.new({
    id = id.from(_N, "ChimeWebhookConfiguration"),
    type = "structure",
    members = {
        WebhookDescription = schema.new({
            id = id.from(_N, "ChimeWebhookConfiguration", "WebhookDescription"),
            type = "string",
            name = "WebhookDescription",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChatConfigurationArn = schema.new({
            id = id.from(_N, "ChimeWebhookConfiguration", "ChatConfigurationArn"),
            type = "string",
            name = "ChatConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IamRoleArn = schema.new({
            id = id.from(_N, "ChimeWebhookConfiguration", "IamRoleArn"),
            type = "string",
            name = "IamRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SnsTopicArns = schema.new({
            id = id.from(_N, "ChimeWebhookConfiguration", "SnsTopicArns"),
            type = "list",
            name = "SnsTopicArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConfigurationName = schema.new({
            id = id.from(_N, "ChimeWebhookConfiguration", "ConfigurationName"),
            type = "string",
            name = "ConfigurationName",
            target_id = prelude.String.id,
        }),
        LoggingLevel = schema.new({
            id = id.from(_N, "ChimeWebhookConfiguration", "LoggingLevel"),
            type = "string",
            name = "LoggingLevel",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "ChimeWebhookConfiguration", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        State = schema.new({
            id = id.from(_N, "ChimeWebhookConfiguration", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        StateReason = schema.new({
            id = id.from(_N, "ChimeWebhookConfiguration", "StateReason"),
            type = "string",
            name = "StateReason",
            target_id = prelude.String.id,
        }),
    },
})

M.ConfiguredTeam = schema.new({
    id = id.from(_N, "ConfiguredTeam"),
    type = "structure",
    members = {
        TenantId = schema.new({
            id = id.from(_N, "ConfiguredTeam", "TenantId"),
            type = "string",
            name = "TenantId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TeamId = schema.new({
            id = id.from(_N, "ConfiguredTeam", "TeamId"),
            type = "string",
            name = "TeamId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TeamName = schema.new({
            id = id.from(_N, "ConfiguredTeam", "TeamName"),
            type = "string",
            name = "TeamName",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "ConfiguredTeam", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        StateReason = schema.new({
            id = id.from(_N, "ConfiguredTeam", "StateReason"),
            type = "string",
            name = "StateReason",
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
        message = schema.new({
            id = id.from(_N, "ConflictException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateChimeWebhookConfigurationException = schema.new({
    id = id.from(_N, "CreateChimeWebhookConfigurationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CreateChimeWebhookConfigurationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateChimeWebhookConfigurationInput = schema.new({
    id = id.from(_N, "CreateChimeWebhookConfigurationInput"),
    type = "structure",
    members = {
        WebhookDescription = schema.new({
            id = id.from(_N, "CreateChimeWebhookConfigurationInput", "WebhookDescription"),
            type = "string",
            name = "WebhookDescription",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WebhookUrl = schema.new({
            id = id.from(_N, "CreateChimeWebhookConfigurationInput", "WebhookUrl"),
            type = "string",
            name = "WebhookUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SnsTopicArns = schema.new({
            id = id.from(_N, "CreateChimeWebhookConfigurationInput", "SnsTopicArns"),
            type = "list",
            name = "SnsTopicArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IamRoleArn = schema.new({
            id = id.from(_N, "CreateChimeWebhookConfigurationInput", "IamRoleArn"),
            type = "string",
            name = "IamRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConfigurationName = schema.new({
            id = id.from(_N, "CreateChimeWebhookConfigurationInput", "ConfigurationName"),
            type = "string",
            name = "ConfigurationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LoggingLevel = schema.new({
            id = id.from(_N, "CreateChimeWebhookConfigurationInput", "LoggingLevel"),
            type = "string",
            name = "LoggingLevel",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateChimeWebhookConfigurationInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateChimeWebhookConfigurationOutput = schema.new({
    id = id.from(_N, "CreateChimeWebhookConfigurationOutput"),
    type = "structure",
    members = {
        WebhookConfiguration = schema.new({
            id = id.from(_N, "CreateChimeWebhookConfigurationOutput", "WebhookConfiguration"),
            type = "structure",
            name = "WebhookConfiguration",
            target_id = id.from(_N, "ChimeWebhookConfiguration"),
            target = M.ChimeWebhookConfiguration,
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

M.LimitExceededException = schema.new({
    id = id.from(_N, "LimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "LimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CustomActionAttachmentCriteria = schema.new({
    id = id.from(_N, "CustomActionAttachmentCriteria"),
    type = "structure",
    members = {
        Operator = schema.new({
            id = id.from(_N, "CustomActionAttachmentCriteria", "Operator"),
            type = "string",
            name = "Operator",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VariableName = schema.new({
            id = id.from(_N, "CustomActionAttachmentCriteria", "VariableName"),
            type = "string",
            name = "VariableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "CustomActionAttachmentCriteria", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.CustomActionAttachment = schema.new({
    id = id.from(_N, "CustomActionAttachment"),
    type = "structure",
    members = {
        NotificationType = schema.new({
            id = id.from(_N, "CustomActionAttachment", "NotificationType"),
            type = "string",
            name = "NotificationType",
            target_id = prelude.String.id,
        }),
        ButtonText = schema.new({
            id = id.from(_N, "CustomActionAttachment", "ButtonText"),
            type = "string",
            name = "ButtonText",
            target_id = prelude.String.id,
        }),
        Criteria = schema.new({
            id = id.from(_N, "CustomActionAttachment", "Criteria"),
            type = "list",
            name = "Criteria",
            target_id = prelude.Document.id,
            list_member = M.CustomActionAttachmentCriteria,
        }),
        Variables = schema.new({
            id = id.from(_N, "CustomActionAttachment", "Variables"),
            type = "map",
            name = "Variables",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CustomActionDefinition = schema.new({
    id = id.from(_N, "CustomActionDefinition"),
    type = "structure",
    members = {
        CommandText = schema.new({
            id = id.from(_N, "CustomActionDefinition", "CommandText"),
            type = "string",
            name = "CommandText",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateCustomActionInput = schema.new({
    id = id.from(_N, "CreateCustomActionInput"),
    type = "structure",
    members = {
        Definition = schema.new({
            id = id.from(_N, "CreateCustomActionInput", "Definition"),
            type = "structure",
            name = "Definition",
            target_id = id.from(_N, "CustomActionDefinition"),
            target = M.CustomActionDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AliasName = schema.new({
            id = id.from(_N, "CreateCustomActionInput", "AliasName"),
            type = "string",
            name = "AliasName",
            target_id = prelude.String.id,
        }),
        Attachments = schema.new({
            id = id.from(_N, "CreateCustomActionInput", "Attachments"),
            type = "list",
            name = "Attachments",
            target_id = prelude.Document.id,
            list_member = M.CustomActionAttachment,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateCustomActionInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateCustomActionInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        ActionName = schema.new({
            id = id.from(_N, "CreateCustomActionInput", "ActionName"),
            type = "string",
            name = "ActionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateCustomActionOutput = schema.new({
    id = id.from(_N, "CreateCustomActionOutput"),
    type = "structure",
    members = {
        CustomActionArn = schema.new({
            id = id.from(_N, "CreateCustomActionOutput", "CustomActionArn"),
            type = "string",
            name = "CustomActionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateMicrosoftTeamsChannelConfigurationInput = schema.new({
    id = id.from(_N, "CreateMicrosoftTeamsChannelConfigurationInput"),
    type = "structure",
    members = {
        ChannelId = schema.new({
            id = id.from(_N, "CreateMicrosoftTeamsChannelConfigurationInput", "ChannelId"),
            type = "string",
            name = "ChannelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChannelName = schema.new({
            id = id.from(_N, "CreateMicrosoftTeamsChannelConfigurationInput", "ChannelName"),
            type = "string",
            name = "ChannelName",
            target_id = prelude.String.id,
        }),
        TeamId = schema.new({
            id = id.from(_N, "CreateMicrosoftTeamsChannelConfigurationInput", "TeamId"),
            type = "string",
            name = "TeamId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TeamName = schema.new({
            id = id.from(_N, "CreateMicrosoftTeamsChannelConfigurationInput", "TeamName"),
            type = "string",
            name = "TeamName",
            target_id = prelude.String.id,
        }),
        TenantId = schema.new({
            id = id.from(_N, "CreateMicrosoftTeamsChannelConfigurationInput", "TenantId"),
            type = "string",
            name = "TenantId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SnsTopicArns = schema.new({
            id = id.from(_N, "CreateMicrosoftTeamsChannelConfigurationInput", "SnsTopicArns"),
            type = "list",
            name = "SnsTopicArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        IamRoleArn = schema.new({
            id = id.from(_N, "CreateMicrosoftTeamsChannelConfigurationInput", "IamRoleArn"),
            type = "string",
            name = "IamRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConfigurationName = schema.new({
            id = id.from(_N, "CreateMicrosoftTeamsChannelConfigurationInput", "ConfigurationName"),
            type = "string",
            name = "ConfigurationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LoggingLevel = schema.new({
            id = id.from(_N, "CreateMicrosoftTeamsChannelConfigurationInput", "LoggingLevel"),
            type = "string",
            name = "LoggingLevel",
            target_id = prelude.String.id,
        }),
        GuardrailPolicyArns = schema.new({
            id = id.from(_N, "CreateMicrosoftTeamsChannelConfigurationInput", "GuardrailPolicyArns"),
            type = "list",
            name = "GuardrailPolicyArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        UserAuthorizationRequired = schema.new({
            id = id.from(_N, "CreateMicrosoftTeamsChannelConfigurationInput", "UserAuthorizationRequired"),
            type = "boolean",
            name = "UserAuthorizationRequired",
            target_id = prelude.Boolean.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateMicrosoftTeamsChannelConfigurationInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.TeamsChannelConfiguration = schema.new({
    id = id.from(_N, "TeamsChannelConfiguration"),
    type = "structure",
    members = {
        ChannelId = schema.new({
            id = id.from(_N, "TeamsChannelConfiguration", "ChannelId"),
            type = "string",
            name = "ChannelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChannelName = schema.new({
            id = id.from(_N, "TeamsChannelConfiguration", "ChannelName"),
            type = "string",
            name = "ChannelName",
            target_id = prelude.String.id,
        }),
        TeamId = schema.new({
            id = id.from(_N, "TeamsChannelConfiguration", "TeamId"),
            type = "string",
            name = "TeamId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TeamName = schema.new({
            id = id.from(_N, "TeamsChannelConfiguration", "TeamName"),
            type = "string",
            name = "TeamName",
            target_id = prelude.String.id,
        }),
        TenantId = schema.new({
            id = id.from(_N, "TeamsChannelConfiguration", "TenantId"),
            type = "string",
            name = "TenantId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChatConfigurationArn = schema.new({
            id = id.from(_N, "TeamsChannelConfiguration", "ChatConfigurationArn"),
            type = "string",
            name = "ChatConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IamRoleArn = schema.new({
            id = id.from(_N, "TeamsChannelConfiguration", "IamRoleArn"),
            type = "string",
            name = "IamRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SnsTopicArns = schema.new({
            id = id.from(_N, "TeamsChannelConfiguration", "SnsTopicArns"),
            type = "list",
            name = "SnsTopicArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConfigurationName = schema.new({
            id = id.from(_N, "TeamsChannelConfiguration", "ConfigurationName"),
            type = "string",
            name = "ConfigurationName",
            target_id = prelude.String.id,
        }),
        LoggingLevel = schema.new({
            id = id.from(_N, "TeamsChannelConfiguration", "LoggingLevel"),
            type = "string",
            name = "LoggingLevel",
            target_id = prelude.String.id,
        }),
        GuardrailPolicyArns = schema.new({
            id = id.from(_N, "TeamsChannelConfiguration", "GuardrailPolicyArns"),
            type = "list",
            name = "GuardrailPolicyArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        UserAuthorizationRequired = schema.new({
            id = id.from(_N, "TeamsChannelConfiguration", "UserAuthorizationRequired"),
            type = "boolean",
            name = "UserAuthorizationRequired",
            target_id = prelude.Boolean.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "TeamsChannelConfiguration", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        State = schema.new({
            id = id.from(_N, "TeamsChannelConfiguration", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        StateReason = schema.new({
            id = id.from(_N, "TeamsChannelConfiguration", "StateReason"),
            type = "string",
            name = "StateReason",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateMicrosoftTeamsChannelConfigurationOutput = schema.new({
    id = id.from(_N, "CreateMicrosoftTeamsChannelConfigurationOutput"),
    type = "structure",
    members = {
        ChannelConfiguration = schema.new({
            id = id.from(_N, "CreateMicrosoftTeamsChannelConfigurationOutput", "ChannelConfiguration"),
            type = "structure",
            name = "ChannelConfiguration",
            target_id = id.from(_N, "TeamsChannelConfiguration"),
            target = M.TeamsChannelConfiguration,
        }),
    },
})

M.CreateTeamsChannelConfigurationException = schema.new({
    id = id.from(_N, "CreateTeamsChannelConfigurationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CreateTeamsChannelConfigurationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateSlackChannelConfigurationException = schema.new({
    id = id.from(_N, "CreateSlackChannelConfigurationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CreateSlackChannelConfigurationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateSlackChannelConfigurationInput = schema.new({
    id = id.from(_N, "CreateSlackChannelConfigurationInput"),
    type = "structure",
    members = {
        SlackTeamId = schema.new({
            id = id.from(_N, "CreateSlackChannelConfigurationInput", "SlackTeamId"),
            type = "string",
            name = "SlackTeamId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SlackChannelId = schema.new({
            id = id.from(_N, "CreateSlackChannelConfigurationInput", "SlackChannelId"),
            type = "string",
            name = "SlackChannelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SlackChannelName = schema.new({
            id = id.from(_N, "CreateSlackChannelConfigurationInput", "SlackChannelName"),
            type = "string",
            name = "SlackChannelName",
            target_id = prelude.String.id,
        }),
        SnsTopicArns = schema.new({
            id = id.from(_N, "CreateSlackChannelConfigurationInput", "SnsTopicArns"),
            type = "list",
            name = "SnsTopicArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        IamRoleArn = schema.new({
            id = id.from(_N, "CreateSlackChannelConfigurationInput", "IamRoleArn"),
            type = "string",
            name = "IamRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConfigurationName = schema.new({
            id = id.from(_N, "CreateSlackChannelConfigurationInput", "ConfigurationName"),
            type = "string",
            name = "ConfigurationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LoggingLevel = schema.new({
            id = id.from(_N, "CreateSlackChannelConfigurationInput", "LoggingLevel"),
            type = "string",
            name = "LoggingLevel",
            target_id = prelude.String.id,
        }),
        GuardrailPolicyArns = schema.new({
            id = id.from(_N, "CreateSlackChannelConfigurationInput", "GuardrailPolicyArns"),
            type = "list",
            name = "GuardrailPolicyArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        UserAuthorizationRequired = schema.new({
            id = id.from(_N, "CreateSlackChannelConfigurationInput", "UserAuthorizationRequired"),
            type = "boolean",
            name = "UserAuthorizationRequired",
            target_id = prelude.Boolean.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateSlackChannelConfigurationInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.SlackChannelConfiguration = schema.new({
    id = id.from(_N, "SlackChannelConfiguration"),
    type = "structure",
    members = {
        SlackTeamName = schema.new({
            id = id.from(_N, "SlackChannelConfiguration", "SlackTeamName"),
            type = "string",
            name = "SlackTeamName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SlackTeamId = schema.new({
            id = id.from(_N, "SlackChannelConfiguration", "SlackTeamId"),
            type = "string",
            name = "SlackTeamId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SlackChannelId = schema.new({
            id = id.from(_N, "SlackChannelConfiguration", "SlackChannelId"),
            type = "string",
            name = "SlackChannelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SlackChannelName = schema.new({
            id = id.from(_N, "SlackChannelConfiguration", "SlackChannelName"),
            type = "string",
            name = "SlackChannelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChatConfigurationArn = schema.new({
            id = id.from(_N, "SlackChannelConfiguration", "ChatConfigurationArn"),
            type = "string",
            name = "ChatConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IamRoleArn = schema.new({
            id = id.from(_N, "SlackChannelConfiguration", "IamRoleArn"),
            type = "string",
            name = "IamRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SnsTopicArns = schema.new({
            id = id.from(_N, "SlackChannelConfiguration", "SnsTopicArns"),
            type = "list",
            name = "SnsTopicArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConfigurationName = schema.new({
            id = id.from(_N, "SlackChannelConfiguration", "ConfigurationName"),
            type = "string",
            name = "ConfigurationName",
            target_id = prelude.String.id,
        }),
        LoggingLevel = schema.new({
            id = id.from(_N, "SlackChannelConfiguration", "LoggingLevel"),
            type = "string",
            name = "LoggingLevel",
            target_id = prelude.String.id,
        }),
        GuardrailPolicyArns = schema.new({
            id = id.from(_N, "SlackChannelConfiguration", "GuardrailPolicyArns"),
            type = "list",
            name = "GuardrailPolicyArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        UserAuthorizationRequired = schema.new({
            id = id.from(_N, "SlackChannelConfiguration", "UserAuthorizationRequired"),
            type = "boolean",
            name = "UserAuthorizationRequired",
            target_id = prelude.Boolean.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "SlackChannelConfiguration", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        State = schema.new({
            id = id.from(_N, "SlackChannelConfiguration", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        StateReason = schema.new({
            id = id.from(_N, "SlackChannelConfiguration", "StateReason"),
            type = "string",
            name = "StateReason",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateSlackChannelConfigurationOutput = schema.new({
    id = id.from(_N, "CreateSlackChannelConfigurationOutput"),
    type = "structure",
    members = {
        ChannelConfiguration = schema.new({
            id = id.from(_N, "CreateSlackChannelConfigurationOutput", "ChannelConfiguration"),
            type = "structure",
            name = "ChannelConfiguration",
            target_id = id.from(_N, "SlackChannelConfiguration"),
            target = M.SlackChannelConfiguration,
        }),
    },
})

M.CustomAction = schema.new({
    id = id.from(_N, "CustomAction"),
    type = "structure",
    members = {
        CustomActionArn = schema.new({
            id = id.from(_N, "CustomAction", "CustomActionArn"),
            type = "string",
            name = "CustomActionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Definition = schema.new({
            id = id.from(_N, "CustomAction", "Definition"),
            type = "structure",
            name = "Definition",
            target_id = id.from(_N, "CustomActionDefinition"),
            target = M.CustomActionDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AliasName = schema.new({
            id = id.from(_N, "CustomAction", "AliasName"),
            type = "string",
            name = "AliasName",
            target_id = prelude.String.id,
        }),
        Attachments = schema.new({
            id = id.from(_N, "CustomAction", "Attachments"),
            type = "list",
            name = "Attachments",
            target_id = prelude.Document.id,
            list_member = M.CustomActionAttachment,
        }),
        ActionName = schema.new({
            id = id.from(_N, "CustomAction", "ActionName"),
            type = "string",
            name = "ActionName",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteCustomActionInput = schema.new({
    id = id.from(_N, "DeleteCustomActionInput"),
    type = "structure",
    members = {
        CustomActionArn = schema.new({
            id = id.from(_N, "DeleteCustomActionInput", "CustomActionArn"),
            type = "string",
            name = "CustomActionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteCustomActionOutput = schema.new({
    id = id.from(_N, "DeleteCustomActionOutput"),
    type = "structure",
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

M.GetCustomActionInput = schema.new({
    id = id.from(_N, "GetCustomActionInput"),
    type = "structure",
    members = {
        CustomActionArn = schema.new({
            id = id.from(_N, "GetCustomActionInput", "CustomActionArn"),
            type = "string",
            name = "CustomActionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetCustomActionOutput = schema.new({
    id = id.from(_N, "GetCustomActionOutput"),
    type = "structure",
    members = {
        CustomAction = schema.new({
            id = id.from(_N, "GetCustomActionOutput", "CustomAction"),
            type = "structure",
            name = "CustomAction",
            target_id = id.from(_N, "CustomAction"),
            target = M.CustomAction,
        }),
    },
})

M.ListCustomActionsInput = schema.new({
    id = id.from(_N, "ListCustomActionsInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListCustomActionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCustomActionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCustomActionsOutput = schema.new({
    id = id.from(_N, "ListCustomActionsOutput"),
    type = "structure",
    members = {
        CustomActions = schema.new({
            id = id.from(_N, "ListCustomActionsOutput", "CustomActions"),
            type = "list",
            name = "CustomActions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCustomActionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateCustomActionInput = schema.new({
    id = id.from(_N, "UpdateCustomActionInput"),
    type = "structure",
    members = {
        CustomActionArn = schema.new({
            id = id.from(_N, "UpdateCustomActionInput", "CustomActionArn"),
            type = "string",
            name = "CustomActionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Definition = schema.new({
            id = id.from(_N, "UpdateCustomActionInput", "Definition"),
            type = "structure",
            name = "Definition",
            target_id = id.from(_N, "CustomActionDefinition"),
            target = M.CustomActionDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AliasName = schema.new({
            id = id.from(_N, "UpdateCustomActionInput", "AliasName"),
            type = "string",
            name = "AliasName",
            target_id = prelude.String.id,
        }),
        Attachments = schema.new({
            id = id.from(_N, "UpdateCustomActionInput", "Attachments"),
            type = "list",
            name = "Attachments",
            target_id = prelude.Document.id,
            list_member = M.CustomActionAttachment,
        }),
    },
})

M.UpdateCustomActionOutput = schema.new({
    id = id.from(_N, "UpdateCustomActionOutput"),
    type = "structure",
    members = {
        CustomActionArn = schema.new({
            id = id.from(_N, "UpdateCustomActionOutput", "CustomActionArn"),
            type = "string",
            name = "CustomActionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteChimeWebhookConfigurationException = schema.new({
    id = id.from(_N, "DeleteChimeWebhookConfigurationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DeleteChimeWebhookConfigurationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteChimeWebhookConfigurationInput = schema.new({
    id = id.from(_N, "DeleteChimeWebhookConfigurationInput"),
    type = "structure",
    members = {
        ChatConfigurationArn = schema.new({
            id = id.from(_N, "DeleteChimeWebhookConfigurationInput", "ChatConfigurationArn"),
            type = "string",
            name = "ChatConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteChimeWebhookConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteChimeWebhookConfigurationOutput"),
    type = "structure",
})

M.DeleteMicrosoftTeamsChannelConfigurationInput = schema.new({
    id = id.from(_N, "DeleteMicrosoftTeamsChannelConfigurationInput"),
    type = "structure",
    members = {
        ChatConfigurationArn = schema.new({
            id = id.from(_N, "DeleteMicrosoftTeamsChannelConfigurationInput", "ChatConfigurationArn"),
            type = "string",
            name = "ChatConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteMicrosoftTeamsChannelConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteMicrosoftTeamsChannelConfigurationOutput"),
    type = "structure",
})

M.DeleteTeamsChannelConfigurationException = schema.new({
    id = id.from(_N, "DeleteTeamsChannelConfigurationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DeleteTeamsChannelConfigurationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteMicrosoftTeamsConfiguredTeamInput = schema.new({
    id = id.from(_N, "DeleteMicrosoftTeamsConfiguredTeamInput"),
    type = "structure",
    members = {
        TeamId = schema.new({
            id = id.from(_N, "DeleteMicrosoftTeamsConfiguredTeamInput", "TeamId"),
            type = "string",
            name = "TeamId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteMicrosoftTeamsConfiguredTeamOutput = schema.new({
    id = id.from(_N, "DeleteMicrosoftTeamsConfiguredTeamOutput"),
    type = "structure",
})

M.DeleteTeamsConfiguredTeamException = schema.new({
    id = id.from(_N, "DeleteTeamsConfiguredTeamException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DeleteTeamsConfiguredTeamException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteMicrosoftTeamsUserIdentityException = schema.new({
    id = id.from(_N, "DeleteMicrosoftTeamsUserIdentityException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DeleteMicrosoftTeamsUserIdentityException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteMicrosoftTeamsUserIdentityInput = schema.new({
    id = id.from(_N, "DeleteMicrosoftTeamsUserIdentityInput"),
    type = "structure",
    members = {
        ChatConfigurationArn = schema.new({
            id = id.from(_N, "DeleteMicrosoftTeamsUserIdentityInput", "ChatConfigurationArn"),
            type = "string",
            name = "ChatConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserId = schema.new({
            id = id.from(_N, "DeleteMicrosoftTeamsUserIdentityInput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteMicrosoftTeamsUserIdentityOutput = schema.new({
    id = id.from(_N, "DeleteMicrosoftTeamsUserIdentityOutput"),
    type = "structure",
})

M.DeleteSlackChannelConfigurationException = schema.new({
    id = id.from(_N, "DeleteSlackChannelConfigurationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DeleteSlackChannelConfigurationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteSlackChannelConfigurationInput = schema.new({
    id = id.from(_N, "DeleteSlackChannelConfigurationInput"),
    type = "structure",
    members = {
        ChatConfigurationArn = schema.new({
            id = id.from(_N, "DeleteSlackChannelConfigurationInput", "ChatConfigurationArn"),
            type = "string",
            name = "ChatConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteSlackChannelConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteSlackChannelConfigurationOutput"),
    type = "structure",
})

M.DeleteSlackUserIdentityException = schema.new({
    id = id.from(_N, "DeleteSlackUserIdentityException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DeleteSlackUserIdentityException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteSlackUserIdentityInput = schema.new({
    id = id.from(_N, "DeleteSlackUserIdentityInput"),
    type = "structure",
    members = {
        ChatConfigurationArn = schema.new({
            id = id.from(_N, "DeleteSlackUserIdentityInput", "ChatConfigurationArn"),
            type = "string",
            name = "ChatConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SlackTeamId = schema.new({
            id = id.from(_N, "DeleteSlackUserIdentityInput", "SlackTeamId"),
            type = "string",
            name = "SlackTeamId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SlackUserId = schema.new({
            id = id.from(_N, "DeleteSlackUserIdentityInput", "SlackUserId"),
            type = "string",
            name = "SlackUserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteSlackUserIdentityOutput = schema.new({
    id = id.from(_N, "DeleteSlackUserIdentityOutput"),
    type = "structure",
})

M.DeleteSlackWorkspaceAuthorizationFault = schema.new({
    id = id.from(_N, "DeleteSlackWorkspaceAuthorizationFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DeleteSlackWorkspaceAuthorizationFault", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteSlackWorkspaceAuthorizationInput = schema.new({
    id = id.from(_N, "DeleteSlackWorkspaceAuthorizationInput"),
    type = "structure",
    members = {
        SlackTeamId = schema.new({
            id = id.from(_N, "DeleteSlackWorkspaceAuthorizationInput", "SlackTeamId"),
            type = "string",
            name = "SlackTeamId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteSlackWorkspaceAuthorizationOutput = schema.new({
    id = id.from(_N, "DeleteSlackWorkspaceAuthorizationOutput"),
    type = "structure",
})

M.DescribeChimeWebhookConfigurationsException = schema.new({
    id = id.from(_N, "DescribeChimeWebhookConfigurationsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DescribeChimeWebhookConfigurationsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeChimeWebhookConfigurationsInput = schema.new({
    id = id.from(_N, "DescribeChimeWebhookConfigurationsInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "DescribeChimeWebhookConfigurationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeChimeWebhookConfigurationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        ChatConfigurationArn = schema.new({
            id = id.from(_N, "DescribeChimeWebhookConfigurationsInput", "ChatConfigurationArn"),
            type = "string",
            name = "ChatConfigurationArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeChimeWebhookConfigurationsOutput = schema.new({
    id = id.from(_N, "DescribeChimeWebhookConfigurationsOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "DescribeChimeWebhookConfigurationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        WebhookConfigurations = schema.new({
            id = id.from(_N, "DescribeChimeWebhookConfigurationsOutput", "WebhookConfigurations"),
            type = "list",
            name = "WebhookConfigurations",
            target_id = prelude.Document.id,
            list_member = M.ChimeWebhookConfiguration,
        }),
    },
})

M.DescribeSlackChannelConfigurationsException = schema.new({
    id = id.from(_N, "DescribeSlackChannelConfigurationsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DescribeSlackChannelConfigurationsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeSlackChannelConfigurationsInput = schema.new({
    id = id.from(_N, "DescribeSlackChannelConfigurationsInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "DescribeSlackChannelConfigurationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeSlackChannelConfigurationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        ChatConfigurationArn = schema.new({
            id = id.from(_N, "DescribeSlackChannelConfigurationsInput", "ChatConfigurationArn"),
            type = "string",
            name = "ChatConfigurationArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeSlackChannelConfigurationsOutput = schema.new({
    id = id.from(_N, "DescribeSlackChannelConfigurationsOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "DescribeSlackChannelConfigurationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        SlackChannelConfigurations = schema.new({
            id = id.from(_N, "DescribeSlackChannelConfigurationsOutput", "SlackChannelConfigurations"),
            type = "list",
            name = "SlackChannelConfigurations",
            target_id = prelude.Document.id,
            list_member = M.SlackChannelConfiguration,
        }),
    },
})

M.DescribeSlackUserIdentitiesException = schema.new({
    id = id.from(_N, "DescribeSlackUserIdentitiesException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DescribeSlackUserIdentitiesException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeSlackUserIdentitiesInput = schema.new({
    id = id.from(_N, "DescribeSlackUserIdentitiesInput"),
    type = "structure",
    members = {
        ChatConfigurationArn = schema.new({
            id = id.from(_N, "DescribeSlackUserIdentitiesInput", "ChatConfigurationArn"),
            type = "string",
            name = "ChatConfigurationArn",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeSlackUserIdentitiesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeSlackUserIdentitiesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.SlackUserIdentity = schema.new({
    id = id.from(_N, "SlackUserIdentity"),
    type = "structure",
    members = {
        IamRoleArn = schema.new({
            id = id.from(_N, "SlackUserIdentity", "IamRoleArn"),
            type = "string",
            name = "IamRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChatConfigurationArn = schema.new({
            id = id.from(_N, "SlackUserIdentity", "ChatConfigurationArn"),
            type = "string",
            name = "ChatConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SlackTeamId = schema.new({
            id = id.from(_N, "SlackUserIdentity", "SlackTeamId"),
            type = "string",
            name = "SlackTeamId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SlackUserId = schema.new({
            id = id.from(_N, "SlackUserIdentity", "SlackUserId"),
            type = "string",
            name = "SlackUserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AwsUserIdentity = schema.new({
            id = id.from(_N, "SlackUserIdentity", "AwsUserIdentity"),
            type = "string",
            name = "AwsUserIdentity",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeSlackUserIdentitiesOutput = schema.new({
    id = id.from(_N, "DescribeSlackUserIdentitiesOutput"),
    type = "structure",
    members = {
        SlackUserIdentities = schema.new({
            id = id.from(_N, "DescribeSlackUserIdentitiesOutput", "SlackUserIdentities"),
            type = "list",
            name = "SlackUserIdentities",
            target_id = prelude.Document.id,
            list_member = M.SlackUserIdentity,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeSlackUserIdentitiesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeSlackWorkspacesException = schema.new({
    id = id.from(_N, "DescribeSlackWorkspacesException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DescribeSlackWorkspacesException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeSlackWorkspacesInput = schema.new({
    id = id.from(_N, "DescribeSlackWorkspacesInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "DescribeSlackWorkspacesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeSlackWorkspacesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SlackWorkspace = schema.new({
    id = id.from(_N, "SlackWorkspace"),
    type = "structure",
    members = {
        SlackTeamId = schema.new({
            id = id.from(_N, "SlackWorkspace", "SlackTeamId"),
            type = "string",
            name = "SlackTeamId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SlackTeamName = schema.new({
            id = id.from(_N, "SlackWorkspace", "SlackTeamName"),
            type = "string",
            name = "SlackTeamName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        State = schema.new({
            id = id.from(_N, "SlackWorkspace", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        StateReason = schema.new({
            id = id.from(_N, "SlackWorkspace", "StateReason"),
            type = "string",
            name = "StateReason",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeSlackWorkspacesOutput = schema.new({
    id = id.from(_N, "DescribeSlackWorkspacesOutput"),
    type = "structure",
    members = {
        SlackWorkspaces = schema.new({
            id = id.from(_N, "DescribeSlackWorkspacesOutput", "SlackWorkspaces"),
            type = "list",
            name = "SlackWorkspaces",
            target_id = prelude.Document.id,
            list_member = M.SlackWorkspace,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeSlackWorkspacesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DisassociateFromConfigurationInput = schema.new({
    id = id.from(_N, "DisassociateFromConfigurationInput"),
    type = "structure",
    members = {
        Resource = schema.new({
            id = id.from(_N, "DisassociateFromConfigurationInput", "Resource"),
            type = "string",
            name = "Resource",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChatConfiguration = schema.new({
            id = id.from(_N, "DisassociateFromConfigurationInput", "ChatConfiguration"),
            type = "string",
            name = "ChatConfiguration",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisassociateFromConfigurationOutput = schema.new({
    id = id.from(_N, "DisassociateFromConfigurationOutput"),
    type = "structure",
})

M.GetAccountPreferencesException = schema.new({
    id = id.from(_N, "GetAccountPreferencesException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "GetAccountPreferencesException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAccountPreferencesInput = schema.new({
    id = id.from(_N, "GetAccountPreferencesInput"),
    type = "structure",
})

M.GetAccountPreferencesOutput = schema.new({
    id = id.from(_N, "GetAccountPreferencesOutput"),
    type = "structure",
    members = {
        AccountPreferences = schema.new({
            id = id.from(_N, "GetAccountPreferencesOutput", "AccountPreferences"),
            type = "structure",
            name = "AccountPreferences",
            target_id = id.from(_N, "AccountPreferences"),
            target = M.AccountPreferences,
        }),
    },
})

M.GetMicrosoftTeamsChannelConfigurationInput = schema.new({
    id = id.from(_N, "GetMicrosoftTeamsChannelConfigurationInput"),
    type = "structure",
    members = {
        ChatConfigurationArn = schema.new({
            id = id.from(_N, "GetMicrosoftTeamsChannelConfigurationInput", "ChatConfigurationArn"),
            type = "string",
            name = "ChatConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetMicrosoftTeamsChannelConfigurationOutput = schema.new({
    id = id.from(_N, "GetMicrosoftTeamsChannelConfigurationOutput"),
    type = "structure",
    members = {
        ChannelConfiguration = schema.new({
            id = id.from(_N, "GetMicrosoftTeamsChannelConfigurationOutput", "ChannelConfiguration"),
            type = "structure",
            name = "ChannelConfiguration",
            target_id = id.from(_N, "TeamsChannelConfiguration"),
            target = M.TeamsChannelConfiguration,
        }),
    },
})

M.GetTeamsChannelConfigurationException = schema.new({
    id = id.from(_N, "GetTeamsChannelConfigurationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "GetTeamsChannelConfigurationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAssociationsInput = schema.new({
    id = id.from(_N, "ListAssociationsInput"),
    type = "structure",
    members = {
        ChatConfiguration = schema.new({
            id = id.from(_N, "ListAssociationsInput", "ChatConfiguration"),
            type = "string",
            name = "ChatConfiguration",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListAssociationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAssociationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAssociationsOutput = schema.new({
    id = id.from(_N, "ListAssociationsOutput"),
    type = "structure",
    members = {
        Associations = schema.new({
            id = id.from(_N, "ListAssociationsOutput", "Associations"),
            type = "list",
            name = "Associations",
            target_id = prelude.Document.id,
            list_member = M.AssociationListing,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAssociationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMicrosoftTeamsChannelConfigurationsInput = schema.new({
    id = id.from(_N, "ListMicrosoftTeamsChannelConfigurationsInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListMicrosoftTeamsChannelConfigurationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListMicrosoftTeamsChannelConfigurationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        TeamId = schema.new({
            id = id.from(_N, "ListMicrosoftTeamsChannelConfigurationsInput", "TeamId"),
            type = "string",
            name = "TeamId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMicrosoftTeamsChannelConfigurationsOutput = schema.new({
    id = id.from(_N, "ListMicrosoftTeamsChannelConfigurationsOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListMicrosoftTeamsChannelConfigurationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        TeamChannelConfigurations = schema.new({
            id = id.from(_N, "ListMicrosoftTeamsChannelConfigurationsOutput", "TeamChannelConfigurations"),
            type = "list",
            name = "TeamChannelConfigurations",
            target_id = prelude.Document.id,
            list_member = M.TeamsChannelConfiguration,
        }),
    },
})

M.ListTeamsChannelConfigurationsException = schema.new({
    id = id.from(_N, "ListTeamsChannelConfigurationsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ListTeamsChannelConfigurationsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMicrosoftTeamsConfiguredTeamsException = schema.new({
    id = id.from(_N, "ListMicrosoftTeamsConfiguredTeamsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ListMicrosoftTeamsConfiguredTeamsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMicrosoftTeamsConfiguredTeamsInput = schema.new({
    id = id.from(_N, "ListMicrosoftTeamsConfiguredTeamsInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListMicrosoftTeamsConfiguredTeamsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListMicrosoftTeamsConfiguredTeamsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMicrosoftTeamsConfiguredTeamsOutput = schema.new({
    id = id.from(_N, "ListMicrosoftTeamsConfiguredTeamsOutput"),
    type = "structure",
    members = {
        ConfiguredTeams = schema.new({
            id = id.from(_N, "ListMicrosoftTeamsConfiguredTeamsOutput", "ConfiguredTeams"),
            type = "list",
            name = "ConfiguredTeams",
            target_id = prelude.Document.id,
            list_member = M.ConfiguredTeam,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListMicrosoftTeamsConfiguredTeamsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMicrosoftTeamsUserIdentitiesException = schema.new({
    id = id.from(_N, "ListMicrosoftTeamsUserIdentitiesException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ListMicrosoftTeamsUserIdentitiesException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMicrosoftTeamsUserIdentitiesInput = schema.new({
    id = id.from(_N, "ListMicrosoftTeamsUserIdentitiesInput"),
    type = "structure",
    members = {
        ChatConfigurationArn = schema.new({
            id = id.from(_N, "ListMicrosoftTeamsUserIdentitiesInput", "ChatConfigurationArn"),
            type = "string",
            name = "ChatConfigurationArn",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListMicrosoftTeamsUserIdentitiesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListMicrosoftTeamsUserIdentitiesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.TeamsUserIdentity = schema.new({
    id = id.from(_N, "TeamsUserIdentity"),
    type = "structure",
    members = {
        IamRoleArn = schema.new({
            id = id.from(_N, "TeamsUserIdentity", "IamRoleArn"),
            type = "string",
            name = "IamRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChatConfigurationArn = schema.new({
            id = id.from(_N, "TeamsUserIdentity", "ChatConfigurationArn"),
            type = "string",
            name = "ChatConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TeamId = schema.new({
            id = id.from(_N, "TeamsUserIdentity", "TeamId"),
            type = "string",
            name = "TeamId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserId = schema.new({
            id = id.from(_N, "TeamsUserIdentity", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
        }),
        AwsUserIdentity = schema.new({
            id = id.from(_N, "TeamsUserIdentity", "AwsUserIdentity"),
            type = "string",
            name = "AwsUserIdentity",
            target_id = prelude.String.id,
        }),
        TeamsChannelId = schema.new({
            id = id.from(_N, "TeamsUserIdentity", "TeamsChannelId"),
            type = "string",
            name = "TeamsChannelId",
            target_id = prelude.String.id,
        }),
        TeamsTenantId = schema.new({
            id = id.from(_N, "TeamsUserIdentity", "TeamsTenantId"),
            type = "string",
            name = "TeamsTenantId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMicrosoftTeamsUserIdentitiesOutput = schema.new({
    id = id.from(_N, "ListMicrosoftTeamsUserIdentitiesOutput"),
    type = "structure",
    members = {
        TeamsUserIdentities = schema.new({
            id = id.from(_N, "ListMicrosoftTeamsUserIdentitiesOutput", "TeamsUserIdentities"),
            type = "list",
            name = "TeamsUserIdentities",
            target_id = prelude.Document.id,
            list_member = M.TeamsUserIdentity,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListMicrosoftTeamsUserIdentitiesOutput", "NextToken"),
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

M.ServiceUnavailableException = schema.new({
    id = id.from(_N, "ServiceUnavailableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServiceUnavailableException", "message"),
            type = "string",
            name = "message",
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

M.TooManyTagsException = schema.new({
    id = id.from(_N, "TooManyTagsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TooManyTagsException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
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

M.UpdateAccountPreferencesException = schema.new({
    id = id.from(_N, "UpdateAccountPreferencesException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "UpdateAccountPreferencesException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateAccountPreferencesInput = schema.new({
    id = id.from(_N, "UpdateAccountPreferencesInput"),
    type = "structure",
    members = {
        UserAuthorizationRequired = schema.new({
            id = id.from(_N, "UpdateAccountPreferencesInput", "UserAuthorizationRequired"),
            type = "boolean",
            name = "UserAuthorizationRequired",
            target_id = prelude.Boolean.id,
        }),
        TrainingDataCollectionEnabled = schema.new({
            id = id.from(_N, "UpdateAccountPreferencesInput", "TrainingDataCollectionEnabled"),
            type = "boolean",
            name = "TrainingDataCollectionEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateAccountPreferencesOutput = schema.new({
    id = id.from(_N, "UpdateAccountPreferencesOutput"),
    type = "structure",
    members = {
        AccountPreferences = schema.new({
            id = id.from(_N, "UpdateAccountPreferencesOutput", "AccountPreferences"),
            type = "structure",
            name = "AccountPreferences",
            target_id = id.from(_N, "AccountPreferences"),
            target = M.AccountPreferences,
        }),
    },
})

M.UpdateChimeWebhookConfigurationException = schema.new({
    id = id.from(_N, "UpdateChimeWebhookConfigurationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "UpdateChimeWebhookConfigurationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateChimeWebhookConfigurationInput = schema.new({
    id = id.from(_N, "UpdateChimeWebhookConfigurationInput"),
    type = "structure",
    members = {
        ChatConfigurationArn = schema.new({
            id = id.from(_N, "UpdateChimeWebhookConfigurationInput", "ChatConfigurationArn"),
            type = "string",
            name = "ChatConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WebhookDescription = schema.new({
            id = id.from(_N, "UpdateChimeWebhookConfigurationInput", "WebhookDescription"),
            type = "string",
            name = "WebhookDescription",
            target_id = prelude.String.id,
        }),
        WebhookUrl = schema.new({
            id = id.from(_N, "UpdateChimeWebhookConfigurationInput", "WebhookUrl"),
            type = "string",
            name = "WebhookUrl",
            target_id = prelude.String.id,
        }),
        SnsTopicArns = schema.new({
            id = id.from(_N, "UpdateChimeWebhookConfigurationInput", "SnsTopicArns"),
            type = "list",
            name = "SnsTopicArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        IamRoleArn = schema.new({
            id = id.from(_N, "UpdateChimeWebhookConfigurationInput", "IamRoleArn"),
            type = "string",
            name = "IamRoleArn",
            target_id = prelude.String.id,
        }),
        LoggingLevel = schema.new({
            id = id.from(_N, "UpdateChimeWebhookConfigurationInput", "LoggingLevel"),
            type = "string",
            name = "LoggingLevel",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateChimeWebhookConfigurationOutput = schema.new({
    id = id.from(_N, "UpdateChimeWebhookConfigurationOutput"),
    type = "structure",
    members = {
        WebhookConfiguration = schema.new({
            id = id.from(_N, "UpdateChimeWebhookConfigurationOutput", "WebhookConfiguration"),
            type = "structure",
            name = "WebhookConfiguration",
            target_id = id.from(_N, "ChimeWebhookConfiguration"),
            target = M.ChimeWebhookConfiguration,
        }),
    },
})

M.UpdateMicrosoftTeamsChannelConfigurationInput = schema.new({
    id = id.from(_N, "UpdateMicrosoftTeamsChannelConfigurationInput"),
    type = "structure",
    members = {
        ChatConfigurationArn = schema.new({
            id = id.from(_N, "UpdateMicrosoftTeamsChannelConfigurationInput", "ChatConfigurationArn"),
            type = "string",
            name = "ChatConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChannelId = schema.new({
            id = id.from(_N, "UpdateMicrosoftTeamsChannelConfigurationInput", "ChannelId"),
            type = "string",
            name = "ChannelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChannelName = schema.new({
            id = id.from(_N, "UpdateMicrosoftTeamsChannelConfigurationInput", "ChannelName"),
            type = "string",
            name = "ChannelName",
            target_id = prelude.String.id,
        }),
        SnsTopicArns = schema.new({
            id = id.from(_N, "UpdateMicrosoftTeamsChannelConfigurationInput", "SnsTopicArns"),
            type = "list",
            name = "SnsTopicArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        IamRoleArn = schema.new({
            id = id.from(_N, "UpdateMicrosoftTeamsChannelConfigurationInput", "IamRoleArn"),
            type = "string",
            name = "IamRoleArn",
            target_id = prelude.String.id,
        }),
        LoggingLevel = schema.new({
            id = id.from(_N, "UpdateMicrosoftTeamsChannelConfigurationInput", "LoggingLevel"),
            type = "string",
            name = "LoggingLevel",
            target_id = prelude.String.id,
        }),
        GuardrailPolicyArns = schema.new({
            id = id.from(_N, "UpdateMicrosoftTeamsChannelConfigurationInput", "GuardrailPolicyArns"),
            type = "list",
            name = "GuardrailPolicyArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        UserAuthorizationRequired = schema.new({
            id = id.from(_N, "UpdateMicrosoftTeamsChannelConfigurationInput", "UserAuthorizationRequired"),
            type = "boolean",
            name = "UserAuthorizationRequired",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateMicrosoftTeamsChannelConfigurationOutput = schema.new({
    id = id.from(_N, "UpdateMicrosoftTeamsChannelConfigurationOutput"),
    type = "structure",
    members = {
        ChannelConfiguration = schema.new({
            id = id.from(_N, "UpdateMicrosoftTeamsChannelConfigurationOutput", "ChannelConfiguration"),
            type = "structure",
            name = "ChannelConfiguration",
            target_id = id.from(_N, "TeamsChannelConfiguration"),
            target = M.TeamsChannelConfiguration,
        }),
    },
})

M.UpdateTeamsChannelConfigurationException = schema.new({
    id = id.from(_N, "UpdateTeamsChannelConfigurationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "UpdateTeamsChannelConfigurationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateSlackChannelConfigurationException = schema.new({
    id = id.from(_N, "UpdateSlackChannelConfigurationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "UpdateSlackChannelConfigurationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateSlackChannelConfigurationInput = schema.new({
    id = id.from(_N, "UpdateSlackChannelConfigurationInput"),
    type = "structure",
    members = {
        ChatConfigurationArn = schema.new({
            id = id.from(_N, "UpdateSlackChannelConfigurationInput", "ChatConfigurationArn"),
            type = "string",
            name = "ChatConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SlackChannelId = schema.new({
            id = id.from(_N, "UpdateSlackChannelConfigurationInput", "SlackChannelId"),
            type = "string",
            name = "SlackChannelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SlackChannelName = schema.new({
            id = id.from(_N, "UpdateSlackChannelConfigurationInput", "SlackChannelName"),
            type = "string",
            name = "SlackChannelName",
            target_id = prelude.String.id,
        }),
        SnsTopicArns = schema.new({
            id = id.from(_N, "UpdateSlackChannelConfigurationInput", "SnsTopicArns"),
            type = "list",
            name = "SnsTopicArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        IamRoleArn = schema.new({
            id = id.from(_N, "UpdateSlackChannelConfigurationInput", "IamRoleArn"),
            type = "string",
            name = "IamRoleArn",
            target_id = prelude.String.id,
        }),
        LoggingLevel = schema.new({
            id = id.from(_N, "UpdateSlackChannelConfigurationInput", "LoggingLevel"),
            type = "string",
            name = "LoggingLevel",
            target_id = prelude.String.id,
        }),
        GuardrailPolicyArns = schema.new({
            id = id.from(_N, "UpdateSlackChannelConfigurationInput", "GuardrailPolicyArns"),
            type = "list",
            name = "GuardrailPolicyArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        UserAuthorizationRequired = schema.new({
            id = id.from(_N, "UpdateSlackChannelConfigurationInput", "UserAuthorizationRequired"),
            type = "boolean",
            name = "UserAuthorizationRequired",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateSlackChannelConfigurationOutput = schema.new({
    id = id.from(_N, "UpdateSlackChannelConfigurationOutput"),
    type = "structure",
    members = {
        ChannelConfiguration = schema.new({
            id = id.from(_N, "UpdateSlackChannelConfigurationOutput", "ChannelConfiguration"),
            type = "structure",
            name = "ChannelConfiguration",
            target_id = id.from(_N, "SlackChannelConfiguration"),
            target = M.SlackChannelConfiguration,
        }),
    },
})

return M
