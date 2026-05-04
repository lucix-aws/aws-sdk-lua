local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listAdConfigurations.
function M.pages_list_ad_configurations(client, input)
    return paginator.pages(client, "listAdConfigurations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "adConfigurations",
    })
end

--- Returns an item iterator for listAdConfigurations.
function M.items_list_ad_configurations(client, input)
    return paginator.items(client, "listAdConfigurations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "adConfigurations",
    })
end

--- Returns a page iterator for listChannels.
function M.pages_list_channels(client, input)
    return paginator.pages(client, "listChannels", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listPlaybackKeyPairs.
function M.pages_list_playback_key_pairs(client, input)
    return paginator.pages(client, "listPlaybackKeyPairs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listPlaybackRestrictionPolicies.
function M.pages_list_playback_restriction_policies(client, input)
    return paginator.pages(client, "listPlaybackRestrictionPolicies", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listRecordingConfigurations.
function M.pages_list_recording_configurations(client, input)
    return paginator.pages(client, "listRecordingConfigurations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listStreamKeys.
function M.pages_list_stream_keys(client, input)
    return paginator.pages(client, "listStreamKeys", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listStreamSessions.
function M.pages_list_stream_sessions(client, input)
    return paginator.pages(client, "listStreamSessions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listStreams.
function M.pages_list_streams(client, input)
    return paginator.pages(client, "listStreams", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

return M
