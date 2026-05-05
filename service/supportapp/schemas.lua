local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.supportapp"

local M = {}

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AccessDeniedException", "message"),
            type = "string",
            name = "message",
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

M.CreateSlackChannelConfigurationInput = schema.new({
    id = id.from(_N, "CreateSlackChannelConfigurationRequest"),
    type = "structure",
    members = {
        teamId = schema.new({
            id = id.from(_N, "CreateSlackChannelConfigurationInput", "teamId"),
            type = "string",
            name = "teamId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        channelId = schema.new({
            id = id.from(_N, "CreateSlackChannelConfigurationInput", "channelId"),
            type = "string",
            name = "channelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        channelName = schema.new({
            id = id.from(_N, "CreateSlackChannelConfigurationInput", "channelName"),
            type = "string",
            name = "channelName",
            target_id = prelude.String.id,
        }),
        notifyOnCreateOrReopenCase = schema.new({
            id = id.from(_N, "CreateSlackChannelConfigurationInput", "notifyOnCreateOrReopenCase"),
            type = "boolean",
            name = "notifyOnCreateOrReopenCase",
            target_id = prelude.Boolean.id,
        }),
        notifyOnAddCorrespondenceToCase = schema.new({
            id = id.from(_N, "CreateSlackChannelConfigurationInput", "notifyOnAddCorrespondenceToCase"),
            type = "boolean",
            name = "notifyOnAddCorrespondenceToCase",
            target_id = prelude.Boolean.id,
        }),
        notifyOnResolveCase = schema.new({
            id = id.from(_N, "CreateSlackChannelConfigurationInput", "notifyOnResolveCase"),
            type = "boolean",
            name = "notifyOnResolveCase",
            target_id = prelude.Boolean.id,
        }),
        notifyOnCaseSeverity = schema.new({
            id = id.from(_N, "CreateSlackChannelConfigurationInput", "notifyOnCaseSeverity"),
            type = "string",
            name = "notifyOnCaseSeverity",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        channelRoleArn = schema.new({
            id = id.from(_N, "CreateSlackChannelConfigurationInput", "channelRoleArn"),
            type = "string",
            name = "channelRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateSlackChannelConfigurationOutput = schema.new({
    id = id.from(_N, "CreateSlackChannelConfigurationResult"),
    type = "structure",
})

M.InternalServerException = schema.new({
    id = id.from(_N, "InternalServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InternalServerException", "message"),
            type = "string",
            name = "message",
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
        message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "message"),
            type = "string",
            name = "message",
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
        message = schema.new({
            id = id.from(_N, "ValidationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteAccountAliasInput = schema.new({
    id = id.from(_N, "DeleteAccountAliasRequest"),
    type = "structure",
})

M.DeleteAccountAliasOutput = schema.new({
    id = id.from(_N, "DeleteAccountAliasResult"),
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

M.DeleteSlackChannelConfigurationInput = schema.new({
    id = id.from(_N, "DeleteSlackChannelConfigurationRequest"),
    type = "structure",
    members = {
        teamId = schema.new({
            id = id.from(_N, "DeleteSlackChannelConfigurationInput", "teamId"),
            type = "string",
            name = "teamId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        channelId = schema.new({
            id = id.from(_N, "DeleteSlackChannelConfigurationInput", "channelId"),
            type = "string",
            name = "channelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteSlackChannelConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteSlackChannelConfigurationResult"),
    type = "structure",
})

M.DeleteSlackWorkspaceConfigurationInput = schema.new({
    id = id.from(_N, "DeleteSlackWorkspaceConfigurationRequest"),
    type = "structure",
    members = {
        teamId = schema.new({
            id = id.from(_N, "DeleteSlackWorkspaceConfigurationInput", "teamId"),
            type = "string",
            name = "teamId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteSlackWorkspaceConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteSlackWorkspaceConfigurationResult"),
    type = "structure",
})

M.GetAccountAliasInput = schema.new({
    id = id.from(_N, "GetAccountAliasRequest"),
    type = "structure",
})

M.GetAccountAliasOutput = schema.new({
    id = id.from(_N, "GetAccountAliasResult"),
    type = "structure",
    members = {
        accountAlias = schema.new({
            id = id.from(_N, "GetAccountAliasOutput", "accountAlias"),
            type = "string",
            name = "accountAlias",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSlackChannelConfigurationsInput = schema.new({
    id = id.from(_N, "ListSlackChannelConfigurationsRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListSlackChannelConfigurationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SlackChannelConfiguration = schema.new({
    id = id.from(_N, "SlackChannelConfiguration"),
    type = "structure",
    members = {
        teamId = schema.new({
            id = id.from(_N, "SlackChannelConfiguration", "teamId"),
            type = "string",
            name = "teamId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        channelId = schema.new({
            id = id.from(_N, "SlackChannelConfiguration", "channelId"),
            type = "string",
            name = "channelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        channelName = schema.new({
            id = id.from(_N, "SlackChannelConfiguration", "channelName"),
            type = "string",
            name = "channelName",
            target_id = prelude.String.id,
        }),
        notifyOnCreateOrReopenCase = schema.new({
            id = id.from(_N, "SlackChannelConfiguration", "notifyOnCreateOrReopenCase"),
            type = "boolean",
            name = "notifyOnCreateOrReopenCase",
            target_id = prelude.Boolean.id,
        }),
        notifyOnAddCorrespondenceToCase = schema.new({
            id = id.from(_N, "SlackChannelConfiguration", "notifyOnAddCorrespondenceToCase"),
            type = "boolean",
            name = "notifyOnAddCorrespondenceToCase",
            target_id = prelude.Boolean.id,
        }),
        notifyOnResolveCase = schema.new({
            id = id.from(_N, "SlackChannelConfiguration", "notifyOnResolveCase"),
            type = "boolean",
            name = "notifyOnResolveCase",
            target_id = prelude.Boolean.id,
        }),
        notifyOnCaseSeverity = schema.new({
            id = id.from(_N, "SlackChannelConfiguration", "notifyOnCaseSeverity"),
            type = "string",
            name = "notifyOnCaseSeverity",
            target_id = prelude.String.id,
        }),
        channelRoleArn = schema.new({
            id = id.from(_N, "SlackChannelConfiguration", "channelRoleArn"),
            type = "string",
            name = "channelRoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSlackChannelConfigurationsOutput = schema.new({
    id = id.from(_N, "ListSlackChannelConfigurationsResult"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListSlackChannelConfigurationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        slackChannelConfigurations = schema.new({
            id = id.from(_N, "ListSlackChannelConfigurationsOutput", "slackChannelConfigurations"),
            type = "list",
            name = "slackChannelConfigurations",
            target_id = prelude.Document.id,
            list_member = M.SlackChannelConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListSlackWorkspaceConfigurationsInput = schema.new({
    id = id.from(_N, "ListSlackWorkspaceConfigurationsRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListSlackWorkspaceConfigurationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SlackWorkspaceConfiguration = schema.new({
    id = id.from(_N, "SlackWorkspaceConfiguration"),
    type = "structure",
    members = {
        teamId = schema.new({
            id = id.from(_N, "SlackWorkspaceConfiguration", "teamId"),
            type = "string",
            name = "teamId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        teamName = schema.new({
            id = id.from(_N, "SlackWorkspaceConfiguration", "teamName"),
            type = "string",
            name = "teamName",
            target_id = prelude.String.id,
        }),
        allowOrganizationMemberAccount = schema.new({
            id = id.from(_N, "SlackWorkspaceConfiguration", "allowOrganizationMemberAccount"),
            type = "boolean",
            name = "allowOrganizationMemberAccount",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ListSlackWorkspaceConfigurationsOutput = schema.new({
    id = id.from(_N, "ListSlackWorkspaceConfigurationsResult"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListSlackWorkspaceConfigurationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        slackWorkspaceConfigurations = schema.new({
            id = id.from(_N, "ListSlackWorkspaceConfigurationsOutput", "slackWorkspaceConfigurations"),
            type = "list",
            name = "slackWorkspaceConfigurations",
            target_id = prelude.Document.id,
            list_member = M.SlackWorkspaceConfiguration,
        }),
    },
})

M.PutAccountAliasInput = schema.new({
    id = id.from(_N, "PutAccountAliasRequest"),
    type = "structure",
    members = {
        accountAlias = schema.new({
            id = id.from(_N, "PutAccountAliasInput", "accountAlias"),
            type = "string",
            name = "accountAlias",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutAccountAliasOutput = schema.new({
    id = id.from(_N, "PutAccountAliasResult"),
    type = "structure",
})

M.RegisterSlackWorkspaceForOrganizationInput = schema.new({
    id = id.from(_N, "RegisterSlackWorkspaceForOrganizationRequest"),
    type = "structure",
    members = {
        teamId = schema.new({
            id = id.from(_N, "RegisterSlackWorkspaceForOrganizationInput", "teamId"),
            type = "string",
            name = "teamId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RegisterSlackWorkspaceForOrganizationOutput = schema.new({
    id = id.from(_N, "RegisterSlackWorkspaceForOrganizationResult"),
    type = "structure",
    members = {
        teamId = schema.new({
            id = id.from(_N, "RegisterSlackWorkspaceForOrganizationOutput", "teamId"),
            type = "string",
            name = "teamId",
            target_id = prelude.String.id,
        }),
        teamName = schema.new({
            id = id.from(_N, "RegisterSlackWorkspaceForOrganizationOutput", "teamName"),
            type = "string",
            name = "teamName",
            target_id = prelude.String.id,
        }),
        accountType = schema.new({
            id = id.from(_N, "RegisterSlackWorkspaceForOrganizationOutput", "accountType"),
            type = "string",
            name = "accountType",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateSlackChannelConfigurationInput = schema.new({
    id = id.from(_N, "UpdateSlackChannelConfigurationRequest"),
    type = "structure",
    members = {
        teamId = schema.new({
            id = id.from(_N, "UpdateSlackChannelConfigurationInput", "teamId"),
            type = "string",
            name = "teamId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        channelId = schema.new({
            id = id.from(_N, "UpdateSlackChannelConfigurationInput", "channelId"),
            type = "string",
            name = "channelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        channelName = schema.new({
            id = id.from(_N, "UpdateSlackChannelConfigurationInput", "channelName"),
            type = "string",
            name = "channelName",
            target_id = prelude.String.id,
        }),
        notifyOnCreateOrReopenCase = schema.new({
            id = id.from(_N, "UpdateSlackChannelConfigurationInput", "notifyOnCreateOrReopenCase"),
            type = "boolean",
            name = "notifyOnCreateOrReopenCase",
            target_id = prelude.Boolean.id,
        }),
        notifyOnAddCorrespondenceToCase = schema.new({
            id = id.from(_N, "UpdateSlackChannelConfigurationInput", "notifyOnAddCorrespondenceToCase"),
            type = "boolean",
            name = "notifyOnAddCorrespondenceToCase",
            target_id = prelude.Boolean.id,
        }),
        notifyOnResolveCase = schema.new({
            id = id.from(_N, "UpdateSlackChannelConfigurationInput", "notifyOnResolveCase"),
            type = "boolean",
            name = "notifyOnResolveCase",
            target_id = prelude.Boolean.id,
        }),
        notifyOnCaseSeverity = schema.new({
            id = id.from(_N, "UpdateSlackChannelConfigurationInput", "notifyOnCaseSeverity"),
            type = "string",
            name = "notifyOnCaseSeverity",
            target_id = prelude.String.id,
        }),
        channelRoleArn = schema.new({
            id = id.from(_N, "UpdateSlackChannelConfigurationInput", "channelRoleArn"),
            type = "string",
            name = "channelRoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateSlackChannelConfigurationOutput = schema.new({
    id = id.from(_N, "UpdateSlackChannelConfigurationResult"),
    type = "structure",
    members = {
        teamId = schema.new({
            id = id.from(_N, "UpdateSlackChannelConfigurationOutput", "teamId"),
            type = "string",
            name = "teamId",
            target_id = prelude.String.id,
        }),
        channelId = schema.new({
            id = id.from(_N, "UpdateSlackChannelConfigurationOutput", "channelId"),
            type = "string",
            name = "channelId",
            target_id = prelude.String.id,
        }),
        channelName = schema.new({
            id = id.from(_N, "UpdateSlackChannelConfigurationOutput", "channelName"),
            type = "string",
            name = "channelName",
            target_id = prelude.String.id,
        }),
        notifyOnCreateOrReopenCase = schema.new({
            id = id.from(_N, "UpdateSlackChannelConfigurationOutput", "notifyOnCreateOrReopenCase"),
            type = "boolean",
            name = "notifyOnCreateOrReopenCase",
            target_id = prelude.Boolean.id,
        }),
        notifyOnAddCorrespondenceToCase = schema.new({
            id = id.from(_N, "UpdateSlackChannelConfigurationOutput", "notifyOnAddCorrespondenceToCase"),
            type = "boolean",
            name = "notifyOnAddCorrespondenceToCase",
            target_id = prelude.Boolean.id,
        }),
        notifyOnResolveCase = schema.new({
            id = id.from(_N, "UpdateSlackChannelConfigurationOutput", "notifyOnResolveCase"),
            type = "boolean",
            name = "notifyOnResolveCase",
            target_id = prelude.Boolean.id,
        }),
        notifyOnCaseSeverity = schema.new({
            id = id.from(_N, "UpdateSlackChannelConfigurationOutput", "notifyOnCaseSeverity"),
            type = "string",
            name = "notifyOnCaseSeverity",
            target_id = prelude.String.id,
        }),
        channelRoleArn = schema.new({
            id = id.from(_N, "UpdateSlackChannelConfigurationOutput", "channelRoleArn"),
            type = "string",
            name = "channelRoleArn",
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
