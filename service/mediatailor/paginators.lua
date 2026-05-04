local paginator = require("paginator")

local M = {}

--- Returns a page iterator for getChannelSchedule.
function M.pages_get_channel_schedule(client, input)
    return paginator.pages(client, "getChannelSchedule", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns an item iterator for getChannelSchedule.
function M.items_get_channel_schedule(client, input)
    return paginator.items(client, "getChannelSchedule", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns a page iterator for listAlerts.
function M.pages_list_alerts(client, input)
    return paginator.pages(client, "listAlerts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns an item iterator for listAlerts.
function M.items_list_alerts(client, input)
    return paginator.items(client, "listAlerts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns a page iterator for listChannels.
function M.pages_list_channels(client, input)
    return paginator.pages(client, "listChannels", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns an item iterator for listChannels.
function M.items_list_channels(client, input)
    return paginator.items(client, "listChannels", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns a page iterator for listLiveSources.
function M.pages_list_live_sources(client, input)
    return paginator.pages(client, "listLiveSources", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns an item iterator for listLiveSources.
function M.items_list_live_sources(client, input)
    return paginator.items(client, "listLiveSources", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns a page iterator for listPlaybackConfigurations.
function M.pages_list_playback_configurations(client, input)
    return paginator.pages(client, "listPlaybackConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns an item iterator for listPlaybackConfigurations.
function M.items_list_playback_configurations(client, input)
    return paginator.items(client, "listPlaybackConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns a page iterator for listPrefetchSchedules.
function M.pages_list_prefetch_schedules(client, input)
    return paginator.pages(client, "listPrefetchSchedules", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns an item iterator for listPrefetchSchedules.
function M.items_list_prefetch_schedules(client, input)
    return paginator.items(client, "listPrefetchSchedules", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns a page iterator for listSourceLocations.
function M.pages_list_source_locations(client, input)
    return paginator.pages(client, "listSourceLocations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns an item iterator for listSourceLocations.
function M.items_list_source_locations(client, input)
    return paginator.items(client, "listSourceLocations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns a page iterator for listVodSources.
function M.pages_list_vod_sources(client, input)
    return paginator.pages(client, "listVodSources", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

--- Returns an item iterator for listVodSources.
function M.items_list_vod_sources(client, input)
    return paginator.items(client, "listVodSources", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Items",
    })
end

return M
