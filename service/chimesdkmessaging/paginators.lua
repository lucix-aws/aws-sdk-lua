local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listChannelBans.
function M.pages_list_channel_bans(client, input)
    return paginator.pages(client, "listChannelBans", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listChannelFlows.
function M.pages_list_channel_flows(client, input)
    return paginator.pages(client, "listChannelFlows", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listChannelMemberships.
function M.pages_list_channel_memberships(client, input)
    return paginator.pages(client, "listChannelMemberships", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listChannelMembershipsForAppInstanceUser.
function M.pages_list_channel_memberships_for_app_instance_user(client, input)
    return paginator.pages(client, "listChannelMembershipsForAppInstanceUser", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listChannelMessages.
function M.pages_list_channel_messages(client, input)
    return paginator.pages(client, "listChannelMessages", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listChannelModerators.
function M.pages_list_channel_moderators(client, input)
    return paginator.pages(client, "listChannelModerators", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listChannels.
function M.pages_list_channels(client, input)
    return paginator.pages(client, "listChannels", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listChannelsAssociatedWithChannelFlow.
function M.pages_list_channels_associated_with_channel_flow(client, input)
    return paginator.pages(client, "listChannelsAssociatedWithChannelFlow", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listChannelsModeratedByAppInstanceUser.
function M.pages_list_channels_moderated_by_app_instance_user(client, input)
    return paginator.pages(client, "listChannelsModeratedByAppInstanceUser", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listSubChannels.
function M.pages_list_sub_channels(client, input)
    return paginator.pages(client, "listSubChannels", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for searchChannels.
function M.pages_search_channels(client, input)
    return paginator.pages(client, "searchChannels", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
