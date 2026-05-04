local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("chatbot.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("chatbot.types")

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
        input_schema = types.AssociateToConfigurationInput,
        output_schema = types.AssociateToConfigurationOutput,
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
        input_schema = types.CreateChimeWebhookConfigurationInput,
        output_schema = types.CreateChimeWebhookConfigurationOutput,
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
        input_schema = types.CreateCustomActionInput,
        output_schema = types.CreateCustomActionOutput,
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
        input_schema = types.CreateMicrosoftTeamsChannelConfigurationInput,
        output_schema = types.CreateMicrosoftTeamsChannelConfigurationOutput,
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
        input_schema = types.CreateSlackChannelConfigurationInput,
        output_schema = types.CreateSlackChannelConfigurationOutput,
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
        input_schema = types.DeleteChimeWebhookConfigurationInput,
        output_schema = types.DeleteChimeWebhookConfigurationOutput,
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
        input_schema = types.DeleteCustomActionInput,
        output_schema = types.DeleteCustomActionOutput,
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
        input_schema = types.DeleteMicrosoftTeamsChannelConfigurationInput,
        output_schema = types.DeleteMicrosoftTeamsChannelConfigurationOutput,
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
        input_schema = types.DeleteMicrosoftTeamsConfiguredTeamInput,
        output_schema = types.DeleteMicrosoftTeamsConfiguredTeamOutput,
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
        input_schema = types.DeleteMicrosoftTeamsUserIdentityInput,
        output_schema = types.DeleteMicrosoftTeamsUserIdentityOutput,
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
        input_schema = types.DeleteSlackChannelConfigurationInput,
        output_schema = types.DeleteSlackChannelConfigurationOutput,
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
        input_schema = types.DeleteSlackUserIdentityInput,
        output_schema = types.DeleteSlackUserIdentityOutput,
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
        input_schema = types.DeleteSlackWorkspaceAuthorizationInput,
        output_schema = types.DeleteSlackWorkspaceAuthorizationOutput,
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
        input_schema = types.DescribeChimeWebhookConfigurationsInput,
        output_schema = types.DescribeChimeWebhookConfigurationsOutput,
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
        input_schema = types.DescribeSlackChannelConfigurationsInput,
        output_schema = types.DescribeSlackChannelConfigurationsOutput,
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
        input_schema = types.DescribeSlackUserIdentitiesInput,
        output_schema = types.DescribeSlackUserIdentitiesOutput,
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
        input_schema = types.DescribeSlackWorkspacesInput,
        output_schema = types.DescribeSlackWorkspacesOutput,
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
        input_schema = types.DisassociateFromConfigurationInput,
        output_schema = types.DisassociateFromConfigurationOutput,
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
        input_schema = types.GetAccountPreferencesInput,
        output_schema = types.GetAccountPreferencesOutput,
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
        input_schema = types.GetCustomActionInput,
        output_schema = types.GetCustomActionOutput,
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
        input_schema = types.GetMicrosoftTeamsChannelConfigurationInput,
        output_schema = types.GetMicrosoftTeamsChannelConfigurationOutput,
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
        input_schema = types.ListAssociationsInput,
        output_schema = types.ListAssociationsOutput,
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
        input_schema = types.ListCustomActionsInput,
        output_schema = types.ListCustomActionsOutput,
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
        input_schema = types.ListMicrosoftTeamsChannelConfigurationsInput,
        output_schema = types.ListMicrosoftTeamsChannelConfigurationsOutput,
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
        input_schema = types.ListMicrosoftTeamsConfiguredTeamsInput,
        output_schema = types.ListMicrosoftTeamsConfiguredTeamsOutput,
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
        input_schema = types.ListMicrosoftTeamsUserIdentitiesInput,
        output_schema = types.ListMicrosoftTeamsUserIdentitiesOutput,
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
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
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
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
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
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
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
        input_schema = types.UpdateAccountPreferencesInput,
        output_schema = types.UpdateAccountPreferencesOutput,
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
        input_schema = types.UpdateChimeWebhookConfigurationInput,
        output_schema = types.UpdateChimeWebhookConfigurationOutput,
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
        input_schema = types.UpdateCustomActionInput,
        output_schema = types.UpdateCustomActionOutput,
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
        input_schema = types.UpdateMicrosoftTeamsChannelConfigurationInput,
        output_schema = types.UpdateMicrosoftTeamsChannelConfigurationOutput,
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
        input_schema = types.UpdateSlackChannelConfigurationInput,
        output_schema = types.UpdateSlackChannelConfigurationOutput,
        http_method = "POST",
        http_path = "/update-slack-channel-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
