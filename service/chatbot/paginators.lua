local paginator = require("paginator")

local M = {}

--- Returns a page iterator for describeChimeWebhookConfigurations.
function M.pages_describe_chime_webhook_configurations(client, input)
    return paginator.pages(client, "describeChimeWebhookConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "WebhookConfigurations",
    })
end

--- Returns an item iterator for describeChimeWebhookConfigurations.
function M.items_describe_chime_webhook_configurations(client, input)
    return paginator.items(client, "describeChimeWebhookConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "WebhookConfigurations",
    })
end

--- Returns a page iterator for describeSlackChannelConfigurations.
function M.pages_describe_slack_channel_configurations(client, input)
    return paginator.pages(client, "describeSlackChannelConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SlackChannelConfigurations",
    })
end

--- Returns an item iterator for describeSlackChannelConfigurations.
function M.items_describe_slack_channel_configurations(client, input)
    return paginator.items(client, "describeSlackChannelConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SlackChannelConfigurations",
    })
end

--- Returns a page iterator for describeSlackUserIdentities.
function M.pages_describe_slack_user_identities(client, input)
    return paginator.pages(client, "describeSlackUserIdentities", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SlackUserIdentities",
    })
end

--- Returns an item iterator for describeSlackUserIdentities.
function M.items_describe_slack_user_identities(client, input)
    return paginator.items(client, "describeSlackUserIdentities", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SlackUserIdentities",
    })
end

--- Returns a page iterator for describeSlackWorkspaces.
function M.pages_describe_slack_workspaces(client, input)
    return paginator.pages(client, "describeSlackWorkspaces", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SlackWorkspaces",
    })
end

--- Returns an item iterator for describeSlackWorkspaces.
function M.items_describe_slack_workspaces(client, input)
    return paginator.items(client, "describeSlackWorkspaces", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SlackWorkspaces",
    })
end

--- Returns a page iterator for listAssociations.
function M.pages_list_associations(client, input)
    return paginator.pages(client, "listAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Associations",
    })
end

--- Returns an item iterator for listAssociations.
function M.items_list_associations(client, input)
    return paginator.items(client, "listAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Associations",
    })
end

--- Returns a page iterator for listCustomActions.
function M.pages_list_custom_actions(client, input)
    return paginator.pages(client, "listCustomActions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CustomActions",
    })
end

--- Returns an item iterator for listCustomActions.
function M.items_list_custom_actions(client, input)
    return paginator.items(client, "listCustomActions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CustomActions",
    })
end

--- Returns a page iterator for listMicrosoftTeamsChannelConfigurations.
function M.pages_list_microsoft_teams_channel_configurations(client, input)
    return paginator.pages(client, "listMicrosoftTeamsChannelConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TeamChannelConfigurations",
    })
end

--- Returns an item iterator for listMicrosoftTeamsChannelConfigurations.
function M.items_list_microsoft_teams_channel_configurations(client, input)
    return paginator.items(client, "listMicrosoftTeamsChannelConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TeamChannelConfigurations",
    })
end

--- Returns a page iterator for listMicrosoftTeamsConfiguredTeams.
function M.pages_list_microsoft_teams_configured_teams(client, input)
    return paginator.pages(client, "listMicrosoftTeamsConfiguredTeams", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ConfiguredTeams",
    })
end

--- Returns an item iterator for listMicrosoftTeamsConfiguredTeams.
function M.items_list_microsoft_teams_configured_teams(client, input)
    return paginator.items(client, "listMicrosoftTeamsConfiguredTeams", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ConfiguredTeams",
    })
end

--- Returns a page iterator for listMicrosoftTeamsUserIdentities.
function M.pages_list_microsoft_teams_user_identities(client, input)
    return paginator.pages(client, "listMicrosoftTeamsUserIdentities", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TeamsUserIdentities",
    })
end

--- Returns an item iterator for listMicrosoftTeamsUserIdentities.
function M.items_list_microsoft_teams_user_identities(client, input)
    return paginator.items(client, "listMicrosoftTeamsUserIdentities", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TeamsUserIdentities",
    })
end

return M
