local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("chatbot.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("chatbot.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "WheatleyOrchestration_20171011"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    if not cfg.auth_scheme_resolver then
        cfg.auth_scheme_resolver = function(operation)
            local options = {}
            for _, scheme_id in ipairs(operation.effective_auth_schemes) do
                if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "chatbot", signing_region = cfg.region } }
                else
                    options[#options + 1] = { scheme_id = scheme_id }
                end
            end
            return options
        end
    end
    defaults.resolve_auth_schemes(cfg)
    defaults.resolve_identity_resolvers(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:associateToConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "AssociateToConfiguration",
        input_schema = schemas.AssociateToConfigurationInput,
        output_schema = schemas.AssociateToConfigurationOutput,
        http_method = "POST",
        http_path = "/associate-to-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createChimeWebhookConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateChimeWebhookConfiguration",
        input_schema = schemas.CreateChimeWebhookConfigurationInput,
        output_schema = schemas.CreateChimeWebhookConfigurationOutput,
        http_method = "POST",
        http_path = "/create-chime-webhook-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCustomAction(input, options)
    return self:invokeOperation(input, {
        name = "CreateCustomAction",
        input_schema = schemas.CreateCustomActionInput,
        output_schema = schemas.CreateCustomActionOutput,
        http_method = "POST",
        http_path = "/create-custom-action",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMicrosoftTeamsChannelConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateMicrosoftTeamsChannelConfiguration",
        input_schema = schemas.CreateMicrosoftTeamsChannelConfigurationInput,
        output_schema = schemas.CreateMicrosoftTeamsChannelConfigurationOutput,
        http_method = "POST",
        http_path = "/create-ms-teams-channel-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSlackChannelConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateSlackChannelConfiguration",
        input_schema = schemas.CreateSlackChannelConfigurationInput,
        output_schema = schemas.CreateSlackChannelConfigurationOutput,
        http_method = "POST",
        http_path = "/create-slack-channel-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteChimeWebhookConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteChimeWebhookConfiguration",
        input_schema = schemas.DeleteChimeWebhookConfigurationInput,
        output_schema = schemas.DeleteChimeWebhookConfigurationOutput,
        http_method = "POST",
        http_path = "/delete-chime-webhook-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCustomAction(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCustomAction",
        input_schema = schemas.DeleteCustomActionInput,
        output_schema = schemas.DeleteCustomActionOutput,
        http_method = "POST",
        http_path = "/delete-custom-action",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMicrosoftTeamsChannelConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMicrosoftTeamsChannelConfiguration",
        input_schema = schemas.DeleteMicrosoftTeamsChannelConfigurationInput,
        output_schema = schemas.DeleteMicrosoftTeamsChannelConfigurationOutput,
        http_method = "POST",
        http_path = "/delete-ms-teams-channel-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMicrosoftTeamsConfiguredTeam(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMicrosoftTeamsConfiguredTeam",
        input_schema = schemas.DeleteMicrosoftTeamsConfiguredTeamInput,
        output_schema = schemas.DeleteMicrosoftTeamsConfiguredTeamOutput,
        http_method = "POST",
        http_path = "/delete-ms-teams-configured-teams",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMicrosoftTeamsUserIdentity(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMicrosoftTeamsUserIdentity",
        input_schema = schemas.DeleteMicrosoftTeamsUserIdentityInput,
        output_schema = schemas.DeleteMicrosoftTeamsUserIdentityOutput,
        http_method = "POST",
        http_path = "/delete-ms-teams-user-identity",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSlackChannelConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSlackChannelConfiguration",
        input_schema = schemas.DeleteSlackChannelConfigurationInput,
        output_schema = schemas.DeleteSlackChannelConfigurationOutput,
        http_method = "POST",
        http_path = "/delete-slack-channel-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSlackUserIdentity(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSlackUserIdentity",
        input_schema = schemas.DeleteSlackUserIdentityInput,
        output_schema = schemas.DeleteSlackUserIdentityOutput,
        http_method = "POST",
        http_path = "/delete-slack-user-identity",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSlackWorkspaceAuthorization(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSlackWorkspaceAuthorization",
        input_schema = schemas.DeleteSlackWorkspaceAuthorizationInput,
        output_schema = schemas.DeleteSlackWorkspaceAuthorizationOutput,
        http_method = "POST",
        http_path = "/delete-slack-workspace-authorization",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeChimeWebhookConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeChimeWebhookConfigurations",
        input_schema = schemas.DescribeChimeWebhookConfigurationsInput,
        output_schema = schemas.DescribeChimeWebhookConfigurationsOutput,
        http_method = "POST",
        http_path = "/describe-chime-webhook-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSlackChannelConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSlackChannelConfigurations",
        input_schema = schemas.DescribeSlackChannelConfigurationsInput,
        output_schema = schemas.DescribeSlackChannelConfigurationsOutput,
        http_method = "POST",
        http_path = "/describe-slack-channel-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSlackUserIdentities(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSlackUserIdentities",
        input_schema = schemas.DescribeSlackUserIdentitiesInput,
        output_schema = schemas.DescribeSlackUserIdentitiesOutput,
        http_method = "POST",
        http_path = "/describe-slack-user-identities",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSlackWorkspaces(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSlackWorkspaces",
        input_schema = schemas.DescribeSlackWorkspacesInput,
        output_schema = schemas.DescribeSlackWorkspacesOutput,
        http_method = "POST",
        http_path = "/describe-slack-workspaces",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateFromConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateFromConfiguration",
        input_schema = schemas.DisassociateFromConfigurationInput,
        output_schema = schemas.DisassociateFromConfigurationOutput,
        http_method = "POST",
        http_path = "/disassociate-from-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccountPreferences(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountPreferences",
        input_schema = schemas.GetAccountPreferencesInput,
        output_schema = schemas.GetAccountPreferencesOutput,
        http_method = "POST",
        http_path = "/get-account-preferences",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCustomAction(input, options)
    return self:invokeOperation(input, {
        name = "GetCustomAction",
        input_schema = schemas.GetCustomActionInput,
        output_schema = schemas.GetCustomActionOutput,
        http_method = "POST",
        http_path = "/get-custom-action",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMicrosoftTeamsChannelConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetMicrosoftTeamsChannelConfiguration",
        input_schema = schemas.GetMicrosoftTeamsChannelConfigurationInput,
        output_schema = schemas.GetMicrosoftTeamsChannelConfigurationOutput,
        http_method = "POST",
        http_path = "/get-ms-teams-channel-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListAssociations",
        input_schema = schemas.ListAssociationsInput,
        output_schema = schemas.ListAssociationsOutput,
        http_method = "POST",
        http_path = "/list-associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCustomActions(input, options)
    return self:invokeOperation(input, {
        name = "ListCustomActions",
        input_schema = schemas.ListCustomActionsInput,
        output_schema = schemas.ListCustomActionsOutput,
        http_method = "POST",
        http_path = "/list-custom-actions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMicrosoftTeamsChannelConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListMicrosoftTeamsChannelConfigurations",
        input_schema = schemas.ListMicrosoftTeamsChannelConfigurationsInput,
        output_schema = schemas.ListMicrosoftTeamsChannelConfigurationsOutput,
        http_method = "POST",
        http_path = "/list-ms-teams-channel-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMicrosoftTeamsConfiguredTeams(input, options)
    return self:invokeOperation(input, {
        name = "ListMicrosoftTeamsConfiguredTeams",
        input_schema = schemas.ListMicrosoftTeamsConfiguredTeamsInput,
        output_schema = schemas.ListMicrosoftTeamsConfiguredTeamsOutput,
        http_method = "POST",
        http_path = "/list-ms-teams-configured-teams",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMicrosoftTeamsUserIdentities(input, options)
    return self:invokeOperation(input, {
        name = "ListMicrosoftTeamsUserIdentities",
        input_schema = schemas.ListMicrosoftTeamsUserIdentitiesInput,
        output_schema = schemas.ListMicrosoftTeamsUserIdentitiesOutput,
        http_method = "POST",
        http_path = "/list-ms-teams-user-identities",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/list-tags-for-resource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
        http_method = "POST",
        http_path = "/tag-resource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
        http_method = "POST",
        http_path = "/untag-resource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAccountPreferences(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccountPreferences",
        input_schema = schemas.UpdateAccountPreferencesInput,
        output_schema = schemas.UpdateAccountPreferencesOutput,
        http_method = "POST",
        http_path = "/update-account-preferences",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateChimeWebhookConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateChimeWebhookConfiguration",
        input_schema = schemas.UpdateChimeWebhookConfigurationInput,
        output_schema = schemas.UpdateChimeWebhookConfigurationOutput,
        http_method = "POST",
        http_path = "/update-chime-webhook-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCustomAction(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCustomAction",
        input_schema = schemas.UpdateCustomActionInput,
        output_schema = schemas.UpdateCustomActionOutput,
        http_method = "POST",
        http_path = "/update-custom-action",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMicrosoftTeamsChannelConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMicrosoftTeamsChannelConfiguration",
        input_schema = schemas.UpdateMicrosoftTeamsChannelConfigurationInput,
        output_schema = schemas.UpdateMicrosoftTeamsChannelConfigurationOutput,
        http_method = "POST",
        http_path = "/update-ms-teams-channel-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSlackChannelConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSlackChannelConfiguration",
        input_schema = schemas.UpdateSlackChannelConfigurationInput,
        output_schema = schemas.UpdateSlackChannelConfigurationOutput,
        http_method = "POST",
        http_path = "/update-slack-channel-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
